---
aliases:
  - Courses
description: Courses I am taking, have taken and mean to take.
created: 2026-11-18
---

```base
filters:
  and:
    - type == "course"
    - or:
        - file.inFolder("en/courses")
        - file.inFolder("ru/courses")
properties:
  file.name:
    displayName: Course
  author:
    displayName: Author
  provider:
    displayName: Where
  year:
    displayName: Year
  status:
    displayName: Status
  category:
    displayName: Subject
views:
  - type: table
    name: List
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
