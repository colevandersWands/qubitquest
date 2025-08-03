OPENQASM 2.0;
include "qelib1.inc";

// Example 3: Basis-dependent correlations
// Same vs different measurement bases

qreg q[4];
creg c[4];

// Create two Bell pairs
h q[0];
cnot q[0], q[1];
h q[2];
cnot q[2], q[3];

// Same basis: perfect correlation
measure q[0] -> c[0];
measure q[1] -> c[1];

// Different bases: random correlation
h q[2];             // X-basis measurement
measure q[2] -> c[2];
measure q[3] -> c[3]; // Z-basis measurement