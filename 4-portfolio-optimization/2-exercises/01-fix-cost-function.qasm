OPENQASM 2.0;
include "qelib1.inc";

// Exercise 1: Fix the optimization cost function
// Should prefer selecting asset A OR asset B, not both

qreg q[2];
creg c[2];

h q[0];
h q[1];

// BUG: Wrong cost function encourages both assets
cnot q[0], q[1];  // BUG: This creates correlation, not penalty

ry(0.5) q[0];
ry(0.5) q[1];

measure q[0] -> c[0];
measure q[1] -> c[1];

// TASK: Fix to penalize selecting both assets
// HINT: Use phase flip, not entanglement