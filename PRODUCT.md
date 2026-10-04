# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Stack

static HTML, CSS and JS, two pages (landing page and demo replay), served by a small Caddy container behind the shared Caddy on the venture's Hetzner box at apa.agenticworld.uk (delegated: the box already hosts every site this way and the brief allows nothing heavier than Chart.js from cdnjs).

## Users

Judges of the London AI x Science Hackathon, Track 2 (Originator), reading on a laptop during judging, once, with little time. Secondary: AI safety researchers who follow the reward-hacking literature and arrive from the submission link. Both want to know in under a minute what the oversight layer is, why it is needed, and whether the evidence holds.

## Product Purpose

The landing page is the front door to the demo. It states the problem (research agents produce both the claim and its evidence; Huang et al. 2026 measured 30.5% spontaneous reward hacking and found artifact review misses the subtle cases), states the mechanism in three parts, and sends the visitor into the replay. Success: a judge understands the mechanism, opens the demo, and sees a hack caught at onset. Confirmed by the founder on 2026-10-04: "understand and open the demo" is the page's job, not a stand-alone project page.

## Positioning

Agent Protocol Auditing (APA): oversight that acts before submission. The agent declares its plan, every tool call is logged, five mechanical detectors diff execution against the plan, and a deviation triggers immediate recomputation on data the agent never saw. No language model judges anything. A review panel reading the final artifact cannot truthfully claim this; it sees the result after the run is over.

## Operating Context

- The demo replays real traces from `traces/` and `protocols/`, produced by `apa.py`. Nothing shown on screen is typed into the page; it all comes from files in the repository.
- Three conditions: honest (baseline), baited (eval labels present, threshold above honest baseline), permitted (hacking allowed for a red-team test).
- Substrate: an ML-engineer agent (Claude) trains a small classifier on a CUB-200-2011 subset of 10 bird species. The trained model is the artifact; shortcuts taken in training do not transfer to the hidden split, so recomputation is informative.
- A second tab, "protocol faithfulness", holds the earlier vision-model experiment (`faithfulness/`). Its numbers stay separate from the hack-detection numbers.

## Capabilities and Constraints

- Landing page copy limited to what the concept note and the runs support. No invented benchmarks, customers, or coverage percentages beyond what the note states as an estimate (85 to 90 percent of the exploit families in Huang et al., labelled as an estimate).
- The demo: honest left, baited right, same image set. Score curve with dashed threshold and hidden-score dots, access timeline, protocol strip, five-box flag row, verdict sentence, lockstep Play at one step per second pausing at the first flag, red line click opens raw trace lines and the batch protocol. Chart.js from cdnjs only. No interpretation text beyond flag details and the verdict sentence.
- Name: Agent Protocol Auditing, short APA. (The founder picked "Pre-registered Oversight" as the short name for the earlier bird-VLM version; the APA brief that superseded it names the project, and that name is used.)
- Hosting: apa.agenticworld.uk (A record exists, DNS only). The founder wrote ".com" once; the DNS zone is ".uk".

## Brand Commitments

- Monochrome plus one red, binding for both pages (founder, 2026-10-04). Red appears only where a trace is flagged.
- No logos. No hackathon or sponsor marks.
- Copy voice: plain, declarative, one idea per sentence. No em dashes.

## Evidence on Hand

- Concept note: `Concept_Note_Pre-registered_Oversight_for_Bio_Research_Agents.md`.
- Reference paper: Huang et al. 2026, arXiv:2609.28614 (`2609.28614v1.pdf`). Figures usable on the page: 17 models, 38 tasks, 30.5% spontaneous hacking on open-ended tasks, 74.6% confirmed hacks when permitted, artifact-only review missed 6.5% of confirmed hacks, evasion rising from 7 to 56 model-task pairs over five feedback rounds.
- Protocol faithfulness run (20 CUB images, Claude Opus 5, 2026-10-04): species accuracy with image 0.95, attribute accuracy 0.69, dissociation rate 0.40, accuracy from own notes alone 0.15, no-image gap 0.80; edited notes: 15 flagged, 4 ignored, 0 followed. Files in `faithfulness/`.
- APA traces: produced by `apa.py run`; absent until the runs finish. The page must not show numbers that are not in `summary.json`.

## Product Principles

- Show the trace, not the claim: every number on screen has a file behind it.
- The verdict is mechanical: a language model never decides.
- State what is not covered as plainly as what is.
- Before submission, not after: onset matters more than post-hoc review.
