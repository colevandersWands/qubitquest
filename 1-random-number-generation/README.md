# Module 1: Quantum Random Number Generation

_"When pseudorandom isn't random enough" - True randomness from quantum measurement_

## The Hook: Your PRNG Crisis (10 minutes)

Your Monte Carlo risk models are failing regulatory audits. The issue? Your "random"
numbers aren't actually random - they're deterministic algorithm outputs that
sophisticated attackers can predict.

**The Stakes**: $50M in potential fines, lost client trust, and questions about your
entire quantitative infrastructure.

**Classical Problem**: All PRNGs are algorithms. Same seed → same sequence. Always.

**Quantum Solution**: True randomness from fundamental quantum measurement.

---

## Contrast: Classical vs Quantum Randomness (30 minutes)

**Classical PRNG**: Deterministic algorithm

```python
np.random.seed(42)  # Same seed → same sequence
random_number = np.random.random()  # Always 0.3745
```

**Quantum RNG**: True randomness from measurement

```qasm
OPENQASM 2.0;
include "qelib1.inc";

qreg q[1];
creg c[1];

h q[0];              // Create superposition: |0⟩ + |1⟩
measure q[0] -> c[0]; // Forces random choice: 0 or 1
```

**Key Difference**: Quantum outcomes are fundamentally unpredictable, not just
computationally difficult to predict.

---

## Concepts: Building Quantum Randomness (40 minutes)

You'll implement these quantum randomness patterns using three core gates:

### 1. Superposition with Hadamard Gates

```qasm
h q[0];  // Creates |+⟩ = (|0⟩ + |1⟩)/√2
```

**Result**: 50% chance of 0, 50% chance of 1

### 2. Biased Randomness with Rotation Gates

```qasm
ry(2.094) q[0];  // Creates 75% chance of 1, 25% chance of 0
```

**Key insight**: `ry(θ)` creates probabilities cos²(θ/2) and sin²(θ/2)

### 3. Multiple Independent Random Bits

```qasm
h q[0];
h q[1];
h q[2];
```

**Result**: 8 equally likely outcomes (000, 001, 010, 011, 100, 101, 110, 111)

### 4. Conditional Randomness with CNOT

```qasm
h q[0];
cnot q[0], q[1];
```

**Result**: Correlated outcomes - if q[0]=0 then q[1]=0, if q[0]=1 then q[1]=1

**Professional Insight**: Classical PRNGs are deterministic algorithms. Quantum
measurement creates true randomness that's impossible to predict.

---

## Reality Check: When Quantum RNG Makes Business Sense (15 minutes)

**Current Reality (2024)**:

- **Quantum RNG hardware**: $15K-50K, 1-16 Mbit/s
- **Classical PRNG software**: $0, 1 Gbit/s
- **Cost difference**: 100-1000x more expensive

**When Quantum RNG is worth it**:

- ✓ Regulatory compliance (provably unbiased sampling)
- ✓ Cryptographic keys (information-theoretic security)
- ✓ Legal liability (demonstrable randomness quality)

**When Classical PRNG is still better**:

- ✓ High-throughput applications (speed matters)
- ✓ Reproducible research (deterministic debugging)
- ✓ Cost-sensitive applications (most software)

**Professional Decision**: Can you justify 100x cost increase for true randomness?

## What You'll Learn

**Technical Skills**:

- Implement quantum random bit generators using `h`, `ry`, `cnot`, `measure`
- Create uniform and biased probability distributions
- Generate independent and correlated random variables
- Debug quantum circuits with missing gates and incorrect measurements

**Professional Capabilities**:

- Distinguish between algorithmic pseudorandomness and quantum true randomness
- Evaluate when quantum RNG advantages justify costs
- Communicate quantum concepts to technical and business stakeholders
- Make informed technology adoption decisions for real applications

**Key Insight**: Quantum computing's advantage isn't speed - it's doing things that are
fundamentally impossible classically. True randomness is the first example of this
principle.
