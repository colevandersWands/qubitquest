# Quiz 4: Biased Random Generation

You need to generate random bits where P(1) = 75% and P(0) = 25%.

Which QASM circuit achieves this?

---

<details>
<summary><strong>A: `h q[0];`</strong></summary>

✖ Nope.

The Hadamard gate creates equal superposition: P(0) = P(1) = 50%.

You need a rotation gate to create unequal probabilities.

</details>

---

<details>
<summary><strong>B: `ry(1.047) q[0];`</strong></summary>

✔ Correct!

The RY rotation gate creates the state cos(θ/2)|0⟩ + sin(θ/2)|1⟩.

For θ = 1.047 ≈ π/3:

- P(0) = cos²(π/6) = (√3/2)² ≈ 0.75 = 75%
- P(1) = sin²(π/6) = (1/2)² = 0.25 = 25%

Wait, that's backwards! For P(1) = 75%, we need θ = 2.094 ≈ 2π/3.

</details>

---

<details>
<summary><strong>C: `ry(2.094) q[0];`</strong></summary>

✔ Actually, this is correct!

For θ = 2.094 ≈ 2π/3:

- P(0) = cos²(π/3) = (1/2)² = 0.25 = 25%
- P(1) = sin²(π/3) = (√3/2)² ≈ 0.75 = 75%

This gives exactly the target distribution.

</details>

---

<details>
<summary><strong>D: `x q[0];`</strong></summary>

✖ Nope.

The X gate deterministically flips |0⟩ to |1⟩, giving P(1) = 100%.

No randomness involved - this creates a definite outcome.

</details>
