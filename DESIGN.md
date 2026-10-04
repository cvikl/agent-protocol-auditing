---
name: Agent Protocol Auditing
description: An arXiv preprint page in cool white and near-black ink, with one red reserved for the flagged step in a trace.
colors:
  paper: "#fdfdfc"
  ink: "#141414"
  ink-2: "#4a4a47"
  ink-3: "#6f6f6b"
  rule: "#d6d6d2"
  rule-2: "#141414"
  red: "#c81e1e"
  chart-grid: "#ececea"
  tick-idle: "#cfcfcb"
typography:
  display:
    fontFamily: "STIX Two Text, Times New Roman, serif"
    fontSize: "clamp(1.75rem, 1.2rem + 2vw, 2.4rem)"
    fontWeight: 600
    lineHeight: 1.18
    letterSpacing: "-0.005em"
  headline:
    fontFamily: "STIX Two Text, Times New Roman, serif"
    fontSize: "17px"
    fontWeight: 700
    lineHeight: 1.5
  title:
    fontFamily: "STIX Two Text, Times New Roman, serif"
    fontSize: "1.5rem"
    fontWeight: 600
    lineHeight: 1.5
  body:
    fontFamily: "STIX Two Text, Times New Roman, serif"
    fontSize: "17px"
    fontWeight: 400
    lineHeight: 1.5
    fontFeature: "\"lnum\" 1, \"onum\" 0"
  abstract:
    fontFamily: "STIX Two Text, Times New Roman, serif"
    fontSize: "15.5px"
    fontWeight: 400
    lineHeight: 1.55
  caption:
    fontFamily: "STIX Two Text, Times New Roman, serif"
    fontSize: "15px"
    fontWeight: 400
    lineHeight: 1.45
  table:
    fontFamily: "STIX Two Text, Times New Roman, serif"
    fontSize: "14.5px"
    fontWeight: 400
    lineHeight: 1.35
  readout:
    fontFamily: "Azeret Mono, ui-monospace, monospace"
    fontSize: "12.5px"
    fontWeight: 400
    lineHeight: 1.4
  control:
    fontFamily: "Azeret Mono, ui-monospace, monospace"
    fontSize: "13px"
    fontWeight: 400
    lineHeight: 1.2
  label:
    fontFamily: "Azeret Mono, ui-monospace, monospace"
    fontSize: "11px"
    fontWeight: 500
    lineHeight: 1
    letterSpacing: "0.06em"
  stamp:
    fontFamily: "Azeret Mono, ui-monospace, monospace"
    fontSize: "11.5px"
    fontWeight: 500
    lineHeight: 1
    letterSpacing: "0.04em"
rounded:
  none: "0"
spacing:
  xs: "4px"
  sm: "8px"
  md: "12px"
  lg: "18px"
  xl: "24px"
  2xl: "32px"
  3xl: "40px"
  page-top: "72px"
  page-bottom: "96px"
components:
  link:
    textColor: "{colors.ink}"
    typography: "{typography.body}"
  open-action:
    backgroundColor: "{colors.paper}"
    textColor: "{colors.ink}"
    typography: "{typography.caption}"
    rounded: "{rounded.none}"
    padding: "7px 12px"
  open-action-hover:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.paper}"
  button-mono:
    backgroundColor: "{colors.paper}"
    textColor: "{colors.ink}"
    typography: "{typography.control}"
    rounded: "{rounded.none}"
    padding: "6px 10px"
  button-mono-hover:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.paper}"
  button-mono-disabled:
    backgroundColor: "{colors.paper}"
    textColor: "{colors.ink-3}"
  select-mono:
    backgroundColor: "{colors.paper}"
    textColor: "{colors.ink}"
    typography: "{typography.control}"
    rounded: "{rounded.none}"
    padding: "6px 10px"
  tab:
    backgroundColor: "{colors.paper}"
    textColor: "{colors.ink-3}"
    padding: "10px 0"
  tab-active:
    textColor: "{colors.ink}"
  panel-label:
    textColor: "{colors.ink-3}"
    typography: "{typography.label}"
  flag:
    backgroundColor: "{colors.paper}"
    textColor: "{colors.ink-3}"
    rounded: "{rounded.none}"
    padding: "6px 6px 7px"
  flag-on:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.paper}"
  protocol-batch:
    backgroundColor: "{colors.paper}"
    textColor: "{colors.ink-2}"
    rounded: "{rounded.none}"
    padding: "5px 8px"
  dialog:
    backgroundColor: "{colors.paper}"
    textColor: "{colors.ink}"
    rounded: "{rounded.none}"
    padding: "18px 20px"
  margin-stamp:
    textColor: "{colors.ink-3}"
    typography: "{typography.stamp}"
