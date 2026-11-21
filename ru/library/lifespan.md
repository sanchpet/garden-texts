---
type: book
id: R-049
short: "Lifespan"
aliases:
  - "Lifespan"
author: Дэвид Синклер, Мэтью Лаплант
year: 2019
category: тело и здоровье
status: later
plan: ступень
queue:
want: 2
demand: false
chunks: false
cover: "[[sinclair-lifespan.jpg]]"
description: "Старение как болезнь, у которой есть общая причина, — информационная теория старения и то, что из неё следует для продления жизни."
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
