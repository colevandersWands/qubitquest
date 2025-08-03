OPENQASM 2.0;
include "qelib1.inc";

// Exercise 4: Debug Grover's implementation
// Should find |01⟩ but doesn't work

qreg q[2];
creg c[2];

h q[0];
h q[1];

// Oracle for |01⟩
z q[1];     // Mark when q[1]=1
cz q[0], q[1];  // BUG: Wrong operation
z q[1];

// Diffusion 
h q[0];
h q[1];
z q[0];
z q[1];
h q[0];     // BUG: Missing operation
h q[1];

measure q[0] -> c[0];
measure q[1] -> c[1];

// TASK: Fix bugs to correctly search for |01⟩