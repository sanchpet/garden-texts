---
type: book
id: R-048
short: Outlive
aliases:
  - "Outlive"
author: Питер Аттиа, Билл Гиффорд
year: 2023
category: тело и здоровье
status: later
plan: ступень
queue:
cover: "[[attia-outlive.jpg]]"
description: "Долголетие как инженерная задача — четыре главные болезни старения и что делать с ними за десятилетия до диагноза."
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
