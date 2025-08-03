# Quiz 2: Classical vs Quantum Randomness

Your compliance team needs to generate 1 million random numbers for regulatory Monte Carlo
simulations. They're comparing classical PRNGs vs quantum RNGs.

Which statement about predictability is correct?

---

<details>
<summary><strong>A: Both classical and quantum RNGs are equally unpredictable</strong></summary>

✖ Nope.

Classical PRNGs are deterministic algorithms. Given the seed and algorithm, all future
outputs are mathematically determined.

Quantum RNGs derive randomness from fundamental quantum measurement, which is truly
unpredictable.

</details>

---

<details>
<summary><strong>B: Classical PRNGs are unpredictable if you use a good algorithm</strong></summary>

✖ Nope.

Even the best classical PRNGs (like Mersenne Twister) are mathematically deterministic.
With enough output samples, the internal state can be reconstructed.

"Good" means statistically random, not truly unpredictable.

</details>

---

<details>
<summary><strong>C: Quantum RNGs are fundamentally unpredictable, classical PRNGs are deterministic</strong></summary>

✔ Correct!

Classical PRNGs are algorithms: same seed → same sequence (deterministic).

Quantum RNGs use quantum measurement where outcomes are fundamentally random - impossible
to predict even with complete knowledge of the system.

This is why quantum RNGs provide information-theoretic security for regulatory compliance.

</details>

---

<details>
<summary><strong>D: Quantum RNGs are just faster classical PRNGs</strong></summary>

✖ Nope.

Speed isn't the advantage. Current quantum RNGs are actually slower than classical PRNGs.

The advantage is true randomness vs algorithmic pseudorandomness - quantum outcomes are
unpredictable by physics, not just computational difficulty.

</details>
