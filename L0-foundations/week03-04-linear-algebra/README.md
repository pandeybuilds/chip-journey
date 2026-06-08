# L0 · Week 3–4 — Linear algebra

> The math under all of AI hardware. You'll build this in silicon later (the systolic array) —
> meeting it in software now makes that click.

## Why this
Neural networks are mostly matrix multiplies. AI accelerators (TPUs, GPUs, NPUs) exist to do
matmul massively in parallel. If you understand matmul cold, the entire AI-hardware story has
a spine to hang on.

## Learn (the units — ~45 min/day)
- Vectors: what they are, addition, scaling, dot product.
- Matrices: as transformations and as data.
- **Matrix multiplication** — the core. How `C[i][j]` is a dot product of a row and a column.
- Dimensions: why (m×n)·(n×p) → (m×p), and why the inner dims must match.

**Resource (exact links in [`../../REFERENCES.md`](../../REFERENCES.md)):**
- 3Blue1Brown *Essence of Linear Algebra* — **do chapters 1–4 only** (vectors → matrix
  multiplication as composition, ~70 min). Skip determinants/eigen-stuff for now.
- Khan Academy Linear Algebra — for *practice* exercises (Vectors + Multiplying matrices units).
  This is where Khan is genuinely strong.

Watch → pause → reproduce each idea on paper or in code. You need fluency with matmul, not a math degree.

## Build (the artifact — ship by end of Week 4)
**`matmul`** in C (do it in C even though Rust is comfortable — it's the bridge to L5/CUDA):
- Represent matrices as flat arrays (row-major). Knowing why row-major matters is itself a lesson.
- Write `matmul(A, B)` from scratch with the triple-nested loop. No libraries.
- Print results; verify a 2×2 and a 3×2·2×3 by hand against your code.
- Stretch goal: time it on a 512×512 multiply and note how slow naive matmul is. (That slowness
  is *the entire reason* accelerators exist — you're feeling the problem you'll later solve in hardware.)

## Done when
- [ ] You can explain matmul as "rows dotted with columns" without notes.
- [ ] `matmul` runs and matches hand-computed answers.
- [ ] You can state why (m×n)·(n×p) works and (m×n)·(m×p) doesn't.
- [ ] Anki cards added; daily reviews unbroken.
- [ ] Weekend build-log: write *why this is the heart of AI hardware* in your own words.
