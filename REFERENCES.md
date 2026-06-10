# References — L0 Foundations (+ L1)

The exact study material, with what to watch and what to skip. No vague "go find a playlist."
Rule stays the same: **watch → pause → reproduce.** Video is the input; the *build* is the learning.

> Note: Khan Academy is great for **math** (we use it for linear-algebra practice) but weak and
> scattered for digital logic. For binary/Boolean, **Crash Course Computer Science** is the right
> primary source — short, canonical, exactly on-topic.

---

## 🏠 vs 🏢 — Two-mode study (read this first)

The whole point: **YouTube is blocked at work, but ≤30 min of one-time video is the *only* thing
that needs a screen you don't have at the office.** Everything else — conversions, truth tables,
both programs, every bit puzzle, Anki, the L1 simulator — is text/paper/code and works at your desk.

So every resource below is tagged:

- **🏠 HOME** — needs YouTube or a long sit. Do these on commute / evenings. They are *inputs*, watched once.
- **🏢 OFFICE** — text, paper, browser, or compiler only. This is where the actual **learning** happens.

**The move:** front-load the 🏠 video once (or read its text twin), then spend every office hour on 🏢
practice + build. You can do most weeks **video-free** using the text twins noted inline.

| Week | 🏠 one-time input | 🏢 office work (the real learning) |
|---|---|---|
| 1–2 Number/Boolean | 2 Crash Course vids (~24 min) — or skip via transcript | conversions, truth tables, `base_convert`, `bool_eval`, datalab, LeetCode bits |
| 3–4 Linear algebra | 4 × 3B1B chapters (~70 min) | Khan exercises, matmul-in-C |
| 5–6 C bridge | CS50 W1 lecture (optional) | CS50 notes + problem sets, `clang`, bit-field manager |
| L1 Device physics | (almost none) | All About Circuits text + Falstad in browser |

---

## Week 1–2 · Number systems & Boolean algebra

