OPENQASM 2.0;
include "qelib1.inc";

// Exercise 3: Optimize QAOA parameters
// Find best angles for portfolio problem

qreg q[2];
creg c[2];

h q[0];
h q[1];

// Cost function
cz q[0], q[1];

// Mixer with parameter to optimize
ry(__) q[0];  // BLANK: What angle works best?
ry(__) q[1];  // BLANK: Try different values

measure q[0] -> c[0];
measure q[1] -> c[1];

// TASK: Experiment with different angles
// Try 0.1, 0.5, 1.0, 1.5 - which gives best results?