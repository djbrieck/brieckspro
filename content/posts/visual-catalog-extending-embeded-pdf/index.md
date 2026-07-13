---
title: "Beyond Embedded PDFs: Adding a Visual Catalog Option"
date: 2026-07-13T15:58:28-07:00
draft: true
---

## The problem: embedded PDF viewers aren't always reliable on mobile

With the recent changes in the JavaScript IPFS in-browser client, it started
relying on embedded PDF viewers on various mobile platforms to render
documents pulled straight from IPFS. On paper that's convenient — no
conversion step, just point the viewer at the CID and let the browser do the
rest.

In practice, it isn't always reliable. Mobile embedded PDF viewers are a
patchwork: some browsers render inline, some kick out to a native app, some
silently fail to load a plugin at all, and the experience differs across
iOS, Android, and whatever WebView flavor a given app happens to ship. For
something as simple as browsing a multi-page menu or catalog, that's enough
fragility that PDF shouldn't be the *only* way to view a document.

## The idea: keep PDF, add a plain HTML option alongside it

To be clear, this isn't about dropping PDF — PDF stays exactly where it is,
and it's still the right choice for a lot of cases. The goal was to give it
company: a second, simpler format that can be offered as an alternative when
the embedded viewer doesn't cooperate. So alongside the PDF, each document
can now also be exported as a set of plain HTML pages with rasterized
images, the same way LibreOffice's old Impress/Draw HTML export wizard used
to do it.

As a fallback or alternative to the PDF, that gives you:

- An overview page with a table of contents and thumbnails
- One HTML page per document page, with simple Back / Continue / First /
  Last navigation
- Just `<img>` tags — no plugin, no viewer, no PDF.js, nothing that can fail
  to initialize on a flaky mobile connection

It's a deliberately "boring" format, and that's the point. It works the same
everywhere a browser works, which is a useful property to have in reserve
when you're serving content over IPFS to an unpredictable mix of devices —
without giving up the PDF for the cases where it's the better fit.

## The first pass: doing it by hand in OpenOffice

Before any of this was scripted, the visual catalog format itself came from
just doing it manually: exporting a document to HTML through OpenOffice/
LibreOffice's own export dialog, page by page, and using that output as-is.
It worked, and it proved the format was worth having — but it was a manual,
click-through-the-wizard process every time, with no control over the output
folder name, no way to inject a shared stylesheet, and no way to customize
page titles beyond whatever the wizard defaulted to. Fine for a one-off, not
something you'd want to repeat for every document.

## Then automated it with AI

That's where AI assistance came in — not to invent the format, but to turn
the manual export into a proper one-command tool. The ask was straightforward:
take what the OpenOffice wizard produces by hand and reproduce it
programmatically, end to end, with the missing controls (folder naming,
shared CSS, custom titles) added on top. The AI handled the implementation
and testing: rendering `.odg` pages to PDF, rasterizing each page with
poppler, generating letterboxed thumbnails, and templating out the HTML to
match the original wizard's structure — down to matching how the first/last
page nav links go from clickable to plain text.

## Now we have a one-command tool to use

The result is `odg_to_catalog.py` — what used to be a manual trip through
the OpenOffice export wizard is now a single command. Point it at a `.odg`
file and it produces a folder like `SampleMenuVisualCatalog/` containing the
overview page, per-page HTML, full-size images, and thumbnails, ready to be
pinned and served over IPFS.

A few things it lets you control that the manual export never did:

```bash
python3 odg_to_catalog.py SampleMenu.odg \
    --title "Sample Page Menu" \
    --css style.css --css-file mystyles.css
```

- **Output folder name** — defaults to `<basename>VisualCatalog`, or set
  your own with `--out-dir`
- **Shared CSS** — every generated page links the same relative stylesheet,
  so a whole set of catalogs can share one theme
- **Custom titles** — the overview page gets your base title as-is
  (`Sample Page Menu`), and every sub-page gets it numbered
  (`Sample Page Menu - 1`, `Sample Page Menu - 2`, `Sample Page Menu - 3`, ...)

Under the hood it's just LibreOffice headless for the `.odg` → PDF step,
`pdftoppm` to rasterize pages, and Pillow to build the thumbnails and
letterbox them into a consistent 256×192 box — the same footprint as the
original export's thumbnails, so it drops into existing layouts without
surprises.

It's a small tool, but it adds something valuable alongside the PDF: a
second format that's boring in the best way — plain HTML and PNGs that any
browser, on any platform, can render without a plugin. PDF stays as an
option for anyone who wants it; the visual catalog is there for the cases
where the embedded viewer isn't cooperating.
