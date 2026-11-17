---
type: book
id: R-054
short: Безлимитный поединок
aliases:
  - "Безлимитный поединок"
author: Гарри Каспаров
year: 1989
category: биографии
status: in-progress
plan: досуг
queue:
want:
demand: false
chunks: false
cover:
description: "Автобиография тринадцатого чемпиона мира по шахматам — путь к титулу и матчи с Карповым, рассказанные им самим."
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