---

# Design System: Agent Protocol Auditing

## Overview

**Creative North Star: "Page One of the Preprint"**

The product is a submission, so the pages are set like the first page of an arXiv preprint: centred title block, italic byline, an abstract in a narrow measure, a ruled Figure 1 that spans both columns, numbered sections in two-column justified text, tables ruled only at top, header and bottom, a references block, and a monospaced vertical stamp in the left margin. Nothing on the page is decoration; every element is a thing a paper already has. The replay page (demo.html) is the same page turned into an interactive figure: a serif title, a ruled tab row, monospaced controls, and two ruled columns of panels.

The material is cool white paper and near-black ink. Depth does not exist; hierarchy is carried by rule weight (1.5px heavy, 1px light), by three ink tones, and by the switch from serif text to monospaced data. Colour exists once: a single red that is drawn only where a trace is flagged, as the vertical onset line in a chart or as the flagged line inside the raw trace dialog. The world refuses the hackathon vocabulary of hero lines, feature cards, gradients, rounded chips and icon rows.

Motion is a single event. Figure 1 draws its trace once on load, one step every 60 ms, and the red line is the last thing to appear; with reduced motion the final state is shown at once. On the replay page only Play moves, one step per second, stopping at the first flag. Nothing else transitions.

**Key Characteristics:**
- Paper and ink: `paper` ground, `ink` text, two lighter inks for bylines and metadata.
- One red, one meaning: the flagged step in a trace, never emphasis, never a button.
- Serif for prose (STIX Two Text), mono for readouts, numerals, controls and labels (Azeret Mono).
- Hierarchy by rules: 1.5px heavy rule above, 1px light rule below, never boxes with fill.
- Zero radius, zero shadows, zero icons, zero logos.
- Two-column preprint body at desktop collapsing to one column on narrow screens.

## Colors

A monochrome palette of one paper, three inks and two rule greys, with a single red that is reserved for flagged trace marks.

### Primary
- **Flag Red** (`red`): the only chromatic colour. Drawn as the 1.5px vertical onset line on a score chart at the first flagged step, as the red legend swatch next to "first flag", as the `.red` span on the flagged lines inside the raw trace dialog, and on the faithfulness replay as the 2px horizontal rule inserted at the flagged step. It is never used for text emphasis, buttons, links or hover states.

### Neutral
- **Paper** (`paper`): page ground on every surface, the fill of every control and dialog, and the stroke around hidden-score dots so they sit cleanly on the line. It is cool white, not cream.
- **Ink** (`ink`): body text, headings, chart lines, dashed threshold, evaluator ticks, the active tab underline, the fill of an active flag box, the border of every control, the focus outline and the selection background.
- **Ink 2** (`ink-2`): the byline, chart axis text (set as the Chart.js default colour), the per-column header, legend text, control labels, protocol batch text, flag names, and the replay's note paragraph.
- **Ink 3** (`ink-3`): the margin stamp, the footer, inactive tabs, panel labels, inactive flag text, disabled control text and the italic "pending" state.
- **Rule** (`rule`): the light hairline. Bottom rule of a figure frame, top and bottom of `pre` blocks, borders of inactive flag and protocol boxes, the tab row's bottom rule, the thin scrollbar thumb, and the disabled control border.
- **Rule 2** (`rule-2`): the heavy rule, the same value as ink but a separate token so rule weight and text colour can diverge later. Top of a figure frame at 1.5px, table top and bottom at 1.5px, table header bottom at 1px, top of the references block, the tab row's top, each replay column's top, the iframe's top.
- **Chart Grid** (`chart-grid`): Chart.js grid lines on both axes of the score chart.
- **Tick Idle** (`tick-idle`): access-timeline bars for steps that did not touch evaluation data; evaluator contact uses `ink`.

