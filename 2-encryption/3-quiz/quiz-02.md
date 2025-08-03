# Quiz 2: Quantum vs Classical Security

Your company needs ultra-secure communication for 30-year confidential data. You're
comparing options:

- Classical AES-256: $0.001 per message, relies on computational difficulty
- Quantum key distribution: $100 per message, relies on physics

Which approach provides stronger long-term security?

---

<details>
<summary><strong>A: AES-256 - it's mathematically proven secure</strong></summary>

✖ Nope.

AES-256 security relies on computational difficulty, not mathematical proof. Future
quantum computers could break it using Grover's algorithm.

For 30-year confidentiality, you need security that doesn't depend on current technology
limitations.

</details>

---

<details>
<summary><strong>B: Quantum cryptography - it's protected by physics laws</strong></summary>

✔ Correct!

Quantum key distribution provides information-theoretic security based on fundamental
physics.

Even with infinite computational power, eavesdropping disturbs quantum states and is
detectable. This security won't degrade with technological advances.

For 30-year secrets, physics-based security is more reliable than computation-based
security.

</details>

---

<details>
<summary><strong>C: Both provide equivalent security</strong></summary>

✖ Nope.

While both are secure today, they have different threat models. AES-256 could be broken by
sufficiently advanced quantum computers.

Quantum cryptography security doesn't depend on computational limitations.

</details>

---

<details>
<summary><strong>D: AES-256 is better due to cost efficiency</strong></summary>

✖ This addresses cost, not security strength.

For ultra-sensitive 30-year secrets, the security advantage may justify the 100,000x cost
difference.

The question asks about security strength, not cost-effectiveness.

</details>
