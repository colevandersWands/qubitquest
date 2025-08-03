# Quiz 1: QAOA vs Classical Optimization

Your portfolio optimization problem has 200 assets with complex constraints. Classical
solvers take 4 hours. QAOA takes 30 minutes but finds approximate solutions.

When is QAOA the better choice?

---

<details>
<summary><strong>A: When you need exact optimal solutions</strong></summary>

✖ Nope.

QAOA provides approximate solutions, not exact optimal ones. If you need mathematically
proven optimal portfolios, classical exact methods are required.

QAOA's advantage is speed for "good enough" solutions.

</details>

---

<details>
<summary><strong>B: When speed matters more than perfection</strong></summary>

✔ Correct!

QAOA finds good approximate solutions quickly while classical methods take hours for exact
solutions.

In fast-moving markets, a 95% optimal portfolio in 30 minutes often beats a 100% optimal
portfolio in 4 hours.

Time-sensitive trading decisions favor approximate speed over exact precision.

</details>

---

<details>
<summary><strong>C: When the problem has few constraints</strong></summary>

✖ Nope.

Simple, lightly constrained problems are often solved efficiently by classical methods.

QAOA's advantage emerges with complex, highly constrained problems where classical methods
struggle.

</details>

---

<details>
<summary><strong>D: QAOA is always better than classical</strong></summary>

✖ Nope.

Classical optimization has decades of development and specialized algorithms. QAOA helps
with specific problem types but isn't universally superior.

The choice depends on problem structure, time constraints, and solution quality
requirements.

</details>