### Named Rules
**The One Red Rule.** Red marks a flagged step in a recorded trace and nothing else. If a red element cannot be clicked or read back to a trace line, it is wrong.

**The Heavy-Over-Light Rule.** Every ruled frame opens with the 1.5px `rule-2` line and closes with a 1px line (`rule` for figures and pre blocks, `rule-2` for table bottoms). Fill is never used to make a container; rules are.

**The Three Inks Rule.** Text uses `ink`, `ink-2` or `ink-3` and nothing between. Metadata and labels step down one or two inks; they never shrink below 11px to compensate.

## Typography

**Display Font:** STIX Two Text (with Times New Roman, serif)
**Body Font:** STIX Two Text (with Times New Roman, serif)
**Label/Mono Font:** Azeret Mono (with ui-monospace, monospace)

**Character:** STIX Two Text is the face of scientific publishing, and here it sets everything a paper would set: title, byline, abstract, body, captions and table text. Azeret Mono is the face of the recording: trace readouts, table numerals, chart axes, controls, panel labels, the margin stamp and the footer. The page reads as a paper; the data reads as a log. Body text uses lining numerals (`lnum`), so inline figures line up with the mono tables.

### Hierarchy
- **Display** (600, `clamp(1.75rem, 1.2rem + 2vw, 2.4rem)`, 1.18, -0.005em, balanced wrap): the paper title, centred, in a 42rem block.
- **Title** (600, 1.5rem): the replay page's heading, left-aligned, followed by an italic `ink-2` subtitle.
- **Headline** (700, 17px): numbered section headings inside the two-column body, 26px above and 8px below, never breaking from their paragraph. The abstract heading runs inline at 15.5px 700 and ends with a period.
- **Body** (400, 17px, 1.5, justified with hyphens): two-column body text on the paper; the replay body is 16px. The abstract is 15.5px/1.55 in a 36.5rem measure.
- **Caption** (400, 15px, 1.45): figure captions beneath the frame and table captions above the table, each opening with a bold "Figure n." or "Table n." Verdict sentences on the replay share this size.
- **Table** (400, 14.5px, 1.35): table cells in serif; numeric and significance cells switch to mono at 12.5px, right-aligned and non-wrapping.
- **Readout** (400, 12.5px, 1.4, mono): figure legends, column headers, protocol batches, code and pre blocks, the footer. Dialog trace lines drop to 11.5px.
- **Control** (400, 13px, 1.2, mono): buttons, selects and control labels on the replay.
- **Label** (500, 11px, 0.06em, uppercase, mono): panel labels above each replay panel ("score", "access timeline", "protocol", "flags") and the faithfulness column heads. These name data panels; they never sit above a serif heading.
- **Stamp** (500, 11.5px, 0.04em, mono): the vertical margin stamp, rotated -90deg, fixed 14px from the left edge and 32px from the bottom, with the category in `ink` at 500.

### Named Rules
**The Serif Says, Mono Shows Rule.** Prose, headings and captions are serif. Anything read from a file, a chart, a control or a counter is mono. A number inside a serif sentence stays serif; a number inside a table cell, legend or readout is mono.

**The Italic Byline Rule.** Italic appears only in the byline, the replay subtitle, and the pending state. Bold is reserved for figure and table numbers, section headings, and the stamped category.

## Layout

The paper is a single centred column with a 1000px maximum, padded 72px top, 24px sides and 96px bottom. Within it the title block is centred in a 42rem block with 40px below; the abstract is centred in a 36.5rem measure with 36px below; the body runs as CSS columns (two columns, 2.4rem gap, no column rule). Figures, the wide results table and the references block span both columns. Figures carry 18px above and 26px below; the figure frame pads 14px above the chart and 10px below. Under 820px the body collapses to one column, the margin stamp is hidden, and page padding drops to 44px 16px 64px.

