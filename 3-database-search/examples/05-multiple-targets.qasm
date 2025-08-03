OPENQASM 2.0;
include "qelib1.inc";

// Example 5: Search for multiple targets
// Find either |01⟩ or |10⟩ in 4-item database

qreg q[2];
creg c[2];

h q[0];
h q[1];

// Oracle: mark both |01⟩ and |10⟩
z q[0];     // Mark |0_⟩ states
z q[1];     // Mark |_0⟩ states  
cz q[0], q[1];  // Unmark |00⟩
z q[0];
z q[1];

// Diffusion
h q[0];
h q[1];
z q[0];
z q[1];
cz q[0], q[1];
h q[0];
h q[1];

measure q[0] -> c[0];
measure q[1] -> c[1];

// High probability of |01⟩ or |10⟩