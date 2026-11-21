---
type: book
id: R-031
short: Новая поведенческая экономика
aliases:
  - Misbehaving
author: Ричард Талер
year: 2015
category: экономика
status: done
plan: досуг
queue:
want:
demand: false
chunks: false
cover: "[[thaler-misbehaving.jpg]]"
description: Как складывалась поведенческая экономика — история спора с моделью рационального агента, рассказанная одним из её основателей.
created: 2026-11-13
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
FROM [[]] OR [[R-031-misbehaving]]
WHERE type = "learn-note"
GROUP BY link(file.link, regexreplace(file.aliases[0], " \([^()]*\)$", "")) AS "Заметка"
SORT rows.file.ctime ASC
```

## Тексты по источнику

```dataviewjs
await dv.view("20-library/pipeline/views/text-sources", { mode: "texts" });
```