The replay widens to 1180px with 40px top padding. Beneath the title and tab row the two runs sit in a two-column grid with a 32px gap; under 860px the grid stacks and padding drops to 28px 16px 64px. Each column opens with a heavy rule, then stacks: header, score panel (220px), access timeline (30px), protocol strip, five-box flag row (five equal columns, 6px gap), verdict. Panel labels sit 10px above and 4px below each panel. The faithfulness replay lives in an iframe under the second tab, 1560px tall, with its own 760px breakpoint and a three-box flag row.

Spacing follows a small set of observed steps: 4, 8, 12, 18, 24, 32, 40px, with 72px and 96px only for page top and bottom.

## Elevation & Depth

There are no shadows and no tonal surfaces. Every surface is `paper`. Depth is conveyed by rules alone: a heavy 1.5px line opens a frame, a light 1px line closes it. State is conveyed by inversion, not lift: an active flag box fills with `ink` and sets its text in `paper`; a hovered button or the "open" action box does the same. The dialog floats over a 35% `ink` backdrop (`rgba(20, 20, 20, .35)`) and is itself a 1px ink-bordered paper rectangle with no shadow. Inactive protocol batches fade to 35% opacity rather than changing colour.

### Named Rules
**The Flat Paper Rule.** No box-shadow anywhere. If something must read as "on top", give it a 1px `ink` border and a dim backdrop.

**The Inversion Rule.** The on state and the hover state are both ink-on-paper flipped to paper-on-ink. There is no third colour for emphasis.

## Shapes

Zero radius everywhere, declared explicitly on controls (`border-radius: 0`). Containers are not boxes but ruled regions: a figure is a chart between a heavy top rule and a light bottom rule, with no side borders; a table has a heavy top, a 1px header rule and a heavy bottom, with no vertical rules and no row stripes. The few bordered rectangles (the "open" action, buttons, selects, flag boxes, protocol batches, the dialog) are 1px hairlines in `rule` at rest and `ink` when active or interactive. A deviating protocol batch uses a dashed 1px border. The margin stamp is a rotated line of text, not a label badge. Legend swatches are 22px line segments (solid, dashed, or red), a 7px dot, or a 3px by 12px bar, drawn with borders and backgrounds, never icons.

## Components

### Links
- **Style:** inherit the surrounding ink, underlined with a 1px line offset 3px; never blue, never bold.
- **Hover:** underline thickens to 1.5px. No colour change.
- **Focus:** 2px `ink` outline, offset 3px (global).

### Buttons
Utilitarian, monospaced, and ruled; they look like instrument controls on a paper page.
- **Shape:** square (0 radius), 1px `ink` border.
- **Mono control:** `paper` fill, `ink` text, 13px Azeret Mono, 6px 10px padding (4px 10px on the faithfulness replay). Used for Play, Show all, Reset and Close.
- **Hover:** inverts to `ink` fill and `paper` text.
- **Disabled:** `ink-3` text, `rule` border, default cursor, no fill change.
- **The "open" action box:** the primary action on the paper, a serif link at 15px inside a 1px `ink` border, 7px 12px padding, inline-block 12px below the figure caption. Hover inverts to ink.

### Inputs / Fields
- **Select:** identical to the mono control: 13px Azeret Mono, `paper` fill, 1px `ink` border, 0 radius, 6px 10px padding. Labelled inline in `ink-2` mono ("left", "right").
- **Focus:** the global 2px `ink` outline.

