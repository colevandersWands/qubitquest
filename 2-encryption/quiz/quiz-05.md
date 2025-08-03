# Quiz 5: Business Implementation Decision

Your bank wants quantum-secure communication between data centers. The quantum key
distribution system costs $2M per link and works up to 100km. You have 5 data centers in a
200km radius.

What's the most practical implementation strategy?

---

<details>
<summary><strong>A: Direct QKD links between all data centers</strong></summary>

✖ Impractical.

This would require 10 links (5 choose 2), costing $20M total. Some links exceed the 100km
range limit.

The distance and cost constraints make this approach unfeasible.

</details>

---

<details>
<summary><strong>B: Hub-and-spoke QKD with one central quantum relay</strong></summary>

✔ Most practical.

Place a quantum relay station centrally to stay within 100km of all data centers. This
requires only 5 QKD links ($10M total) and creates a trusted node architecture.

While not end-to-end quantum security, it's a practical compromise between cost, distance
constraints, and security improvement.

</details>

---

<details>
<summary><strong>C: Classical encryption only - QKD is too expensive</strong></summary>

✖ Ignores the business requirement.

The bank has decided quantum security is needed, likely due to regulatory requirements or
threat assessment.

The question asks for implementation strategy, not whether to implement.

</details>

---

<details>
<summary><strong>D: Wait for better quantum technology</strong></summary>

✖ Poor business strategy.

Banks need security now, not in the future. Regulatory and competitive pressures require
immediate implementation.

A practical solution today beats a perfect solution tomorrow.

</details>
