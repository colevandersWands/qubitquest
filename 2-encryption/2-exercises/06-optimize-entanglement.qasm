OPENQASM 2.0;
include "qelib1.inc";

// Exercise 6: Create maximum entanglement with minimum gates
// Generate Bell state using fewest possible operations

qreg q[2];
creg c[2];

// Implement Bell state creation here
// Challenge: Use exactly 2 gates

measure q[0] -> c[0];
measure q[1] -> c[1];