### Navigation
- **Tab row:** flex row with 28px gaps between a 1.5px `rule-2` top rule and a 1px `rule` bottom rule. Tabs are borderless serif buttons at 15px 600, `ink-3` at rest, `ink` on hover, and `ink` with a 2px `ink` bottom border when selected (pulled down 1px to sit on the row's rule).
- **Back link:** an ordinary underlined link inside the subtitle; no chevrons.

### Title Block
Centred heading in a 42rem block: display heading, then the italic `ink-2` byline with the date on its own non-italic line 4px beneath.

### Margin Stamp
Fixed to the left margin and rotated -90deg from its bottom-left corner: 11.5px Azeret Mono 500, 0.04em tracking, `ink-3`, with the bracketed category in `ink`. Hidden under 820px. Aria-hidden; it is the paper's provenance mark, not navigation.

### Figures
- **Frame:** 1.5px `rule-2` top, 1px `rule` bottom, 14px top and 10px bottom padding, no sides.
- **Chart:** Chart.js 4.4.1 with all animation off. Axis font Azeret Mono 11px (10.5px on the replay) in `ink-2`; grid `chart-grid`; y axis fixed at 46px (40px on the replay). Visible score line in `ink` at 1.5px with 2.5px points; threshold dashed `ink` at 1.2px with dash [5, 4]; hidden-score scatter at 4.5px `ink` with a 1.5px `paper` stroke; the onset drawn by a plugin as a 1.5px `red` vertical line after the datasets.
- **Access timeline:** a 3px-thick bar chart beneath the score chart, `ink` for steps that touched evaluation data, `tick-idle` otherwise, axes hidden, 34px tall on the paper and 30px on the replay.
- **Legend:** 12.5px mono in `ink-2`, flex with 22px gaps, indented 46px to clear the y axis on the paper.
- **Caption:** 15px serif beneath the frame, opening with bold "Figure 1."

### Tables
Top rule 1.5px, header bottom 1px, final row bottom 1.5px, all in `rule-2`; no vertical rules, no fills. Cells 5px vertical padding, 8px right, left-aligned and top-aligned; headers at 600. Numeric cells right-aligned in 12.5px mono, non-wrapping. Table captions sit above the table at 15px with a bold "Table n."

### Replay Panels
- **Column:** opens with a 1.5px `rule-2` top rule and 10px padding; a mono header line at 12.5px in `ink-2` with run facts in `ink` 500.
- **Protocol strip:** wrapped row of batches, 1px `rule` border, 5px 8px padding, 12px mono in `ink-2` at 35% opacity; the current batch goes to full opacity with an `ink` border; a deviating batch uses a dashed border.
- **Flag row:** five equal boxes, 6px gap, 1px `rule` border, 11.5px mono in `ink-3`, minimum height 3.4em; the name is a 10.5px uppercase 500 line in `ink-2`, the signal value 14px beneath it. A raised flag inverts to `ink` fill with `paper` text and border.
- **Verdict:** a 15px serif sentence 12px below the flags, reserved to 2.9em so the layout does not jump.

### Dialog
A 1px `ink`-bordered `paper` rectangle, 18px 20px padding, maximum width `min(760px, 92vw)`, over a 35% ink backdrop. Headings 15px 700 serif; trace text in a `pre` at 11.5px mono between 1px `rule` lines, scrolling past 40vh; flagged lines in `red`; a mono Close button beneath.

## Do's and Don'ts

### Do:
- **Do** open every frame, table and column with a 1.5px `rule-2` line and close it with a 1px line; use rules, not fills, to bound content.
- **Do** set prose, headings and captions in STIX Two Text and every readout, numeral cell, control, axis and label in Azeret Mono.
- **Do** keep the preprint measures: 42rem title block, 36.5rem abstract, 1000px page, two CSS columns with a 2.4rem gap at desktop.
- **Do** draw charts with `ink` lines, `chart-grid` grid lines, `tick-idle` for idle ticks, and a 1.5px `red` vertical line only at the first flagged step.
- **Do** show state by inversion: active and hovered elements flip to `ink` fill with `paper` text.
- **Do** number figures and tables and open their captions with the bold number.
- **Do** honour `prefers-reduced-motion` by rendering the final state of the trace at once.

### Don't:
- **Don't** use red for anything but a flagged trace mark; not emphasis, not links, not buttons, not errors in copy.
- **Don't** add a radius, a shadow, a gradient, a tinted surface or a second colour; the only surfaces are paper and inverted ink.
- **Don't** colour links blue or remove their underline.
- **Don't** add icons, logos, sponsor marks or badges; legend swatches are drawn line segments, dots and bars.
- **Don't** animate anything except the one-time Figure 1 draw on load (60 ms per step) and the replay's Play (1 s per step).
- **Don't** introduce a heading kicker, a hero line, feature cards or a big-number row; the page is page one of a paper.
