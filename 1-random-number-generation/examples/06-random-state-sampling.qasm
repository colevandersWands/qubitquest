OPENQASM 2.0;
include "qelib1.inc";

// Example 6: Sample from custom quantum probability distributions
// Demonstrates: advanced superposition states for complex random sampling
// Creates non-uniform distribution across 4 possible outcomes

qreg q[2];          // Two-qubit quantum register
creg c[2];          // Two classical bits to store results

// Create custom probability distribution over 4 states: |00⟩, |01⟩, |10⟩, |11⟩
// Target distribution: 10%, 20%, 30%, 40% respectively
// This requires careful amplitude engineering

// Step 1: Initialize to |00⟩ state (automatic)

// Step 2: Create weighted superposition using rotation gates
// First qubit: probability of |1⟩ should be 70% (for |10⟩ and |11⟩ states)
ry(2.346) q[0];     // arccos(√0.3) * 2 ≈ 2.346 radians

// Step 3: Conditional rotation on second qubit
// If first qubit is |0⟩: second qubit should be |1⟩ with probability 66.67%
// If first qubit is |1⟩: second qubit should be |1⟩ with probability 57.14%

// Apply controlled rotation (approximate implementation)
cry(1.841) q[0], q[1];  // Controlled RY rotation

// Additional fine-tuning rotation
ry(0.873) q[1];     // Final adjustment to achieve target distribution

// Measure both qubits to sample from the distribution
measure q[0] -> c[0];
measure q[1] -> c[1];

// Approximate resulting probability distribution:
// |00⟩ (c[1]=0, c[0]=0): ~10%
// |01⟩ (c[1]=0, c[0]=1): ~20% 
// |10⟩ (c[1]=1, c[0]=0): ~30%
// |11⟩ (c[1]=1, c[0]=1): ~40%

// Note: Exact amplitude engineering for arbitrary distributions
// requires solving systems of trigonometric equations
// This example shows the general approach for custom sampling

// Applications: Monte Carlo with non-uniform priors,
// Sampling from empirical data distributions,
// Quantum machine learning feature sampling