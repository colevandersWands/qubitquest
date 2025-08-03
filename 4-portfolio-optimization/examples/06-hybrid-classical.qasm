OPENQASM 2.0;
include "qelib1.inc";

// Example 6: Parameterized optimization
// Parameters tuned by classical optimizer

qreg q[3];
creg c[3];

h q[0];
h q[1];
h q[2];

// Cost function with tunable parameters
// These angles optimized by classical loop
cz q[0], q[1];
ry(1.2) q[0];  // Parameter γ₁ = 1.2
ry(1.2) q[1];  // Optimized by classical computer
ry(1.2) q[2];

cz q[1], q[2];
ry(0.7) q[0];  // Parameter γ₂ = 0.7  
ry(0.7) q[1];  // Classical optimizer found these
ry(0.7) q[2];

measure q -> c;

// Classical computer measures result,
// adjusts parameters, repeats quantum circuit