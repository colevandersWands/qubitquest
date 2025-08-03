OPENQASM 2.0;
include "qelib1.inc";

// Example 2: QAOA optimization layer
// Single layer of cost + mixer

qreg q[3];
creg c[3];

// Initialize superposition
h q[0];
h q[1];
h q[2];

// Cost layer: encode optimization objective
// Favor solutions where not all assets are selected
cz q[0], q[1];  // Penalize both A and B
cz q[1], q[2];  // Penalize both B and C
cz q[0], q[2];  // Penalize both A and C

// Mixer layer: enable transitions between solutions
ry(0.5) q[0];
ry(0.5) q[1];
ry(0.5) q[2];

measure q -> c;