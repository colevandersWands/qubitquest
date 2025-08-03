OPENQASM 2.0;
include "qelib1.inc";

// Example 1: Simple optimization problem
// Choose between 2 assets using quantum

qreg q[2];
creg c[2];

// Initialize equal superposition over all choices
h q[0];  // Asset A: hold (1) or not (0)
h q[1];  // Asset B: hold (1) or not (0)

// Cost function: prefer diversified portfolio
// Penalize holding both assets (correlation risk)
cz q[0], q[1];  // Phase flip |11⟩ state

// Mixer: explore different allocations  
ry(1.0) q[0];
ry(1.0) q[1];

measure q[0] -> c[0];
measure q[1] -> c[1];

// Results favor |01⟩ or |10⟩ over |11⟩