OPENQASM 2.0;
include "qelib1.inc";

// Exercise 4: Complete the biased random generator
// Target: 80% chance of |1⟩, 20% chance of |0⟩

qreg q[1];
creg c[1];

// Fill in the correct rotation angle
ry(__) q[0];        // BLANK: Calculate angle for 80% probability of |1⟩

measure q[0] -> c[0];

// TASK: Determine the correct angle parameter
// Remember: RY(θ) creates cos(θ/2)|0⟩ + sin(θ/2)|1⟩