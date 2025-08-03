OPENQASM 2.0;
include "qelib1.inc";

// Exercise 1: Fix the search oracle
// Should mark state |10⟩ but has bugs

qreg q[2];
creg c[2];

h q[0];
h q[1];

// BUG: Wrong oracle implementation
z q[0];     // BUG: This marks wrong states

// Diffusion operator (correct)
h q[0];
h q[1];
z q[0];
z q[1];
cz q[0], q[1];
h q[0];
h q[1];

measure q[0] -> c[0];
measure q[1] -> c[1];

// TASK: Fix oracle to mark |10⟩ only
// HINT: Need to phase flip when q[0]=1 AND q[1]=0