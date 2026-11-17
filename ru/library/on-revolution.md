---
type: book
id: R-043
short: On Revolution
aliases:
  - "On Revolution"
author: Ханна Арендт
year: 1963
category: философия
status: later
plan: досуг
queue:
cover: "[[arendt-on-revolution.jpg]]"
description: "Сравнение американской и французской революций — почему одна учредила свободу, а другая утонула в социальном вопросе."
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
