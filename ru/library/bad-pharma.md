---
type: book
id: R-046
short: Bad Pharma
aliases:
  - "Bad Pharma"
author: Бен Голдакр
year: 2012
category: тело и здоровье
status: later
plan: досуг
queue:
want: 1
demand: false
chunks: false
cover: "[[goldacre-bad-pharma.jpg]]"
description: "Как фармацевтические компании искажают данные испытаний и чем это оборачивается для врачей и пациентов."
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
