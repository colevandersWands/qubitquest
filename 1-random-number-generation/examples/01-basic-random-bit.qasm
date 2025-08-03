OPENQASM 2.0;
include "qelib1.inc";

// Example 1: Generate a single random bit
// This is the fundamental quantum random number generator
// Demonstrates: superposition creation and measurement collapse

qreg q[1];          // Single qubit quantum register
creg c[1];          // Single classical bit to store result

// Step 1: Initialize qubit to |0⟩ state (automatic)
// Step 2: Create perfect superposition |+⟩ = (|0⟩ + |1⟩)/√2
h q[0];

// Step 3: Measure the qubit - forces random collapse
// Result: 50% chance of 0, 50% chance of 1
measure q[0] -> c[0];

// When you run this circuit:
// - Each execution gives exactly one random bit
// - No pattern emerges across multiple runs
// - Impossible to predict the next result
// - True randomness from quantum measurement