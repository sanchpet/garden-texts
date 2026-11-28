---
aliases:
  - Library
description: Books I am reading, have read and mean to read.
created: 2026-11-13
---

```base
filters:
  and:
    - type == "book"
    - or:
        - file.inFolder("en/library")
        - file.inFolder("ru/library")
properties:
  author:
    displayName: Author
  year:
    displayName: Year
  status:
    displayName: Status
  category:
    displayName: Section
  plan:
    displayName: Why
  queue:
    displayName: Queue
views:
  - type: bookcase
    name: Bookcase
    groupBy:
      property: category
      direction: ASC
    sort:
      - property: author
        direction: ASC
    fallbackNote: This card exists only in Russian so far. I think and write in Russian first and translate when I can.
  - type: shelves
    name: Shelves
    groupBy:
      property: category
      direction: ASC
    sort:
      - property: author
        direction: ASC
  - type: table
    name: List
    filters:
      or:
        - file.inFolder("en/library")
        - "!twinned"
    order:
      - file.name
      - author
      - year
      - category
      - status
      - plan
      - queue
    sort:
      - property: status
        direction: ASC
      - property: queue
        direction: ASC
```
