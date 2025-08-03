# Quiz 4: Professional Scenario - Real-Time Risk Assessment

Your financial firm needs real-time risk assessment for trading decisions. Current system:

- Monte Carlo simulation with 1 million scenarios
- 1,000-core cluster processes 1,000 scenarios per core
- Total time: 5 minutes
- Business requirement: Results in under 1 second

How many cores would you need to meet the business requirement using the same approach?

---

<details>
<summary><strong>A: 5,000 cores</strong></summary>

✖ Nope.

This assumes linear scaling, but you need to speed up by 300x (5 minutes to 1 second).

300 seconds ÷ 1 second = 300x speedup needed Current cores × speedup factor = 1,000 × 300
= 300,000 cores needed

</details>

---

<details>
<summary><strong>B: 300,000 cores</strong></summary>

✔ Correct!

Current time: 5 minutes = 300 seconds Target time: 1 second Speedup needed: 300x

If the computation scales linearly with cores: 1,000 cores × 300 = 300,000 cores

This illustrates why some problems need fundamentally different approaches (like quantum
computing) rather than just more classical parallel processing.

</details>

---

<details>
<summary><strong>C: 1,000,000 cores</strong></summary>

✖ Nope.

This is the number of scenarios, not the cores needed.

You need 300x speedup, so 1,000 current cores × 300 = 300,000 cores would be required.

</details>

---

<details>
<summary><strong>D: Impossible with any number of cores</strong></summary>

✖ Nope.

While 300,000 cores would be extremely expensive and impractical, it's theoretically
possible if the problem scales linearly.

The real issue is that this would cost millions of dollars per hour and highlights why
alternative approaches (like quantum computing) are needed.

</details>
