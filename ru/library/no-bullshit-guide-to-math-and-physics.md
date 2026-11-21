---
type: book
id: R-051
short: "No Bullshit Guide"
aliases:
  - "No Bullshit Guide to Math and Physics"
author: Иван Савов
year: 2014
category: математика и физика
status: later
plan: ступень
queue:
want: 1
demand: false
chunks: true
cover: "[[savov-no-bullshit-math-physics.jpg]]"
description: "Школьная математика, механика и анализ в одном сжатом курсе — от уравнений до интегралов, с задачами."
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

## Тексты по источнику

```dataviewjs
await dv.view("20-library/pipeline/views/text-sources", { mode: "texts" });
```
