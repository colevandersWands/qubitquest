OPENQASM 2.0;
include "qelib1.inc";

// Exercise 2: Complete the diffusion operator
// Fill in missing gates

qreg q[2];
creg c[2];

h q[0];
h q[1];

// Oracle (mark |11⟩)
cz q[0], q[1];

// Diffusion operator with blanks
h q[0];
h q[1];
__ q[0];    // BLANK: What gate?
__ q[1];    // BLANK: What gate?
cz q[0], q[1];
__ q[0];    // BLANK: Return to computational basis
__ q[1];    // BLANK: Return to computational basis

measure q[0] -> c[0];
measure q[1] -> c[1];

// TASK: Complete diffusion operator