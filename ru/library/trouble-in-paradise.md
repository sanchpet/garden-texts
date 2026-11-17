---
type: book
id: R-042
short: Trouble in Paradise
aliases:
  - "Trouble in Paradise"
author: Славой Жижек
year: 2014
category: философия
status: later
plan: досуг
queue:
want:
demand: false
chunks: false
cover: "[[zizek-trouble-in-paradise.jpg]]"
description: "Разбор глобального капитализма после кризиса 2008 года — от «конца истории» к вопросу о том, чем может быть его конец."
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
