OPENQASM 2.0;
include "qelib1.inc";

// Example 3: Complete Grover's algorithm (2 qubits)
// Optimal number of iterations for 4-item search

qreg q[2];
creg c[2];

// Initialize equal superposition
h q[0];
h q[1];

// Grover iteration (repeat π/4 * √N times ≈ 1 for N=4)
// Oracle
cz q[0], q[1];

// Diffusion operator
h q[0];
h q[1];
z q[0];
z q[1];
cz q[0], q[1];
h q[0];
h q[1];

measure q[0] -> c[0];
measure q[1] -> c[1];

// ~100% probability of measuring target |11⟩