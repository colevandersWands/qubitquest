OPENQASM 2.0;
include "qelib1.inc";

// Example 4: Grover's on 3 qubits (8 items)
// Search for item |101⟩ (target = 5)

qreg q[3];
creg c[3];

// Initialize superposition over 8 items
h q[0];
h q[1];
h q[2];

// Grover iterations (π/4 * √8 ≈ 2 iterations optimal)
// Iteration 1
// Oracle: mark |101⟩
z q[0];
cz q[0], q[2];
z q[0];

// Diffusion
h q[0];
h q[1];
h q[2];
z q[0];
z q[1];
z q[2];
h q[0];
h q[1];
h q[2];

// Iteration 2 (repeat oracle + diffusion)
z q[0];
cz q[0], q[2];
z q[0];

h q[0];
h q[1];
h q[2];
z q[0];
z q[1];
z q[2];
h q[0];
h q[1];
h q[2];

measure q -> c;