---
type: book
id: R-052
short: "What If?"
aliases:
  - "What If?"
author: Рэндалл Манро
year: 2014
category: наука и техника
status: later
plan: досуг
queue:
want:
demand: false
chunks: true
cover: "[[munroe-what-if.jpg]]"
description: "Серьёзные научные ответы на абсурдные гипотетические вопросы — от автора xkcd."
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
