OPENQASM 2.0;
include "qelib1.inc";

// Example 3: Generate random integers from 0 to 7
// Demonstrates: binary encoding of quantum random numbers
// 3 qubits can represent 2^3 = 8 different integers (0-7)

qreg q[3];          // Three-qubit quantum register
creg c[3];          // Three classical bits for integer encoding

// Create uniform superposition over all 3 qubits
// Total state: |ψ⟩ = (1/√8) × (|000⟩ + |001⟩ + |010⟩ + ... + |111⟩)
// Each of the 8 possible outcomes has equal 12.5% probability
h q[0];             // Least significant bit (2^0 = 1)
h q[1];             // Middle bit (2^1 = 2)  
h q[2];             // Most significant bit (2^2 = 4)

// Measure all qubits to get random 3-bit integer
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];

// Binary to decimal conversion:
// c[2] c[1] c[0] -> Integer value
// 0   0   0    -> 0
// 0   0   1    -> 1
// 0   1   0    -> 2
// 0   1   1    -> 3
// 1   0   0    -> 4
// 1   0   1    -> 5
// 1   1   0    -> 6
// 1   1   1    -> 7

// Each integer 0-7 has exactly 12.5% probability
// Perfect uniform distribution over the range
// Single quantum measurement generates the random integer