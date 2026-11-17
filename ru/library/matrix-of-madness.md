---
type: book
id: R-041
short: Матрица безумия
aliases:
  - "Матрица безумия"
author: Карл Юнг, Мишель Фуко
year: 2013
category: философия
status: later
plan: досуг
queue:
want: 1
demand: false
chunks: true
cover: "[[jung-foucault-matrix-of-madness.jpg]]"
description: "Сборник работ Юнга и Фуко о безумии — причины и символика душевной болезни у первого, история сумасшествия в западном обществе у второго."
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
