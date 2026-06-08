# L0 · Week 1–2 — Number systems & Boolean algebra

> The literal language of hardware. Everything above this layer is built from 1s, 0s, and gates.

## Why this first
A chip is billions of switches doing Boolean logic on binary numbers. Before you can design
one, this has to be reflex — not something you look up.

## Learn (the units — ~45 min/day)
- Binary, hexadecimal, decimal — and converting between them by hand.
- Two's complement: how computers represent negative numbers, and why it makes subtraction free.
- Boolean algebra: AND, OR, NOT, XOR, NAND, NOR; truth tables; De Morgan's laws.
- Functional completeness: why NAND alone can build everything (foreshadows Nand2Tetris).

**Resource (exact links in [`../../REFERENCES.md`](../../REFERENCES.md)):**
- Crash Course CS **#3 Boolean Logic & Logic Gates** + **#4 Binary** — the two core watches (~30 min).
- For two's complement specifically, go deeper: Ben Eater's "Two's complement" video / the Wikipedia worked examples.
- *(Not Khan Academy here — it's weak for digital logic. Khan comes back for linear algebra in Week 3.)*

Watch → pause → reproduce on paper. Make Anki cards for every rule (the starter deck already seeds these).

## Build (the artifact — ship by end of Week 2)
Pick Rust (you know it) or C. Two small programs, no libraries for the core logic:

1. **`base_convert`** — converts between decimal, binary, and hex. Roll the conversion
   yourself (divide/modulo for dec→base, positional sum for base→dec). Don't call built-in
   parsers for the core — the point is to *feel* the math.
2. **`bool_eval`** — evaluates a Boolean expression (e.g. `A AND (B OR NOT C)`) given input
   values. Start with fixed expressions; stretch goal: parse a string.

Commit both with a short README showing example runs.

## Done when
- [ ] You can convert dec↔bin↔hex on paper without notes.
- [ ] You can write any 2-input gate's truth table from memory.
- [ ] Both programs run and are committed.
- [ ] 10+ Anki cards from this topic, reviewed daily.
- [ ] Weekend build-log entry written in your own words.
