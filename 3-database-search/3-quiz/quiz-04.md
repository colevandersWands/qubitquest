# Quiz 4: Classical vs Quantum Database Search

Your company has a customer database with excellent indexing (B-tree). You need to find
specific customers by ID.

Should you use quantum search?

---

<details>
<summary><strong>A: No - indexed search O(log N) beats Grover's O(√N)</strong></summary>

✔ Correct!

Indexed databases use tree structures for O(log N) search complexity.

For 1 billion items:

- Indexed: log₂(10⁹) ≈ 30 operations
- Grover's: √(10⁹) ≈ 31,623 operations

Classical indexed search is much faster!

</details>

---

<details>
<summary><strong>B: Yes - quantum is always faster</strong></summary>

✖ Nope.

Quantum search only helps for unstructured data. Well-indexed databases have O(log N)
complexity, which beats Grover's O(√N).

Quantum isn't universally faster - it depends on the problem structure.

</details>

---

<details>
<summary><strong>C: Yes - quadratic speedup is significant</strong></summary>

✖ Nope.

Quadratic speedup only applies vs linear search O(N).

But indexed databases already achieve O(log N), which is exponentially better than O(√N).

</details>

---

<details>
<summary><strong>D: Depends on database size</strong></summary>

✖ Not really.

For any practical database size, O(log N) indexed search beats O(√N) Grover's search.

The structure (indexed vs unstructured) matters more than size.

</details>
