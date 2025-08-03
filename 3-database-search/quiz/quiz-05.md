# Quiz 5: Quantum Search Business Application

Your cybersecurity firm needs to crack 256-bit encryption keys by searching all
possibilities.

Is this a good use case for Grover's algorithm?

---

<details>
<summary><strong>A: No - still requires 2^128 operations, impractical</strong></summary>

✔ Correct!

Even with Grover's quadratic speedup:

- Classical: 2^256 operations
- Quantum: 2^128 operations

2^128 ≈ 10^38 operations is still completely impractical, even for quantum computers.

This is why we need larger key sizes in the quantum era.

</details>

---

<details>
<summary><strong>B: Yes - reduces to only 256 operations</strong></summary>

✖ Nope.

Grover's provides square root speedup, not exponential.

√(2^256) = 2^128, not 256. Still impossibly large!

</details>

---

<details>
<summary><strong>C: Yes - quantum can break any encryption</strong></summary>

✖ Nope.

Grover's "only" provides quadratic speedup. For 256-bit keys, this still leaves 2^128
operations.

This is why symmetric encryption remains quantum-resistant with larger keys.

</details>

---

<details>
<summary><strong>D: No - Grover's only works on databases</strong></summary>

✖ Wrong reason.

Grover's can search any problem space, including encryption keys.

The issue is that 2^128 operations is still impractical, not that it doesn't apply.

</details>
