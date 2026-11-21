---
type: course
id: R-033
short: Distributed Systems
aliases:
  - Распределённые системы
author: Мартин Клеппман
provider: Cambridge
year: 2025
category: распределённые системы
status: in-progress
url: https://www.cl.cam.ac.uk/teaching/2526/ConcDisSys/materials.html
description: Лекции Мартина Клеппмана о распределённых системах — от двух генералов и логического времени до консенсуса и CRDT.
created: 2026-11-18
---

## О курсе

Martin Kleppmann, *Distributed Systems* — лекции 9–16 курса Concurrent and Distributed Systems, Cambridge Computer Science Tripos Part IB, редакция 2025/26. Заметки на 93 страницы: слайд и текст под ним.

[Заметки, PDF](https://www.cl.cam.ac.uk/teaching/2526/ConcDisSys/dist-sys-notes.pdf) · [слайды](https://www.cl.cam.ac.uk/teaching/2526/ConcDisSys/dist-sys-slides.pdf) · [материалы курса](https://www.cl.cam.ac.uk/teaching/2526/ConcDisSys/materials.html) · [демо-код](https://github.com/ept/ConcDistSys-demos)

Бесплатный, теоретический; вход — инженерный опыт и операционные системы, математики почти нет. Записи лекций 2025/26 лежат в Moodle университета; публичен только [плейлист 2021/22](https://www.youtube.com/playlist?list=PLeKd45zvjcDFUEv_ohr_HdUFe97RItdiB), а с тех пор главы перекроены — сверять видео с текстом по названию раздела, не по номеру.

## Программа

| Гл. | Тема | С. | Вопрос до чтения |
|---|---|---|---|
| 1 | Introduction: зачем распределять, сеть, доступность и отказоустойчивость, RPC | 2–14 | — |
| 2 | Models of distributed systems: два генерала, византийские генералы, модели узлов и сети, детекторы отказов | 15–26 | можно ли гарантированно договориться по ненадёжному каналу? |
| 3 | Time, clocks: физические часы, синхронизация и монотонные часы, happens-before | 27–37 | что значит «раньше», если общих часов нет? |
| 3–4 | Logical time и broadcast: часы Лэмпорта и векторные, порядки доставки, алгоритмы broadcast | 38–49 | как всем узлам увидеть события в одном порядке? |
| 5 | Replication: удалённое состояние, кворумы, репликация через broadcast | 50–59 | — |
| 6 | Replica consistency: 2PC, линеаризуемость | 60–68 | — |
| 7 | Consensus and total order broadcast: постановка, Raft | 69–79 | — |
| 8 | Eventual consistency: CRDT, совместное редактирование, итоги | 80–93 | — |

## Спутники

- Fischer, Lynch, Paterson, *Impossibility of Distributed Consensus with One Faulty Process*, JACM 32(2), 1985 — [PDF](https://groups.csail.mit.edu/tds/papers/Lynch/jacm85.pdf). В главе о консенсусе результат только сформулирован; доказательство — здесь.
- Lamport, *Time, Clocks, and the Ordering of Events in a Distributed System*, CACM, 1978 — [PDF у автора](https://lamport.azurewebsites.net/pubs/time-clocks.pdf). Первоисточник к главам о времени и порядке.
- MIT 6.5840 — статьи курса (Raft, ZooKeeper, Spanner) как следующий шаг.

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
FROM [[]] OR [[R-033-kleppmann-distributed-systems]]
WHERE type = "learn-note"
GROUP BY link(file.link, regexreplace(file.aliases[0], " \([^()]*\)$", "")) AS "Заметка"
SORT rows.file.ctime ASC
```

```dataviewjs
await dv.view("20-library/pipeline/views/drafts-panel", { mode: "source" });
```

## Тексты по источнику

```dataviewjs
await dv.view("20-library/pipeline/views/text-sources", { mode: "texts" });
```
