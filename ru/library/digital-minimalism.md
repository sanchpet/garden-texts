---
type: book
id: R-005
short: Цифровой минимализм
aliases:
  - "Digital Minimalism"
author: Кэл Ньюпорт
year: 2019
category: работа и внимание
status: done
plan: досуг
queue:
want:
demand: false
chunks: true
cover: "[[newport-digital-minimalism.jpg]]"
description: "Философия пользования технологиями: оставить немногое, что служит ценностям, и спокойно обойтись без остального."
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
FROM [[]] OR [[R-005-digital-minimalism]]
WHERE type = "learn-note"
GROUP BY link(file.link, regexreplace(file.aliases[0], " \([^()]*\)$", "")) AS "Заметка"
SORT rows.file.ctime ASC
```

## Тексты по источнику

```dataviewjs
await dv.view("20-library/pipeline/views/text-sources", { mode: "texts" });
```
