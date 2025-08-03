OPENQASM 2.0;
include "qelib1.inc";

// Exercise 5: Fix conditional random generation
// Goal: P(second bit = 1 | first bit = 0) = 25%
//       P(second bit = 1 | first bit = 1) = 75%

qreg q[2];
creg c[2];

h q[0];
cnot q[0], q[1];
ry(1.047) q[0];     // BUG: Wrong qubit for rotation

measure q[0] -> c[0];
measure q[1] -> c[1];

// Find and fix the error