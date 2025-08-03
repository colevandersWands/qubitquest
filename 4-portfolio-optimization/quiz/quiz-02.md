# Quiz 2: QAOA Circuit Components

In a QAOA circuit, what is the purpose of the mixer operator?

---

<details>
<summary><strong>A: Measures the final solution</strong></summary>

✖ Nope.

Measurement happens at the end of the circuit. The mixer operator works during the quantum
computation to enable transitions between different solutions.

</details>

---

<details>
<summary><strong>B: Enables transitions between different solutions</strong></summary>

✔ Correct!

The mixer operator (typically RY rotations) allows the quantum state to explore different
solution candidates.

Without mixing, the algorithm would get stuck in the initial superposition and couldn't
evolve toward better solutions. The mixer enables quantum "moves" through the solution
space.

</details>

---

<details>
<summary><strong>C: Encodes the optimization objective</strong></summary>

✖ Nope.

The cost function (not mixer) encodes the optimization objective through phase operations.

The mixer's job is exploration, while the cost function provides guidance toward better
solutions.

</details>

---

<details>
<summary><strong>D: Creates initial superposition</strong></summary>

✖ Nope.

Hadamard gates create the initial equal superposition over all possible solutions.

The mixer operates during the optimization layers to enable solution transitions.

</details>
