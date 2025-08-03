OPENQASM 2.0;
include "qelib1.inc";

// Example 3: Multi-layer QAOA
// Deeper optimization for better solutions

qreg q[3];
creg c[3];

h q[0];
h q[1];
h q[2];

// Layer 1: Cost + Mixer
cz q[0], q[1];
cz q[1], q[2];
ry(0.8) q[0];
ry(0.8) q[1];
ry(0.8) q[2];

// Layer 2: Refined cost + mixer
cz q[0], q[1];
cz q[1], q[2];
ry(0.3) q[0];
ry(0.3) q[1];
ry(0.3) q[2];

// Layer 3: Final optimization
cz q[0], q[1];
cz q[1], q[2];
ry(0.1) q[0];
ry(0.1) q[1];
ry(0.1) q[2];

measure q -> c;