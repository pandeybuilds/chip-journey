# Roadmap — the ladder

~700 focused hours over ~18–24 months (~8 hrs/week). Each layer ends with a portfolio
artifact. Check things off as you go — visible progress is fuel.

---

## L0 — Foundations · ~6 weeks · _in progress_

Rebuild the math everything sits on, sharpen C to complement Rust, install the learning system.

- [ ] **Week 1–2 — Number systems & Boolean algebra** → binary/hex/two's-complement converter + Boolean evaluator. ([details](L0-foundations/week01-02-number-boolean/))
- [ ] **Week 3–4 — Linear algebra** (3Blue1Brown) → matrix-multiply from scratch in C. ([details](L0-foundations/week03-04-linear-algebra/))
- [ ] **Week 5–6 — C bridge** (CS50 C weeks) → bit-field flag manager. ([details](L0-foundations/week05-06-c-bridge/))
- [ ] **L0 artifact:** all three programs in the repo, README explaining each.

## L1 — Just-enough device physics · ~6 weeks · _locked_

Respect the transistor: enough to know what RTL eventually becomes. No analog rabbit holes.
- [ ] Basic electricity: V, I, R, Ohm's law, RC (Khan / All About Circuits + Falstad simulator)
- [ ] Diode & PN junction (conceptual)
- [ ] MOSFET: the atom of every chip — switch behavior, CMOS inverter
- [ ] **Artifact:** annotated CMOS-inverter simulation + a written explainer in `/log`

## L2 — Digital logic · ~12 weeks · _locked_

- [ ] **Nand2Tetris Part I** (the spine): NAND → gates → ALU → CPU → assembler
- [ ] (Optional parallel) Ben Eater 8-bit computer videos for hardware feel
- [ ] **Artifact:** working CPU from the Nand2Tetris projects, in the repo

## L3 — HDL fluency + FPGA · ~20 weeks · _locked_

- [ ] **SystemVerilog** fundamentals
- [ ] **HDLBits** — drill combinational + sequential to reflex
- [ ] Toolchain: Verilator + iverilog + GTKWave + Yosys; verification with cocotb (Python)
- [ ] FPGA board (iCE40 open toolchain, or Xilinx Arty)
- [ ] Build ladder: ALU → UART → SPI → FIFO → **pipelined RISC-V RV32I core**
- [ ] **Artifact:** RISC-V core running on real FPGA hardware

## L4 — Computer architecture · ~16 weeks · _locked_

- [ ] **Harris & Harris**, *Digital Design and Computer Architecture* (RISC-V ed.)
- [ ] **Onur Mutlu** lectures (ETH Zürich, free)
- [ ] Hennessy & Patterson reference
- [ ] **Artifact:** improved core (pipelining/caching) + benchmarks write-up

## L5 — Accelerators + CUDA + tape-out · ~20 weeks · _locked_

- [ ] **Systolic array matrix-multiply unit** (the heart of a TPU) → NPU on FPGA
- [ ] **CUDA** — *Programming Massively Parallel Processors*; same matmul as a kernel
- [ ] **TinyTapeout + OpenLane/Sky130** → tape out a real chip (RTL → GDS)
- [ ] **Artifact:** fabricated chip + matched RTL/CUDA matmul repo (the NVIDIA story)

## L6 — RF / optical edge · parallel / after · _locked_

The differentiator: leverage the comms half of the degree. Pick one — high-speed SerDes,
an RF front-end, or silicon-photonics basics — and build/simulate one artifact.
- [ ] **Artifact:** one physical-layer project (the Apple-modem / startup-thesis story)

---

### Portfolio scorecard (the three that make you legible to all targets)
- [ ] A fabricated TinyTapeout chip
- [ ] RISC-V + accelerator repo with matched RTL **and** CUDA matmul
- [ ] One physical-layer (RF/optical/SerDes) project
