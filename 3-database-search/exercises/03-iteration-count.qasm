OPENQASM 2.0;
include "qelib1.inc";

// Exercise 3: Determine optimal iterations
// How many Grover iterations for 16 items?

qreg q[4];
creg c[4];

// Initialize 16-item superposition
h q[0];
h q[1];
h q[2];
h q[3];

// How many times should we iterate?
// Hint: π/4 * √N iterations

// Add your Grover iterations here
__

measure q -> c;

// TASK: Add correct number of oracle+diffusion iterations