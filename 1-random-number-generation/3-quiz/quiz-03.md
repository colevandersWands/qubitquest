# Quiz 3: Quantum Circuit Analysis

Consider this QASM circuit:

```qasm
h q[0];
h q[1];
h q[2];
measure q -> c;
```

How many different possible measurement outcomes exist?

---

<details>
<summary><strong>A: 3 outcomes</strong></summary>

✖ Nope.

This counts the number of qubits, not the number of possible measurement outcomes.

Each qubit can be 0 or 1, so we need to count all combinations.

</details>

---

<details>
<summary><strong>B: 6 outcomes</strong></summary>

✖ Nope.

This looks like 3 qubits × 2 states, but that's not how to count quantum measurement
outcomes.

Think about all possible binary combinations of 3 bits.

</details>

---

<details>
<summary><strong>C: 8 outcomes</strong></summary>

✔ Correct!

Three independent qubits in superposition create 2³ = 8 possible measurement outcomes:
000, 001, 010, 011, 100, 101, 110, 111

Each outcome has equal probability (1/8 = 12.5%) because each qubit is in equal
superposition.

</details>

---

<details>
<summary><strong>D: Infinite outcomes</strong></summary>

✖ Nope.

Quantum measurement always produces discrete classical outcomes. With 3 qubits, you get 3
classical bits.

Classical bits can only be 0 or 1, giving finite combinations.

</details>
