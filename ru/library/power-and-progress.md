---
type: book
id: R-047
short: Power and Progress
aliases:
  - "Power and Progress"
author: Дарон Аджемоглу, Саймон Джонсон
year: 2023
category: экономика
status: later
plan: досуг
queue:
want: 2
demand: false
chunks: false
cover: "[[acemoglu-power-and-progress.jpg]]"
description: "Тысяча лет технологий и благосостояния — кому достаются плоды прогресса и от чего это зависит."
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
