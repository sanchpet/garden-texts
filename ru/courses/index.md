---
aliases:
  - Курсы
description: Курсы, которые я прохожу, прошёл и собираюсь пройти.
created: 2026-11-18
---

```base
filters:
  and:
    - type == "course"
    - file.inFolder("ru/courses")
properties:
  file.name:
    displayName: Курс
  author:
    displayName: Автор
  provider:
    displayName: Где
  year:
    displayName: Год
  status:
    displayName: Статус
  category:
    displayName: Раздел
views:
  - type: table
    name: Список
    order:
      - file.name
      - author
      - provider
      - year
      - category
      - status
    sort:
      - property: status
        direction: ASC
      - property: file.name
        direction: ASC
```
