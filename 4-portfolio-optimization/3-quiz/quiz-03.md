# Quiz 3: Hybrid Quantum-Classical Optimization

Why does QAOA use a classical optimizer to tune the quantum circuit parameters?

---

<details>
<summary><strong>A: Classical computers are faster at parameter optimization</strong></summary>

✔ Correct!

Classical optimizers excel at gradient-based parameter tuning. The quantum circuit
evaluates the cost function, but classical methods efficiently search the parameter space.

This hybrid approach leverages each system's strengths: quantum parallel evaluation +
classical parameter optimization.

</details>

---

<details>
<summary><strong>B: Quantum computers can't do optimization</strong></summary>

✖ Nope.

Quantum computers can do optimization, but the parameter optimization problem is better
suited to classical methods.

The quantum part handles the combinatorial solution space; classical handles the
continuous parameter space.

</details>

---

<details>
<summary><strong>C: It's a temporary limitation of current hardware</strong></summary>

✖ Nope.

Hybrid quantum-classical is a fundamental algorithmic design choice, not a hardware
limitation.

Even perfect quantum computers would benefit from classical parameter optimization for
efficiency.

</details>

---

<details>
<summary><strong>D: Classical optimization is more accurate</strong></summary>

✖ Wrong focus.

It's not about accuracy but efficiency. Classical optimizers can efficiently navigate the
continuous parameter space while quantum circuits efficiently evaluate discrete solution
quality.

</details>
