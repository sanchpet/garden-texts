---
type: book
id: R-044
short: Why Nations Fail
aliases:
  - "Why Nations Fail"
author: Дарон Аджемоглу, Джеймс Робинсон
year: 2012
category: экономика
status: later
plan: досуг
queue:
want: 2
demand: false
chunks: false
cover: "[[acemoglu-why-nations-fail.jpg]]"
description: "Почему одни страны богаты, а другие бедны — объяснение через политические и экономические институты, а не географию и культуру."
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
