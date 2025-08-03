OPENQASM 2.0;
include "qelib1.inc";

// Example 4: Generate biased random bits (75% chance of 1, 25% chance of 0)
// Demonstrates: arbitrary probability distributions using rotation gates
// Key insight: Hadamard gives 50/50, RY gate gives arbitrary probabilities

qreg q[1];          // Single qubit quantum register
creg c[1];          // Single classical bit to store result

// Create biased superposition using RY rotation gate
// RY(θ) rotates qubit by angle θ around Y-axis
// For 75% probability of |1⟩: θ = 2*arccos(√0.25) ≈ 2.094 radians
ry(2.094) q[0];

// Alternative approach using more common angles:
// RY(π/3) gives ~75% chance of |1⟩, ~25% chance of |0⟩
// ry(1.047) q[0];

// Measure the biased qubit
measure q[0] -> c[0];

// Mathematical explanation:
// RY(θ) creates state: cos(θ/2)|0⟩ + sin(θ/2)|1⟩
// For θ = 2.094:
//   P(0) = cos²(1.047) ≈ 0.25 = 25%
//   P(1) = sin²(1.047) ≈ 0.75 = 75%

// This technique enables any probability distribution (0% to 100%)
// Classical PRNGs require rejection sampling for arbitrary probabilities
// Quantum approach generates biased randomness directly