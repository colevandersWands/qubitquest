OPENQASM 2.0;
include "qelib1.inc";

// Exercise 4: Debug constraint implementation
// Should select exactly 1 of 3 assets

qreg q[3];
creg c[3];

h q[0];
h q[1];
h q[2];

// Constraint: exactly one asset selected
// BUG: Implementation doesn't enforce constraint properly
z q[0];  // BUG: This doesn't create "exactly one" constraint
z q[1];
z q[2];

ry(0.5) q[0];
ry(0.5) q[1];
ry(0.5) q[2];

measure q -> c;

// TASK: Fix constraint to favor exactly one selection
// HINT: Penalize multiple selections