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
want: 2
demand: false
chunks: true
cover: "[[munroe-what-if.jpg]]"
description: "Серьёзные научные ответы на абсурдные гипотетические вопросы — от автора xkcd."
created: 2026-11-17
---

```dataviewjs
await dv.view("20-library/pipeline/views/card-status");
```

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
