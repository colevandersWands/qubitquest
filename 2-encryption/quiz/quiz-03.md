# Quiz 3: BB84 Protocol Analysis

In BB84 quantum key distribution, Alice sends bits using random bases. Bob measures using
random bases. They find their bases matched 50% of the time.

What happens to the remaining 50% where bases didn't match?

---

<details>
<summary><strong>A: They generate random shared bits anyway</strong></summary>

✖ Nope.

When Alice and Bob use different measurement bases, their results are uncorrelated
(random).

These mismatched measurements can't be used for key generation since there's no shared
information.

</details>

---

<details>
<summary><strong>B: They discard these bits publicly</strong></summary>

✔ Correct!

Alice and Bob publicly compare their basis choices (not the measurement results) and
discard all bits where they used different bases.

Only the correlated measurements from matching bases become their shared secret key. This
is why BB84 has 50% efficiency.

</details>

---

<details>
<summary><strong>C: They use them to detect eavesdropping</strong></summary>

✖ Partially correct concept, wrong application.

Eavesdropping detection uses a subset of the matching-basis bits, not the mismatched-basis
bits.

Mismatched measurements are simply discarded as they provide no usable correlation.

</details>

---

<details>
<summary><strong>D: They try to correct the errors computationally</strong></summary>

✖ Nope.

This isn't about errors - it's about fundamental quantum mechanics. Different basis
measurements give truly random, uncorrelated results.

No amount of computation can extract shared information from uncorrelated random data.

</details>
