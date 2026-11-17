---
type: book
id: R-034
short: Как устроен мир на самом деле
aliases:
  - How the World Really Works
author: Вацлав Смил
year: 2022
category: наука и техника
status: later
plan: досуг
queue:
want:
demand: false
chunks: false
cover: "[[smil-how-the-world-really-works.jpg]]"
description: Семь материальных оснований современной цивилизации — энергия, пища, материалы, глобализация, риски, среда, будущее — в числах, а не в мнениях.
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
