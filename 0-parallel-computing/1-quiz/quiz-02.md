# Quiz 2: Communication Overhead

You're running distributed matrix multiplication across a cluster. Each node takes 100ms
to compute its portion, but nodes need to exchange 50MB of intermediate results over a
1Gbps network.

Network transfer time: 50MB × 8 bits/byte ÷ 1Gbps = 400ms

What happens to performance as you add more nodes?

---

<details>
<summary><strong>A: Performance improves linearly with more nodes</strong></summary>

✖ Nope.

This ignores the communication overhead. Each node still needs 400ms to transfer data,
regardless of how fast it computes.

Total time per iteration = max(compute time, communication time) = max(100ms, 400ms) =
400ms

Adding more nodes doesn't reduce the communication bottleneck.

</details>

---

<details>
<summary><strong>B: Performance gets worse with more nodes</strong></summary>

✔ Correct!

More nodes means more communication paths. With N nodes, you have N(N-1)/2 potential
communication channels, creating network congestion.

The 400ms communication time becomes even longer as network bandwidth gets saturated by
more simultaneous transfers.

This is why distributed computing can sometimes be slower than single-machine solutions.

</details>

---

<details>
<summary><strong>C: Performance stays constant regardless of node count</strong></summary>

✖ Nope.

While the communication bottleneck does limit speedup, adding more nodes actually makes
things worse due to increased network congestion.

Each additional node adds more communication overhead without reducing the fundamental
bottleneck.

</details>

---

<details>
<summary><strong>D: Performance improves until network saturation, then stays constant</strong></summary>

✖ Nope.

The network is already the bottleneck from the start (400ms communication vs 100ms
computation).

Adding nodes immediately makes communication worse, not better, due to increased
coordination overhead.

</details>
