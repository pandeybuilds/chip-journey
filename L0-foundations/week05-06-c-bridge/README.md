# L0 · Week 5–6 — C bridge

> You know Rust. C gives you the closer-to-the-metal mental model that hardware, firmware,
> and EDA tooling live in. This is a bridge, not a detour — keep it tight.

## Why this
Almost all hardware tooling, embedded code, and reference models are in C/C++. Verilator
compiles your future hardware designs into C++. CUDA is C-with-extensions. You don't need to
*master* C — you need to read it fluently and think in pointers, bytes, and bits.

## Learn (the units — ~45 min/day)
- Types, pointers, and memory layout (the part Rust hides from you — now see it raw).
- Bitwise operators: `& | ^ ~ << >>` and bit masking. This connects straight back to Week 1.
- `struct`, arrays, and how data sits in memory.
- Compiling and running with `gcc`/`clang`; reading a segfault.

**Resource:** Harvard **CS50** — the C weeks (free). Or a focused C primer if you prefer reading.
Lean on your Rust intuition; map each C concept to what Rust does for you automatically.

## Build (the artifact — ship by end of Week 6)
**`flags`** — a bit-field flag manager in C:
- Store up to 32 boolean flags in a single `uint32_t`.
- Functions: `set(n)`, `clear(n)`, `toggle(n)`, `is_set(n)`, and `print_bits()`.
- Use only bitwise operators — no arrays of bools. This is exactly how hardware status/control
  registers work, so you're already learning the embedded mindset.
- Stretch goal: define named flags with an `enum` and a tiny demo (e.g. a fake device's
  control register).

## Done when
- [ ] You can explain what a pointer is and why `flags & (1 << n)` tests bit n.
- [ ] `flags` compiles and all operations work.
- [ ] You can read a simple C program and predict its output.
- [ ] Anki cards added; chain unbroken.
- [ ] **L0 complete** — message your mentor (me) for L1 in this same detail.
