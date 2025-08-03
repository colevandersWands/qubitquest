OPENQASM 2.0;
include "qelib1.inc";

// Exercise 2: Complete QAOA layer
// Fill in missing mixer operations

qreg q[3];
creg c[3];

h q[0];
h q[1];
h q[2];

// Cost layer (complete)
cz q[0], q[1];
cz q[1], q[2];

// Mixer layer (incomplete)
__ q[0];    // BLANK: What gate for mixing?
__ q[1];    // BLANK: Same gate type
__ q[2];    // BLANK: Complete the pattern

measure q -> c;

// TASK: Add appropriate mixer gates