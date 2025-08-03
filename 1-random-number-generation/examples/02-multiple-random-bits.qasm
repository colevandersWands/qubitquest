OPENQASM 2.0;
include "qelib1.inc";

// Example 2: Generate 4 independent random bits
// Demonstrates: parallel quantum randomness generation
// Each qubit operates independently - no correlation between results

qreg q[4];          // Four-qubit quantum register
creg c[4];          // Four classical bits to store results

// Create superposition on all qubits simultaneously
// Each qubit becomes: |+⟩ = (|0⟩ + |1⟩)/√2
h q[0];             // First random bit
h q[1];             // Second random bit  
h q[2];             // Third random bit
h q[3];             // Fourth random bit

// Measure all qubits - each forces independent random collapse
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];

// Result interpretation:
// c[3]c[2]c[1]c[0] forms a 4-bit random number (0-15)
// Each bit is independently random
// No correlation between the bits
// Example outputs: 0101, 1010, 1111, 0000, etc.

// Classical equivalent would require 4 separate PRNG calls
// Quantum version generates all 4 bits in parallel through superposition