OPENQASM 2.0;
include "qelib1.inc";

// Example 6: Quantum teleportation
// Transfer state using entanglement

qreg q[3];
creg c[3];

ry(1.047) q[0];     // State to teleport

// Create Bell pair
h q[1];
cnot q[1], q[2];

// Alice's Bell measurement
cnot q[0], q[1];
h q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];

// Bob's corrections
if(c[0]==1) x q[2];
if(c[1]==1) z q[2];

measure q[2] -> c[2];