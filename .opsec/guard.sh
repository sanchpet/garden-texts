#!/usr/bin/env bash
# opsec guard — refuse a commit carrying employer-identifying material.
#
# This repository is exchanged between a personal and a corporate machine, so
# the commit is the boundary. The mechanism lives here; the pattern list does
# not — a guard that ships the names it forbids publishes what it protects.
# For the same reason a refusal names a rule by its denylist line, never by
# its text.
#
# One regex engine does both jobs. A rule used to be validated by grep and
# matched by git grep, whose ERE dialects differ: `\b` passed validation and
# then never matched anything, so the denylist looked complete and had holes.
# Staged content is therefore read out of the index and searched with the very
# grep that validated the rule.
set -euo pipefail

DENYLIST="${OPSEC_DENYLIST:-$HOME/.config/opsec/denylist.txt}"

halt() {
	printf 'opsec guard: BLOCKED — %s, so nothing was checked.\n' "$1" >&2
	exit 1
}

unarmed() {
	cat >&2 <<EOF
opsec guard: BLOCKED — the denylist is unusable, so nothing was checked.

  reason:    $1
  denylist:  $DENYLIST
             (override the path with OPSEC_DENYLIST)

A commit is refused whenever the guard cannot prove it looked; a silent pass
would mean the guard is off and no one notices.

Create the file with one POSIX ERE per line — employer and domain names,
internal systems and services, ticket-tracker key prefixes, node counts,
regions, sums. Blank lines and lines starting with # are ignored, surrounding
whitespace is trimmed, matching is case-insensitive.

Keep that file out of every repository.
EOF
	exit 1
}

# Case folding beyond ASCII is a property of the locale, and the names in the
# denylist are Cyrillic: under LANG=C a rule would quietly match only the
# casing it was written in. Pick a UTF-8 locale here rather than inherit one.
avail=$(locale -a 2>/dev/null || true)
for loc in C.UTF-8 en_US.UTF-8 $(printf '%s\n' "$avail" | grep -i -e '\.utf-\{0,1\}8$' || true); do
	if printf '%s\n' "$avail" | grep -qx -F -e "$loc"; then
		LC_ALL="$loc"
		break
	fi
done
[ -n "${LC_ALL:-}" ] || halt "no UTF-8 locale is installed, so case-insensitive matching would miss non-ASCII names"
export LC_ALL

[ -e "$DENYLIST" ] || unarmed "no such file"
[ -f "$DENYLIST" ] || unarmed "not a regular file"
[ -r "$DENYLIST" ] || unarmed "not readable"

rules=()
rulelines=()
lineno=0
while IFS= read -r raw || [ -n "$raw" ]; do
	lineno=$((lineno + 1))
	rule=${raw%$'\r'}
	rule=${rule#"${rule%%[![:space:]]*}"}
	rule=${rule%"${rule##*[![:space:]]}"}
	[ -n "$rule" ] || continue
	case "$rule" in \#*) continue ;; esac
	st=0
	printf '' | grep -I -n -H -i -E -e "$rule" >/dev/null 2>&1 || st=$?
	[ "$st" -le 1 ] || unarmed "line $lineno is not a valid POSIX ERE"
	rules+=("$rule")
	rulelines+=("$lineno")
done <"$DENYLIST"

[ "${#rules[@]}" -gt 0 ] || unarmed "no rules — the file holds only comments or blank lines"

files=()
if [ "$#" -gt 0 ]; then
	files=("$@")
else
	while IFS= read -r -d '' f; do files+=("$f"); done \
		< <(git diff --cached --name-only --diff-filter=ACMR -z)
fi
[ "${#files[@]}" -gt 0 ] || exit 0

tmp=$(mktemp -d "${TMPDIR:-/tmp}/opsec-guard.XXXXXX") || halt "no temporary directory"
trap 'rm -rf "$tmp"' EXIT

# The index is what the commit will carry, so that is what is read. A path not
# yet staged is read from the worktree rather than skipped in silence. Each
# copy is named by its position so the finding can be traced back to the path
# without the path ever reaching grep's argument list.
names=()
blobs=()
n=0
for f in "${files[@]}"; do
	dest=$(printf '%s/%06d' "$tmp" "$n")
	if git ls-files --error-unmatch -- "$f" >/dev/null 2>&1; then
		git cat-file blob ":$f" >"$dest" 2>/dev/null \
			|| halt "the staged content of $f cannot be read"
	elif [ -f "$f" ]; then
		cat -- "$f" >"$dest" 2>/dev/null || halt "$f cannot be read"
	else
		rm -f "$dest"
		continue
	fi
	names+=("$f")
	blobs+=("$dest")
	n=$((n + 1))
done

findings=()
report() { findings+=("  $1"); }

for i in "${!rules[@]}"; do
	rule=${rules[$i]}
	at=${rulelines[$i]}

	while IFS= read -r name; do
		[ -n "$name" ] || continue
		report "$(printf '%-52s file name   rule: denylist line %s' "$name" "$at")"
	done < <(printf '%s\n' "${files[@]}" | grep -i -E -e "$rule" || true)

	[ "${#blobs[@]}" -gt 0 ] || continue
	while IFS= read -r hit; do
		[ -n "$hit" ] || continue
		hit=${hit#"$tmp"/}
		idx=$((10#${hit%%:*}))
		hit=${hit#*:}
		report "$(printf '%-52s line %-7s rule: denylist line %s' "${names[$idx]}" "${hit%%:*}" "$at")"
	done < <(grep -I -n -H -i -E -e "$rule" -- "${blobs[@]}" || true)
done

[ "${#findings[@]}" -gt 0 ] || exit 0

{
	echo "opsec guard: BLOCKED — employer-identifying material in this commit."
	echo
	printf '%s\n' "${findings[@]}"
	echo
	echo "Neither the rule nor the matched text is printed: a refusal must not become a"
	echo "copy of what it guards. A rule is named by its line, and read locally with"
	echo "  sed -n '<line>p' \"\$DENYLIST\""
	echo
	echo "Fix it by removing the material, or — if a rule is wrong — by narrowing that rule"
	echo "in $DENYLIST."
	echo "Do not pass --no-verify. A false refusal teaches the bypass, and the bypass is then"
	echo "used where the refusal was right."
} >&2
exit 1
