# Quiz 3: Optimal Iterations

You're searching a database of 16 items using Grover's algorithm.

How many Grover iterations (oracle + diffusion) should you perform?

---

<details>
<summary><strong>A: 3 iterations</strong></summary>

✔ Correct!

Optimal iterations = π/4 × √N = π/4 × √16 = π/4 × 4 ≈ 3.14 ≈ 3

Three iterations maximize the probability of measuring the target state.

</details>

---

<details>
<summary><strong>B: 16 iterations</strong></summary>

✖ Nope.

This would be too many! Over-iterating actually decreases the target probability.

The optimal is π/4 × √16 = 3 iterations, not 16.

</details>

---

<details>
<summary><strong>C: 1 iteration</strong></summary>

✖ Nope.

One iteration isn't enough for 16 items. This would work for 4 items.

For 16 items: π/4 × √16 = 3 iterations optimal.

</details>

---

<details>
<summary><strong>D: 8 iterations</strong></summary>

✖ Nope.

This is √N/2, not the correct formula.

The optimal is π/4 × √N = 3 iterations for N=16.

</details>
