---
type: book
id: R-036
short: So Good
aliases:
  - "So Good They Can't Ignore You"
author: Кэл Ньюпорт
year: 2012
category: работа и внимание
status: later
plan: досуг
queue:
want: 3
demand: false
chunks: true
cover: "[[newport-so-good-they-cant-ignore-you.jpg]]"
description: "Довод против совета «следуй за страстью»: любимая работа вырастает из редкого мастерства, а не предшествует ему."
created: 2026-11-17
---

## Краткие итоги чтения

## Учебные заметки

```meta-bind-button
label: Создать заметку
style: default
actions:
  - type: templaterCreateNote
    templateFile: 80-kernel/templates/learn-note-tmpl.md
    folderPath: 20-library/resources/9-notes
    openNote: true
```

```dataview
TABLE rows.file.cday AS "Дата"
FROM [[]]
WHERE type = "learn-note"
GROUP BY link(file.link, regexreplace(file.aliases[0], " \([^()]*\)$", "")) AS "Заметка"
SORT rows.file.ctime ASC
```

## Тексты по источнику

```dataviewjs
await dv.view("20-library/pipeline/views/text-sources", { mode: "texts" });
```
