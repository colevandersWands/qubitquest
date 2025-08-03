# Quiz 5: Memory Wall Problem

Your machine learning model training shows these characteristics:

- CPU utilization: 15%
- Memory bandwidth utilization: 95%
- Current training time: 10 hours

You add more CPU cores to the same machine. What happens to training time?

---

<details>
<summary><strong>A: Training time decreases proportionally to added cores</strong></summary>

✖ Nope.

The CPU is only 15% utilized, meaning it's spending 85% of its time waiting for memory.

Adding more CPU cores means more cores waiting for the same slow memory system. The memory
bandwidth bottleneck won't be solved by more CPUs.

</details>

---

<details>
<summary><strong>B: Training time stays approximately the same</strong></summary>

✔ Correct!

The memory bandwidth is already 95% saturated while CPU is only 15% utilized. This is the
classic "memory wall" problem.

More CPU cores will just create more workers waiting for the same slow memory system. The
training is memory-bound, not CPU-bound.

</details>

---

<details>
<summary><strong>C: Training time increases due to contention</strong></summary>

✖ Nope.

While memory contention can be an issue, the primary problem here is that memory bandwidth
is already the bottleneck.

More cores won't significantly increase contention since the memory system is already
saturated.

</details>

---

<details>
<summary><strong>D: Need more information to determine the effect</strong></summary>

✖ Nope.

The utilization numbers tell us everything we need to know: 95% memory utilization vs 15%
CPU utilization clearly indicates a memory-bound system.

Adding more CPU cores to a memory-bound system won't improve performance.

</details>