**🏠 Primary input (watch once, ~24 min total — the only video dependency this week):**
- Crash Course CS **#3 — Boolean Logic & Logic Gates**: https://www.youtube.com/watch?v=gI-qXk7XojA
- Crash Course CS **#4 — Representing Numbers and Letters with Binary**: https://www.youtube.com/watch?v=1GSjbWt0c9M
- (Optional warm-up) Crash Course CS **#2 — Electronic Computing**, for context on what a "gate" physically is.
- Full series playlist (you'll reuse it in L1/L2): https://www.youtube.com/playlist?list=PL8dPuuaLjXtNlUrzyH5r6jN9ulIgZBpdo

**🏢 Office-safe text twin (skip the video entirely if work is your only block):**
- Open the YouTube **transcript** panel on #3/#4 and read it — no video stream needed.
- Two's complement: read the worked examples on https://en.wikipedia.org/wiki/Two%27s_complement
  ("Example" + "Why it works" sections only). This is already text — no video alternative needed.
- 🏠 (optional, deeper) Ben Eater — "Two's complement": https://www.youtube.com/watch?v=4qH4unVtJkE

### 🏢 Practice — where to find problems (all office-safe, no account/video)

> See the **"How many is enough"** note at the bottom of this file. It's mastery-based, not a count.

1. **Daily drills (do these first, build *speed*):**
   - Hand-convert **10 numbers/day** dec↔bin↔hex, then check with any converter. Goal = speed, not just correctness.
   - Write the truth table for **AND/OR/NOT/XOR/NAND/NOR from memory** each morning until automatic.
2. **CS:APP Data Lab** — *the* best fit. Implement functions using only bitwise ops; pure two's-complement
   and bit-twiddling in C, compiler-only. Search "CS:APP datalab bits.c". ~13 puzzles ≈ covers the whole week.
3. **LeetCode → "Bit Manipulation" tag** (Easy first): Number of 1 Bits · Single Number · Counting Bits ·
   Reverse Bits · **Sum of Two Integers** (adder with no `+` — literally how a chip adds). All text, office-safe.
4. **Bit Twiddling Hacks** (Stanford / Sean Anderson) — reverse-engineer *why* each trick works as a drill.
5. **Exercism Rust track** — "binary", "allergies" (bit flags), "collatz". You already have Rust.

→ Build spec: [`L0-foundations/week01-02-number-boolean/`](L0-foundations/week01-02-number-boolean/)

---

## Week 3–4 · Linear algebra

**🏠 Primary input (watch — this is THE resource, nothing better exists, ~70 min one-time):**
- 3Blue1Brown — *Essence of Linear Algebra* (full playlist):
  https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab
- **Core chapters for our goal (do these — ~70 min):**
  - Ch.1 Vectors: https://www.youtube.com/watch?v=fNk_zzaMoSs
  - Ch.2 Linear combinations, span, basis
  - Ch.3 Linear transformations and matrices: https://www.youtube.com/watch?v=kYB8IZa5AuE
  - **Ch.4 Matrix multiplication as composition** ← the one that matters most for AI hardware
- **Skip for now:** determinants, cross products, Cramer's rule, change of basis, eigen-stuff.
  Come back to eigenvalues later; they're not needed to build matmul.

**🏢 Office-safe text twin:** 3B1B's intuition is hard to fully replace, but you can carry the office hours with:
- Khan Academy Linear Algebra (text + interactive exercises, no video required):
  https://www.khanacademy.org/math/linear-algebra — do the **Vectors** and **Matrices → Multiplying matrices**
  exercise sets. Skip the rest.
- **immersive linear algebra** (free text+interactive book): http://immersivemath.com/ila/ — the closest text twin to 3B1B.

### 🏢 Practice
- Khan exercise sets above (office-safe).
- By hand: multiply a 2×2 by a 2×2, then a 2×3 by a 3×2 — until the row·column dance is automatic.
  This is the exact loop your Week 3–4 artifact (matmul in C) automates.

→ Build spec: [`L0-foundations/week03-04-linear-algebra/`](L0-foundations/week03-04-linear-algebra/)

---

## Week 5–6 · C bridge

**🏠 / 🏢 Primary (Harvard CS50 — free, the gold standard for first C):**
- Course home (always points to the latest year): https://cs50.harvard.edu/x/
- **Week 1 — C** (variables, loops, conditionals, functions):
  🏢 notes https://cs50.harvard.edu/x/notes/1/ · 🏠 lecture https://www.youtube.com/watch?v=2Lg0W1_JMs4
- **Week 4 — Memory** (pointers, addresses, how data sits in RAM — the part Rust hides):
  🏢 notes https://cs50.harvard.edu/x/notes/4/
- You only need **Week 1 + Week 4** for the bridge. Don't do the whole course — that's a detour.

**🏢 Office-safe:** the CS50 **notes** pages above are full text — read + code from them with `clang`, no video.

### 🏢 Practice
- CS50 Week 1 + Week 4 problem sets (the "psets") — text-based, run locally with `clang`.
- Re-implement one small Rust program of yours in C to *feel* manual memory + pointers.

**Reference book (optional, keep nearby):**
- *The C Programming Language* (Kernighan & Ritchie) — terse, canonical. Use as a lookup, not a read-through.

**Compiler:** macOS already has `clang` (run `clang --version`). Compile with `clang flags.c -o flags`.

→ Build spec: [`L0-foundations/week05-06-c-bridge/`](L0-foundations/week05-06-c-bridge/)

---

## L1 · Just-enough device physics (~6 weeks)

> The most video-optional layer in the whole ladder — you can do **all of L1 from your desk.**
> Respect the transistor: enough to know what RTL eventually becomes. No analog rabbit holes (Rule #5).

**🏢 Primary input — text, no account, office-safe:**
- *All About Circuits* online textbook (free): https://www.allaboutcircuits.com/textbook/ —
  this *replaces* video as your primary input. Read: DC (V/I/R, Ohm's law), RC, then the
  semiconductor chapters (diode/PN junction, then MOSFET).

**🏢 Build environment — browser simulator, office-safe:**
- **Falstad** circuit simulator: https://www.falstad.com/circuit/ — runs in-browser, no install.
  This *is* your build tool. You build the circuits and watch them switch live.

**🏠 Optional deeper feel (only if you want it, evenings):**
- Ben Eater — transistor/clock videos for hardware intuition (not required; All About Circuits covers it).

### 🏢 6-week shape (all doable at your desk)
- **Wk 1 — V, I, R, Ohm's law:** build 3 resistor circuits in Falstad; predict current, then verify.
- **Wk 2 — RC charging/discharging:** build it; sketch the curve *before* simulating, then compare.
- **Wk 3 — Diode + PN junction:** conceptual only (read All About Circuits; cut the analog rabbit hole).
- **Wk 4–5 — MOSFET as a switch → CMOS inverter:** build the inverter in Falstad; annotate when each
  transistor conducts. This is the artifact.
- **Wk 6 — Explainer:** write "how a CMOS inverter computes NOT, in my own words" in `/log`.

**Artifact:** annotated CMOS-inverter Falstad simulation + the written explainer in `/log`.

---

## How many problems is "enough"? (mastery, not a count)

The finish line is the **"Done when"** reflex test in each week's build spec — *not* a problem quota.
Rough calibration to get there:

- **Conversions:** 10/day until you stop thinking — usually ~4–5 days.
- **Truth tables:** write all 6 from blank each morning until automatic — ~3–4 days.
- **Bit problems:** ~10–15 total across CS:APP datalab + LeetCode is plenty. The datalab alone nearly covers it.

What actually cements it is **spacing + recall**, not volume: 5 problems across 5 days beats 25 in one sitting.
That's what the daily Anki block is for — lean on it. When the "Done when" boxes are true, move on; don't grind.

---

## Tools to install for L0/L1
- **Anki** (spaced repetition) — see [`anki/README.md`](anki/README.md). 🏢 web/phone app — review at your desk.
- **clang** (C compiler) — preinstalled on macOS; verify with `clang --version`
- **Rust** (you have it) — fine for the Week 1–2 builds; switch to C for Week 3–6
- **Falstad** (L1) — nothing to install, it's a browser page. 🏢
</content>
