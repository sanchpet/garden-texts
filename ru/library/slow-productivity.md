---
type: book
id: R-037
short: Slow Productivity
aliases:
  - "Slow Productivity"
author: Кэл Ньюпорт
year: 2024
category: работа и внимание
status: later
plan: практика
queue:
want:
demand: false
chunks: true
cover: "[[newport-slow-productivity.jpg]]"
description: "Продуктивность умственного труда без перегрузки: делать меньше дел, работать в естественном темпе, держаться качества."
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
