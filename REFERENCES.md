# References — L0 Foundations

The exact study material, with what to watch and what to skip. No vague "go find a playlist."
Rule stays the same: **watch → pause → reproduce.** Video is the input; the *build* is the learning.

> Note: Khan Academy is great for **math** (we use it for linear-algebra practice) but weak and
> scattered for digital logic. For binary/Boolean, **Crash Course Computer Science** is the right
> primary source — short, canonical, exactly on-topic.

---

## Week 1–2 · Number systems & Boolean algebra

**Primary (watch, ~30 min total — these two are the core):**
- Crash Course CS **#3 — Boolean Logic & Logic Gates**: https://www.youtube.com/watch?v=gI-qXk7XojA
- Crash Course CS **#4 — Representing Numbers and Letters with Binary**: https://www.youtube.com/watch?v=1GSjbWt0c9M
- (Optional warm-up) Crash Course CS **#2 — Electronic Computing**, for context on what a "gate" physically is.
- Full series playlist (you'll reuse it in L1/L2): https://www.youtube.com/playlist?list=PL8dPuuaLjXtNlUrzyH5r6jN9ulIgZBpdo

**Two's complement (the one concept Crash Course covers lightly — go deeper):**
- Write-up + worked examples: https://en.wikipedia.org/wiki/Two%27s_complement (read the "Example" + "Why it works" sections only)
- Or watch Ben Eater — "Two's complement": https://www.youtube.com/watch?v=4qH4unVtJkE

**Practice (no account needed):**
- Hand-convert 10 numbers dec↔bin↔hex daily, then check with any converter. Speed = the goal.
- Truth-table drills: write the table for AND/OR/NOT/XOR/NAND/NOR from memory each day until automatic.

→ Build spec: [`L0-foundations/week01-02-number-boolean/`](L0-foundations/week01-02-number-boolean/)

---

## Week 3–4 · Linear algebra

**Primary (watch — this is THE resource, nothing better exists):**
- 3Blue1Brown — *Essence of Linear Algebra* (full playlist):
  https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab
- **Core chapters for our goal (do these — ~70 min):**
  - Ch.1 Vectors: https://www.youtube.com/watch?v=fNk_zzaMoSs
  - Ch.2 Linear combinations, span, basis
  - Ch.3 Linear transformations and matrices: https://www.youtube.com/watch?v=kYB8IZa5AuE
  - **Ch.4 Matrix multiplication as composition** ← the one that matters most for AI hardware
- **Skip for now:** determinants, cross products, Cramer's rule, change of basis, eigen-stuff.
  Come back to eigenvalues later; they're not needed to build matmul.

**Practice (Khan Academy — here it's genuinely good):**
- Khan Academy Linear Algebra (vectors + matrices units, with exercises):
  https://www.khanacademy.org/math/linear-algebra
  Do the **Vectors** and **Matrices → Multiplying matrices** exercise sets. Skip the rest.

→ Build spec: [`L0-foundations/week03-04-linear-algebra/`](L0-foundations/week03-04-linear-algebra/)

---

## Week 5–6 · C bridge

**Primary (Harvard CS50 — free, the gold standard for first C):**
- Course home (always points to the latest year): https://cs50.harvard.edu/x/
- **Week 1 — C** (variables, loops, conditionals, functions):
  notes https://cs50.harvard.edu/x/notes/1/ · lecture https://www.youtube.com/watch?v=2Lg0W1_JMs4
- **Week 4 — Memory** (pointers, addresses, how data sits in RAM — the part Rust hides):
  notes https://cs50.harvard.edu/x/notes/4/
- You only need **Week 1 + Week 4** for the bridge. Don't do the whole course — that's a detour.

**Reference book (optional, keep nearby):**
- *The C Programming Language* (Kernighan & Ritchie) — terse, canonical. Use as a lookup, not a read-through.

**Compiler:** macOS already has `clang` (run `clang --version`). Compile with `clang flags.c -o flags`.

→ Build spec: [`L0-foundations/week05-06-c-bridge/`](L0-foundations/week05-06-c-bridge/)

---

## Tools to install for L0
- **Anki** (spaced repetition) — see [`anki/README.md`](anki/README.md)
- **clang** (C compiler) — preinstalled on macOS; verify with `clang --version`
- **Rust** (you have it) — fine for the Week 1–2 builds; switch to C for Week 3–6
