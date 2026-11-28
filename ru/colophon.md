---
title: Колофон
aliases:
  - Колофон
description: В книгоиздании колофон содержит выпускные данные и эмблему издательства. Также это модное и ёмкое слово вместо «из чего сделан этот сайт».
---
В текущем виде сайт задуман, как рабочая тетрадь инженера с печатным текстом (компромисс читабельности) и ручными пометками на полях. В целом же я стараюсь разместить здесь все элементы, как в большом гараже, придавая каждому разделу физичность: шкаф с [[50-garden/ru/library/index|книгами]], [технический радар](/ru/engineering/radar/), [календарь стартов](/ru/sport/races).

# Технические детали

Сайт собран на форке [Quartz](https://quartz.jzhao.xyz) v5 с кучей плагинов. Да, [код](https://github.com/sanchpet/garden) пишу с помощью ИИ, т. к. веб-программирование и фронтенд никогда не были моей сильной стороной. Формулы: [KaTeX](https://github.com/KaTeX/KaTeX), диаграммы: [Mermaid](https://github.com/mermaid-js/mermaid), другие схемы я рисую в [Excalidraw](https://github.com/excalidraw/excalidraw) и встраиваю как SVG, либо рисую стилусом на iPad в [Goodnotes](https://www.goodnotes.com/). За демкой вёрстки можно сходить [[specimen|сюда]].
У сайта есть лента (RSS) на [Atom](https://sanch.pet/ru/feed.xml). Аналитику я веду на self-hosted [GoatCounter](https://github.com/arp242/goatcounter) без cookies. 
Сайт двуязычный, поэтому почти все страницы имеют дубли (это видно по URL - `/ru/` и `/en/`). Это затратно в поддержке (но с LLM проще), поэтому в этой схеме могут встречаться пробелы. Я пока ещё не отвык писать на русском (на счастье моих друзей и семьи), но в конце концов сайт наверняка придёт к инглишу.
Я пишу тексты в [Obsidian](https://obsidian.md/) и вообще стараюсь работать только через него, обвешивая тонной плагинов. Для публикации этого сайта тоже собран локальный плагин.

# Лицензия

[Тексты](https://github.com/sanchpet/garden-texts) лицензируются под [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.ru)[^1] (кроме чужих картинок и цитат, примеры кода — [0BSD](https://spdx.org/licenses/0BSD.html)). Код движка под [MIT](https://github.com/sanchpet/garden/blob/main/LICENSE.txt) (т. к. это оригинальная лицензия Quartz).

# Типография
- Текст и заголовки: [Literata](https://github.com/googlefonts/literata)
- Подписи блоков и на рисунках: [Caveat](https://github.com/googlefonts/caveat)
- Цитаты и пометки на полях: [Neucha](https://fonts.google.com/specimen/Neucha)
- Код: [IBM Plex Mono](https://github.com/IBM/plex)

Шрифты встроены в сайт, см. [Fontsource](https://github.com/fontsource/fontsource).

# Дизайн
Тёмная тема имитирует графит, светлая — бумагу. Вместо прямых линий — карандашные проводки.

Идеи кастомного курсора и оглавления черточками на полях подсмотрел у [Аарона Фама](https://aarnphm.xyz).

Технический радар вдохновлён [Technology Radar](https://www.thoughtworks.com/radar) от Thoughtworks.

# Вдохновение

Я начал делать заметки ещё очень давно. Хочу поблагодарить [Церена Церенова](https://github.com/TserenTserenov) и [Анатолия Левенчука](https://github.com/ailev) из [МИМ](https://system-school.ru/) за то, что помогли вложить новый смысл в метод мышления письмом.
Спасибо [Аарону](https://github.com/aarnphm) и [Энди](https://notes.andymatuschak.org/About_these_notes) за их крутые сайты, из которых я черпаю вдохновение для этого места. Идею колофона я, кстати, тоже [подсмотрел](https://aarnphm.xyz/colophon) у Аарона.

[^1]: Эту лицензию я оставил в надежде, что кому-то вообще когда-то станет дело до моих публикаций. В таком виде в ней практически нет препятствий.
