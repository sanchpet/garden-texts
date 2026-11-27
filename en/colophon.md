---
title: Colophon
aliases:
  - Colophon
description: "In book publishing, a colophon holds the imprint details and the publisher's emblem. It's also a fancy, compact word for “what this site is made of”."
---
In its current form the site is meant as an engineer's workbook with printed text (a compromise for readability) and handwritten notes in the margins. On the whole I try to lay everything out here like in a big garage, giving each section some physicality: a bookcase with [[50-garden/en/library/index|books]], a [tech radar](/en/engineering/radar/), a [race calendar](/en/sport/races).

# Technical details

The site is built on a fork of [Quartz](https://quartz.jzhao.xyz) v5 with a pile of plugins. Yes, I write the [code](https://github.com/sanchpet/garden) with AI, since web programming and frontend have never been my strong side. Formulas: [KaTeX](https://github.com/KaTeX/KaTeX), diagrams: [Mermaid](https://github.com/mermaid-js/mermaid), other drawings I make in [Excalidraw](https://github.com/excalidraw/excalidraw) and embed as SVG, or draw with a stylus on an iPad in [Goodnotes](https://www.goodnotes.com/). For a typesetting demo, go [[specimen|here]] (in Russian).

The site has a feed (RSS) in [Atom](https://sanch.pet/en/feed.xml). I run analytics on a self-hosted [GoatCounter](https://github.com/arp242/goatcounter) without cookies.

The site is bilingual, so almost every page has a twin (you can see it in the URL: `/ru/` and `/en/`). That's costly to maintain (though easier with LLMs), so there may be gaps in this scheme. I haven't yet weaned myself off writing in Russian (luckily for my friends and family), but eventually the site will most likely come to English.

I write texts in [Obsidian](https://obsidian.md/) and generally try to work only through it, loading it with tons of plugins. A local plugin was put together for publishing this site too.

# Licence

The [texts](https://github.com/sanchpet/garden-texts) are licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en)[^1] (except other people's pictures and quotations; code samples are [0BSD](https://spdx.org/licenses/0BSD.html)). The engine's code is under [MIT](https://github.com/sanchpet/garden/blob/main/LICENSE.txt) (since that's Quartz's original licence).

# Typography
- Text and headings: [Literata](https://github.com/googlefonts/literata)
- Block labels and lettering on drawings: [Caveat](https://github.com/googlefonts/caveat)
- Quotations and margin notes: [Neucha](https://fonts.google.com/specimen/Neucha)
- Code: [IBM Plex Mono](https://github.com/IBM/plex).

The fonts are built into the site, see [Fontsource](https://github.com/fontsource/fontsource).

# Design
The dark theme imitates graphite, the light one paper. Instead of straight lines there are pencil strokes.

I borrowed the idea of a custom cursor from [Aaron Pham](https://aarnphm.xyz).

# Inspiration

I started taking notes a very long time ago. I want to thank [Tseren Tserenov](https://github.com/TserenTserenov) and [Anatoly Levenchuk](https://github.com/ailev) from [MIM](https://system-school.ru/) for helping me put new meaning into the method of thinking by writing.

Thanks to [Aaron](https://github.com/aarnphm) and [Andy](https://notes.andymatuschak.org/About_these_notes) for their great sites, which I draw inspiration from for this place. By the way, I [borrowed](https://aarnphm.xyz/colophon) the idea of a colophon from Aaron too.

[^1]: I picked this licence hoping that someone will someday care about my publications at all. In this form it puts practically no obstacles in the way.
