OPENQASM 2.0;
include "qelib1.inc";

// Exercise 5: Search for multiple targets
// Find both |00⟩ and |11⟩

qreg q[2];
creg c[2];

h q[0];
h q[1];

// Design oracle to mark |00⟩ and |11⟩
__

// Add diffusion operator
__

measure q[0] -> c[0];
measure q[1] -> c[1];

// TASK: Complete circuit to find either target