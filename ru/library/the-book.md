---
type: book
id: R-053
short: "The Book"
aliases:
  - "The Book. Как создать цивилизацию заново"
author: Hungry Minds
year: 2022
category: наука и техника
status: later
plan: досуг
queue:
want: 1
demand: false
chunks: true
cover: "[[hungry-minds-the-book.jpg]]"
description: "Иллюстрированный свод знаний, нужных, чтобы восстановить цивилизацию с нуля, — от огня и земледелия до электричества."
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
