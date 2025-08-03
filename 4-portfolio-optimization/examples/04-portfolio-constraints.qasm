OPENQASM 2.0;
include "qelib1.inc";

// Example 4: Portfolio with constraints
// Budget constraint: select exactly 2 of 4 assets

qreg q[4];
creg c[4];

h q[0];
h q[1];
h q[2];
h q[3];

// Penalty for selecting wrong number of assets
// Want exactly 2 assets selected

// Penalty terms for constraint violation
// Penalize if sum ≠ 2 (simplified version)
cz q[0], q[1];  // Pairs that shouldn't both be 1
cz q[0], q[2];
cz q[0], q[3];
cz q[1], q[2];
cz q[1], q[3];
cz q[2], q[3];

// Mixer
ry(0.4) q[0];
ry(0.4) q[1];
ry(0.4) q[2];
ry(0.4) q[3];

measure q -> c;