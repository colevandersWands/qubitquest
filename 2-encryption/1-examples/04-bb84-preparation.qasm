OPENQASM 2.0;
include "qelib1.inc";

// Example 4: BB84 key distribution
// Alice prepares states, Bob measures

qreg q[4];
creg c[4];

// Alice encodes bits in random bases
// Bit 0 in Z-basis: |0⟩ (no operation)
x q[1];             // Bit 1 in Z-basis: |1⟩
h q[2];             // Bit 0 in X-basis: |+⟩
x q[3];             // Bit 1 in X-basis: |-⟩
h q[3];

// Bob measures in random bases
measure q[0] -> c[0];  // Z measurement
measure q[1] -> c[1];  // Z measurement
measure q[2] -> c[2];  // Z measurement
measure q[3] -> c[3];  // Z measurement

// Keep only matching basis results for key