---
type: book
id: R-039
short: Protocols
aliases:
  - Protocols
author: Эндрю Хуберман
year: 2025
category: тело и здоровье
status: later
plan: практика
queue:
want: 3
demand: true
chunks: true
cover: "[[huberman-protocols.jpg]]"
description: Руководство нейробиолога по телу — протоколы сна, внимания, движения и восстановления, выведенные из лабораторных данных.
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
