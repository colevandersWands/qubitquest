# Module 4: Portfolio Optimization at Scale

_"When classical optimization hits complexity walls" - Quantum approximate optimization
for constrained problems_

## The Hook: Your Optimizer Can't Scale (10 minutes)

Your hedge fund manages 500 assets with complex constraints: risk limits, sector
diversification, ESG requirements, and regulatory capital rules. Classical optimizers take
6 hours to find solutions, missing market opportunities.

**The Stakes**: $50M in lost alpha per year from stale portfolio allocations.

**Classical Problem**: Combinatorial optimization with 2^500 possible portfolios -
exponentially hard.

**Quantum Solution**: QAOA finds approximate solutions by exploring multiple possibilities
simultaneously.

---

## Contrast: Classical vs Quantum Optimization (25 minutes)

**Classical Approach**: Sequential search through solution space

```
Portfolio options: 2^500 combinations
Solver: Branch-and-bound, simulated annealing
Time: Hours for acceptable solutions
```

**Quantum Approach**: Parallel exploration with guided evolution

```qasm
// QAOA explores many solutions simultaneously
h q[0]; h q[1]; h q[2];  // All portfolios in superposition
// Cost function guides toward better solutions
// Mixer enables transitions between allocations
```

**Key Difference**: Quantum algorithms can find good approximate solutions faster than
exact classical methods.

---

## Concepts: Building Quantum Optimization (35 minutes)

You'll implement QAOA (Quantum Approximate Optimization Algorithm):

### 1. Solution Superposition

```qasm
h q[0];  // Asset A: hold or not
h q[1];  // Asset B: hold or not
```

### 2. Cost Function Encoding

```qasm
cz q[0], q[1];  // Penalize both assets (correlation risk)
```

### 3. Mixer Operations

```qasm
ry(angle) q[0];  // Enable solution transitions
```

### 4. Hybrid Classical Loop

- Quantum circuit evaluates cost
- Classical optimizer adjusts parameters
- Repeat until convergence

**Professional Insight**: QAOA provides approximate solutions to NP-hard problems in
polynomial time.

---

## Reality Check: When Quantum Optimization Helps (15 minutes)

**Current Reality (2024)**:

- **Problem size**: ~100 variables maximum on current hardware
- **Classical alternatives**: Powerful heuristics, GPUs, specialized solvers
- **Quantum advantage**: Requires >1000 variables with complex constraints

**When Quantum Optimization is worth it**:

- ✓ Large combinatorial problems (>1000 variables)
- ✓ Complex constraint interactions
- ✓ Time-sensitive optimization (seconds not hours)
- ✓ Portfolio problems classical methods struggle with

**When Classical Optimization is still better**:

- ✓ Small to medium problems (<100 variables)
- ✓ Well-structured problems with efficient algorithms
- ✓ Exact solutions required (not approximations)
- ✓ Existing optimized classical infrastructure

**Professional Decision**: Do you have a large, constrained optimization problem where
good approximate solutions beat slow exact ones?

## What You'll Learn

**Technical Skills**:

- Build QAOA circuits using H, RY, CZ gates
- Encode optimization objectives as cost functions
- Design mixer operations for solution exploration
- Implement hybrid quantum-classical optimization loops

**Professional Capabilities**:

- Identify when approximate quantum solutions beat exact classical ones
- Design hybrid optimization architectures
- Evaluate quantum vs classical optimization trade-offs
- Assess problem structure for quantum advantage potential

**Key Insight**: Quantum computing's fourth advantage is approximate optimization for
large, constrained problems where classical methods are too slow.
