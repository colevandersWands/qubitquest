OPENQASM 2.0;
include "qelib1.inc";

// Example 2: Single amplitude amplification step
// Increases probability of marked item

qreg q[2];
creg c[2];

// Initialize superposition
h q[0];
h q[1];

// Oracle: mark target |11⟩
cz q[0], q[1];

// Diffusion operator: amplify marked amplitude
h q[0];
h q[1];
z q[0];     // Flip phase of |00⟩
z q[1];     
cz q[0], q[1];  // Flip phase of |11⟩
h q[0];
h q[1];

measure q[0] -> c[0];
measure q[1] -> c[1];

// Increased probability of measuring |11⟩