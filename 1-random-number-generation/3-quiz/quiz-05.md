# Quiz 5: Business Decision Analysis

Your fintech startup needs random numbers for cryptographic key generation. You're
comparing options:

- Classical PRNG: $0 setup, 1 billion numbers/second
- Quantum RNG: $50K setup, 1 million numbers/second

You need 100,000 keys per day. Which approach makes business sense?

---

<details>
<summary><strong>A: Classical PRNG - it's free and faster</strong></summary>

✖ Depends on your threat model.

For cryptographic keys, security matters more than speed or cost. Classical PRNGs are
predictable if the internal state is compromised.

Your 100K keys/day requirement is easily met by either option.

</details>

---

<details>
<summary><strong>B: Quantum RNG - you need information-theoretic security</strong></summary>

✔ Probably correct for crypto keys.

Cryptographic security depends on unpredictable randomness. Classical PRNGs are
deterministic - if an attacker reconstructs the internal state, all future keys are
predictable.

Quantum RNGs provide true randomness that's impossible to predict even with complete
system knowledge.

The $50K cost and slower speed are justified by the security advantage for crypto
applications.

</details>

---

<details>
<summary><strong>C: Use classical PRNG and change seeds frequently</strong></summary>

✖ This doesn't solve the fundamental problem.

Even with frequent re-seeding, classical PRNGs remain algorithmically deterministic. The
randomness quality still depends on the seed source.

For crypto keys, you want provably unpredictable randomness, not just computationally
difficult to predict.

</details>

---

<details>
<summary><strong>D: Quantum RNG is overkill - just use /dev/urandom</strong></summary>

✖ Maybe, but /dev/urandom has limitations.

/dev/urandom pools entropy from system events, which can be predictable in certain
environments (VMs, embedded systems).

For production crypto key generation, quantum RNG provides higher assurance of true
randomness.

</details>
