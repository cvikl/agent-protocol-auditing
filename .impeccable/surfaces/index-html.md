---
version: 1
slug: "index-html"
primary_target: "index.html"
related_targets: ["demo.html"]
---

# Landing page (index.html) and replay (demo.html)

Scope: Persuade. Two static pages. index.html is the front door; demo.html is the interactive Figure 1. Audience: hackathon judges and AI safety researchers reading once on a laptop. Job: understand the mechanism in under a minute and open the replay. Proof: real traces in traces/ and protocols/, numbers only from summary.json and faithfulness/summary.json. Constraints: monochrome plus one red (flagged trace elements only), no logos, Chart.js from cdnjs only, no interpretation text on the replay beyond flag details and the verdict sentence.

Chosen direction: the arXiv preprint page (Impeccable's pick, taken by the founder over the assigned flight-recorder readout). Memorable moment: Figure 1 draws itself once on load and the red line lands at the onset step.

## Direction contract

THESIS: The submission is a paper, so the page is page one of the preprint: title block, abstract, Figure 1, numbered sections, a results table, references. It refuses the hero line, the three feature cards and the big-number row that hackathon pages ship.

OWN-WORLD: Cool white page (#fdfdfc, never cream), near-black ink (#141414), rules in #d6d6d2, one red (#c81e1e) reserved for flagged trace marks. Text face STIX Two Text (the typeface of scientific publishing), readouts and trace data in Azeret Mono. Two-column body text at desktop in the preprint measure, single column on phones. The arXiv-style vertical stamp runs up the left margin with the submission line. Figures are ruled frames with numbered captions below; tables use top, header and bottom rules only. Links are underlined ink, not blue.

STORY: A judge recognises the form in a second, reads the abstract, sees Figure 1 catch a hack at a named step, scans the results table with intervals, reads what is not covered, and opens the interactive replay.

FIRST VIEWPORT: Centered title at 2.4rem serif, one line of affiliation and date beneath it, the abstract in a 60ch measure, then Figure 1 spanning both columns: the baited run's score curve with dashed threshold, access ticks beneath it, the red onset line, and a caption ending in the primary action, "Open the interactive version", set as an underlined link in a ruled box. The vertical stamp sits in the left margin from the top.

FORM: arXiv preprint page; candidate 1 on the grounded list, taken as the pick over assigned candidate 3; seed key 1fd0deb6. Signature interaction: Figure 1 replays its trace once on load, 60 ms per step, exponential ease, red line last; reduced motion shows the final state. Motion grammar: nothing else moves except the replay page's Play.

FINISH: unreviewed and undocumented is unfinished; this build ends with the finish review, the verdict, DESIGN.md, and every shipping raster carrying its provenance.

## demo.html

Same world. Header reads as a figure page: "Figure 1 (interactive). Pre-registered protocol auditing, honest run beside baited run." Two tabs: "hack detection" (the APA replay) and "protocol faithfulness" (the earlier vision-model experiment, kept separate). Per column, top to bottom: header, score curve, access timeline, protocol strip, flag row, verdict. Play in lockstep, one step per second, pause at the first flag. Clicking the red line opens raw trace lines and the batch protocol.
