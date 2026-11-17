---
type: book
id: R-050
short: "Как изобрести всё"
aliases:
  - "Как изобрести всё. Создай цивилизацию с нуля"
author: Райан Норт
year: 2018
category: наука и техника
status: later
plan: досуг
queue:
want: 2
demand: false
chunks: true
cover: "[[north-how-to-invent-everything.jpg]]"
description: "Руководство для путешественника, застрявшего в прошлом, — как заново получить земледелие, металл, письмо и всё остальное."
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
