---
type: book
id: R-045
short: Goodbye Globalization
aliases:
  - "Goodbye Globalization"
author: Элизабет Бро
year: 2024
category: экономика
status: later
plan: досуг
queue:
want:
demand: false
chunks: false
cover: "[[braw-goodbye-globalization.jpg]]"
description: "Как мир, сшитый торговлей после холодной войны, снова делится на блоки — история подъёма и отката глобализации."
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
