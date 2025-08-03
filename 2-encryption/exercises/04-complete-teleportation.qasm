OPENQASM 2.0;
include "qelib1.inc";

// Exercise 4: Complete quantum teleportation protocol
// Transfer state from q[0] to q[2] using entanglement

qreg q[3];
creg c[3];

// Initial state to teleport
ry(0.785) q[0];     // Random state to teleport

// Create Bell pair
h q[1];
cnot q[1], q[2];

// Bell measurement on Alice's qubits
cnot q[0], q[1];
h q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];

// Bob's corrections based on measurement
// Complete the conditional operations
if(c[0]==1) __ q[2];     // BLANK: What correction if c[0]=1?
if(c[1]==1) __ q[2];     // BLANK: What correction if c[1]=1?

measure q[2] -> c[2];

// TASK: Fill in Bob's correction gates