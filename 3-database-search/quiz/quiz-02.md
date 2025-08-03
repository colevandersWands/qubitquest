# Quiz 2: Oracle Function Purpose

In Grover's algorithm, what does the oracle do to the target state?

---

<details>
<summary><strong>A: Applies a phase flip (-1) to mark the target</strong></summary>

✔ Correct!

The oracle applies a phase flip to the target state: |target⟩ → -|target⟩

This negative phase distinguishes the target from other states, allowing the diffusion
operator to amplify its amplitude.

</details>

---

<details>
<summary><strong>B: Measures the target state</strong></summary>

✖ Nope.

Measurement would collapse the superposition and destroy the quantum advantage.

The oracle marks the target with a phase, maintaining superposition.

</details>

---

<details>
<summary><strong>C: Removes the target from superposition</strong></summary>

✖ Nope.

The oracle preserves superposition while marking the target with a phase flip.

All states remain in superposition throughout Grover's algorithm.

</details>

---

<details>
<summary><strong>D: Increases the target's amplitude directly</strong></summary>

✖ Nope.

The oracle only applies a phase flip. The diffusion operator (not the oracle) increases
the marked state's amplitude.

This two-step process is key to amplitude amplification.

</details>
