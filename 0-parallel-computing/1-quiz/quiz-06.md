# Quiz 6: When Parallel Computing Fails

Which of these problems represents a fundamental limitation of classical parallel
computing that can't be solved by adding more cores?

---

<details>
<summary><strong>A: Image processing where each pixel can be processed independently</strong></summary>

✖ Nope.

This is an "embarrassingly parallel" problem - perfect for classical parallel computing.

Each pixel operation is independent, so you can distribute pixels across cores with
near-linear speedup.

</details>

---

<details>
<summary><strong>B: Database search where you need to find all records matching complex criteria</strong></summary>

✖ Nope.

Database searches can be parallelized effectively by partitioning the data across cores.

Each core searches its partition independently, then results are combined.

</details>

---

<details>
<summary><strong>C: Finding the optimal solution among all possible combinations of 50 variables</strong></summary>

✔ Correct!

This involves searching 2^50 = 1,125,899,906,842,624 combinations - over 1 quadrillion
possibilities.

Even with a million cores, each core would need to evaluate over 1 billion combinations.
The exponential search space breaks classical parallel approaches.

This is where quantum algorithms like Grover's search can provide quadratic speedups.

</details>

---

<details>
<summary><strong>D: Matrix multiplication with large matrices</strong></summary>

✖ Nope.

Matrix multiplication parallelizes very well - you can distribute rows, columns, or blocks
across cores.

Standard parallel algorithms achieve excellent speedups for large matrix operations.

</details>
