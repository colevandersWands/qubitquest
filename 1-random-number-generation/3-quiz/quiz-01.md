# Quiz 1: Quantum Superposition Basics

A qubit is prepared using a Hadamard gate: `h q[0];`

What is the probability of measuring this qubit in the |1⟩ state?

---

<details>
<summary><strong>A: 50%</strong></summary>

✔ Correct!

The Hadamard gate creates the superposition state |+⟩ = (|0⟩ + |1⟩)/√2.

The probability of measuring |1⟩ is |⟨1|+⟩|² = |(1/√2)|² = 1/2 = 50%.

This is why the Hadamard gate is perfect for generating unbiased random bits.

</details>

---

<details>
<summary><strong>B: 100%</strong></summary>

✖ Nope.

This would be true if the qubit was prepared in the |1⟩ state deterministically.

The Hadamard gate creates equal superposition, not a definite state.

</details>

---

<details>
<summary><strong>C: 0%</strong></summary>

✖ Nope.

This would be true if the qubit remained in the |0⟩ state.

The Hadamard gate transforms |0⟩ into an equal superposition of |0⟩ and |1⟩.

</details>

---

<details>
<summary><strong>D: 25%</strong></summary>

✖ Nope.

This isn't how quantum probabilities work. The Hadamard creates equal amplitudes for both
|0⟩ and |1⟩.

Each outcome has probability = |amplitude|² = (1/√2)² = 1/2 = 50%.

</details>
