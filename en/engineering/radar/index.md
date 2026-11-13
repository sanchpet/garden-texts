---
aliases:
  - Radar
description: The tools I work with, and how far my own experience with each of them goes.
created: 2026-11-13
---

```base
filters:
  and:
    - type == "tool"
    - or:
        - file.inFolder("en/engineering/radar")
        - file.inFolder("ru/engineering/radar")
views:
  - type: radar
    name: Radar
    sectors:
      techniques: Techniques
      platforms: Platforms
      languages: Languages & Frameworks
      tools: Tools
    fallbackNote: This entry exists only in Russian so far. I think and write in Russian first and translate when I can.
```
