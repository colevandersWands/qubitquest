# Quiz 1: Grover's Algorithm Speedup

You need to search an unstructured database of 1 million items.

How many operations does Grover's algorithm require compared to classical search?

---

<details>
<summary><strong>A: 1,000 operations (quantum) vs 1,000,000 (classical)</strong></summary>

✔ Correct!

Grover's algorithm requires O(√N) operations.

- Classical: O(N) = 1,000,000 operations average
- Quantum: O(√N) = √1,000,000 = 1,000 operations

This quadratic speedup is the key advantage of quantum search.

</details>

---

<details>
<summary><strong>B: 20 operations (quantum) vs 1,000,000 (classical)</strong></summary>

✖ Nope.

This would be exponential speedup (log N), which Grover's doesn't provide.

Grover's gives quadratic speedup: √N, not log N.

</details>

---

<details>
<summary><strong>C: Same number of operations</strong></summary>

✖ Nope.

Grover's algorithm provides proven quadratic speedup over classical unstructured search.

The speedup is exactly √N vs N operations.

</details>

---

<details>
<summary><strong>D: 500,000 operations (quantum) vs 1,000,000 (classical)</strong></summary>

✖ Nope.

This would only be a 2x speedup. Grover's provides much better - quadratic speedup.

For 1M items: 1,000 quantum operations vs 1,000,000 classical.

</details>
