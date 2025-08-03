# Quiz 1: Amdahl's Law in Practice

Your data pipeline processes 1 million records. Through profiling, you discover:

- 20% of the time is spent in sequential setup and teardown
- 80% of the time is spent in parallel processing

You have access to unlimited cores. What's the maximum possible speedup?

---

<details>
<summary><strong>A: 5x speedup</strong></summary>

✔ Correct!

Using Amdahl's Law: Maximum speedup = 1 / (Sequential portion + Parallel portion / Cores)

With unlimited cores: 1 / (0.20 + 0.80 / ∞) = 1 / 0.20 = 5x

The 20% sequential portion becomes the bottleneck, limiting your speedup no matter how
many cores you add.

</details>

---

<details>
<summary><strong>B: Unlimited speedup</strong></summary>

✖ Nope.

This ignores Amdahl's Law. Even with infinite cores, the sequential portions (setup and
teardown) still take time.

The sequential 20% becomes your bottleneck - you can't parallelize what must happen in
order.

</details>

---

<details>
<summary><strong>C: 4x speedup</strong></summary>

✖ Nope.

This looks like you divided 80% by 20%, but that's not how Amdahl's Law works.

The sequential portion limits your maximum speedup to 1 / (sequential fraction) = 1 / 0.20
= 5x.

</details>

---

<details>
<summary><strong>D: No speedup possible</strong></summary>

✖ Nope.

Parallel processing definitely helps! The 80% parallel portion can be sped up
significantly.

The limitation is that you can't get more than 5x total speedup due to the 20% sequential
bottleneck.

</details>
