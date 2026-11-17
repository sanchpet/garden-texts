---
type: book
id: R-035
short: Deep Work
aliases:
  - "Deep Work"
author: Кэл Ньюпорт
year: 2016
category: работа и внимание
status: in-progress
plan: практика
queue:
want: 3
demand: true
chunks: true
cover: "[[newport-deep-work.jpg]]"
description: Способность долго работать без отвлечений как редкий и ценный навык — и правила, по которым её выстраивают.
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
