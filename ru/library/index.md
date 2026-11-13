---
aliases:
  - Библиотека
description: Книги, которые я читаю, прочёл и собираюсь прочесть.
created: 2026-11-13
---

```base
filters:
  and:
    - type == "book"
    - file.inFolder("ru/library")
properties:
  author:
    displayName: Автор
  year:
    displayName: Год
  status:
    displayName: Статус
  category:
    displayName: Раздел
views:
  - type: bookcase
    name: Шкаф
    groupBy:
      property: category
      direction: ASC
    sort:
      - property: author
        direction: ASC
  - type: shelves
    name: Полки
    groupBy:
      property: category
      direction: ASC
    sort:
      - property: author
        direction: ASC
  - type: table
    name: Список
    order:
      - file.name
      - author
      - year
      - category
      - status
    sort:
      - property: status
        direction: ASC
```
