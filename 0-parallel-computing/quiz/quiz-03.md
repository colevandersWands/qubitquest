# Quiz 3: Exponential Search Space

You need to find the optimal portfolio allocation among 30 assets (each can be 0% or 100%
allocated).

A classical parallel approach with 1,000 cores would need to search through 2^30 =
1,073,741,824 possible portfolios.

How many portfolio evaluations does each core need to perform?

---

<details>
<summary><strong>A: 30,000 evaluations per core</strong></summary>

✖ Nope.

This looks like you divided 30 million by 1,000, but the search space is much larger.

With 30 binary choices (0% or 100% per asset), you have 2^30 = 1,073,741,824 total
combinations to evaluate.

</details>

---

<details>
<summary><strong>B: 1,073,741 evaluations per core</strong></summary>

✔ Correct!

Total combinations: 2^30 = 1,073,741,824 Evaluations per core: 1,073,741,824 ÷ 1,000 =
1,073,741

This demonstrates why exponential search spaces break classical parallel computing - even
with 1,000 cores, each core still has over 1 million evaluations to perform.

</details>

---

<details>
<summary><strong>C: 1,000 evaluations per core</strong></summary>

✖ Nope.

This would only work if there were 1,000,000 total combinations, but exponential growth is
much faster.

2^30 = 1,073,741,824 combinations, which is over 1,000 times larger than 1,000,000.

</details>

---

<details>
<summary><strong>D: The problem can't be parallelized</strong></summary>

✖ Nope.

The portfolio evaluations can be parallelized - each core can independently evaluate
different combinations.

The problem is that there are so many combinations that even perfect parallelization
doesn't help much.

</details>
