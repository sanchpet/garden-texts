---
aliases:
  - Радар
description: Инструменты, с которыми я работаю, и как далеко зашёл мой опыт с каждым.
created: 2026-11-13
---

```base
filters:
  and:
    - type == "tool"
    - file.inFolder("ru/engineering/radar")
properties:
  ring:
    displayName: Кольцо
  area:
    displayName: Область
  since:
    displayName: С
views:
  - type: radar
    name: Радар
    sectors:
      cluster: Кластер
  - type: table
    name: Список
    order:
      - file.name
      - ring
      - area
      - since
    sort:
      - property: ring
        direction: ASC
```
