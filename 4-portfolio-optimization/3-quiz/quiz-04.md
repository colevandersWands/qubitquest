# Quiz 4: Problem Size and Quantum Advantage

Your optimization problem has 50 variables. Should you use quantum optimization?

---

<details>
<summary><strong>A: Yes - quantum is always better for optimization</strong></summary>

✖ Nope.

Quantum optimization requires significant overhead and works best for large, complex
problems. For 50 variables, classical methods are likely faster and more practical.

</details>

---

<details>
<summary><strong>B: No - classical methods work well for this size</strong></summary>

✔ Correct!

Current quantum hardware handles ~100 variables maximum, but classical optimization is
highly efficient for 50-variable problems.

Quantum advantage typically emerges for 1000+ variables with complex constraints where
classical methods become prohibitively slow.

</details>

---

<details>
<summary><strong>C: Only if you have quantum hardware available</strong></summary>

✖ Wrong reasoning.

Hardware availability doesn't determine when quantum is advantageous. For 50 variables,
classical optimization would be faster even with quantum hardware access.

</details>

---

<details>
<summary><strong>D: Depends on the type of constraints</strong></summary>

✖ Partially correct but misses the key point.

While constraint complexity matters, 50 variables is generally too small to justify
quantum optimization regardless of constraint structure.

</details>
