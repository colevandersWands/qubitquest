OPENQASM 2.0;
include "qelib1.inc";

// Exercise 3: Debug BB84 state preparation  
// Alice wants to send bits [0,1,0,1] using bases [Z,Z,X,X]
// Find and fix the logical errors

qreg q[4];
creg c[4];

// Bit 0, Z-basis: Should prepare |0⟩
// (correct - no operation needed)

// Bit 1, Z-basis: Should prepare |1⟩  
x q[1];  // (correct)

// Bit 0, X-basis: Should prepare |+⟩
h q[2];  // INCORRECT: This prepares |+⟩ but bit should be 0 in X-basis

// Bit 1, X-basis: Should prepare |-⟩
h q[3];  // BUG: Missing X gate - this only prepares |+⟩, not |-⟩

// Bob measures in bases [Z,X,Z,X] 
measure q[0] -> c[0];  // Z measurement
h q[1];
measure q[1] -> c[1];  // X measurement  
measure q[2] -> c[2];  // Z measurement
h q[3];
measure q[3] -> c[3];  // X measurement

// DEBUGGING TASKS:
// 1. Identify which measurements should match Alice's bits
// 2. Fix the state preparation errors
// 3. Predict the correlation pattern Bob should see