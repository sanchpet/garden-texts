---
title: Colophon
aliases:
  - Colophon
description: "How this site is made: fonts, colour, drawings, cursor and engine"
---

A colophon is the note at the end of old books: what it was set in, what it was printed on, who made it. People ask me about the design and the fonts of this site, so let the answer live here.

## Idea

The site is meant as an engineer's workbook. Text is printed in a calm column, and next to it things are drawn by hand. The library stands as a bookcase, the [tech radar](/en/engineering/radar/) is an instrument with a round scope and a knob, the [race calendar](/en/sport/races) is made of bibs pinned by their corners. Every drawing explains something or holds something. There are no decorations for the sake of decoration.

## Fonts

1. Text and headings are set in [Literata](https://github.com/googlefonts/literata) by TypeTogether, a book serif with Cyrillic. It is variable, with optical sizes: a heading and a paragraph are set in one typeface, but each gets the design drawn for its size.
2. Block labels and everything written on drawn objects are in [Caveat](https://github.com/googlefonts/caveat) by Impallari Type.
3. Quotations are written in [Neucha](https://fonts.google.com/specimen/Neucha), drawn by Jovanny Lemonad. With quotations I leave notes to myself in the margin, sometimes a few paragraphs long, and Caveat is hard to read at that length. Neucha keeps its letters apart.
4. Code is set in [IBM Plex Mono](https://github.com/IBM/plex).

The site serves all its fonts itself, without Google Fonts: a page can be read even when someone else's server is down. Literata and IBM Plex Mono come from [Fontsource](https://github.com/fontsource/fontsource) packages.

## Colour

The light theme is paper, the dark one graphite. Links are steel blue. Italic in the text is green, bold is brick. Marker red goes only to what is done or what I have committed to: a race I ran, a mark on the map and the valve in the logo. Selected text is yellow, as from a highlighter.

## Hand

The straight lines of the frame are pencil here: the rule between sections, the underline of a title, the line along a quotation. Code draws them. A line from one point to another wanders a little, and the randomness starts from the same seed every time, so every build draws the strokes the same and they are baked into SVG. Pencil takes the text colour and changes with the theme. Marker and paper keep their own colours. There are no shadows on the page, depth in the drawings comes from projection and hatching.

## Cursor

If you have a mouse, the pointer becomes my pencil. It underlines a link in the text by hand, frames a button or a list row with corners, takes a marker over a drawn object, draws a question mark over a footnote and turns into a crosshair over the radar. I borrowed the idea from [Aaron Pham](https://aarnphm.xyz). On a phone, with data saver on or in high contrast mode the cursor stays the usual one.

## Engine

The site is built by [Quartz](https://quartz.jzhao.xyz) v5. It's my fork with its own history. Everything of mine (languages, the note header, the bookcase, radar, races, series, feeds) lives in separate plugins, and from upstream I take as patches only what I need. The code is open: [sanchpet/garden](https://github.com/sanchpet/garden), and so are the texts: [sanchpet/garden-texts](https://github.com/sanchpet/garden-texts). What the typesetting can do is shown on the [[50-garden/ru/specimen|specimen page]] (in Russian; I keep it mostly for myself, to peek at while writing). Formulas are rendered by [KaTeX](https://github.com/KaTeX/KaTeX), diagrams by [Mermaid](https://github.com/mermaid-js/mermaid), and drawings like the study plan are made in [Excalidraw](https://github.com/excalidraw/excalidraw) and embedded as SVG.

## How a text comes out

I write in Obsidian, the garden is just a folder in my notes vault. I publish with a button right in the note: it sets the date, takes off the draft mark and sends the text to the repository. Then CI builds the site, and the server picks up the result once a minute. My Telegram channel tells about a new text, and each language has its own Atom feed.

## What isn't here

Ads, third-party scripts and cookies. Views are counted by [GoatCounter](https://github.com/arp242/goatcounter) on my own server, also without cookies. How many times a text was opened is shown under it.

## Licence

The texts here are under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.en): use them however you like, commercially too, just credit me with a link. Code samples in the texts are under [0BSD](https://spdx.org/licenses/0BSD.html), copy them without any notice. Images and quotations by other authors belong to them. The engine's code is under [MIT](https://github.com/sanchpet/garden/blob/main/LICENSE.txt).

## Thanks

To Jacky Zhao and everyone who made Quartz. To the authors of the fonts. To Aaron Pham for the cursor, and I borrowed the very idea of this page from him too.
