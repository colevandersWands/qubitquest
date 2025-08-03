# Quiz 4: Eavesdropping Detection

Eve intercepts quantum bits between Alice and Bob, measures them, then forwards new qubits
based on her measurements to Bob.

Why does this reveal Eve's presence?

---

<details>
<summary><strong>A: Eve's measurements change the quantum states</strong></summary>

✔ Correct!

Quantum measurement irreversibly collapses superposition states. When Eve measures Alice's
qubits, she destroys the original quantum information.

Even if she prepares new qubits based on her results, these won't have the same quantum
properties as Alice's originals, causing detectable errors in Alice-Bob correlations.

</details>

---

<details>
<summary><strong>B: Eve doesn't know the correct measurement basis</strong></summary>

✖ This is true but not the fundamental reason.

Even if Eve knew the correct basis, her measurement would still collapse the quantum state
and disturb the protocol.

The fundamental issue is measurement disturbance, not basis knowledge.

</details>

---

<details>
<summary><strong>C: Eve's equipment introduces noise</strong></summary>

✖ Nope.

This isn't about technical noise or equipment imperfections. Even perfect quantum
measurements by Eve would disturb the protocol.

The disturbance comes from the fundamental physics of quantum measurement, not engineering
limitations.

</details>

---

<details>
<summary><strong>D: Eve can't perfectly copy quantum states</strong></summary>

✖ True but not the primary detection mechanism.

The no-cloning theorem is relevant, but detection works because measurement changes
states, not because copying is impossible.

Eve's measurement disturbance creates correlation errors that Alice and Bob can detect.

</details>
