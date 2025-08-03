# Quiz 1: Bell State Correlations

You create a Bell state using:

```qasm
h q[0];
cnot q[0], q[1];
```

If you measure q[0] and get result 1, what will q[1] definitely be?

---

<details>
<summary><strong>A: 1</strong></summary>

✔ Correct!

The Bell state |Φ+⟩ = (|00⟩ + |11⟩)/√2 creates perfect correlation.

If q[0] measures as 1, the system must be in state |11⟩, so q[1] is definitely 1.

This "spooky action at a distance" correlation is what enables quantum cryptography.

</details>

---

<details>
<summary><strong>B: 0</strong></summary>

✖ Nope.

This would be true for anti-correlated Bell states like |Ψ+⟩ = (|01⟩ + |10⟩)/√2.

But H + CNOT creates |Φ+⟩ where both qubits always have the same value.

</details>

---

<details>
<summary><strong>C: Random (50/50)</strong></summary>

✖ Nope.

This would be true if the qubits were unentangled or if you measured them in different
bases.

But entangled qubits in the same basis show perfect correlation, not randomness.

</details>

---

<details>
<summary><strong>D: Cannot determine without more information</strong></summary>

✖ Nope.

Quantum entanglement creates definite correlations. Once you measure q[0], you know q[1]
with 100% certainty.

This deterministic correlation despite quantum randomness is what makes entanglement
special.

</details>
