OPENQASM 2.0;
include "qelib1.inc";

// Exercise 3: Debug the random integer generator
// This circuit should generate random integers from 0 to 7
// LOGICAL BUGS: The circuit has conceptual errors affecting the distribution

qreg q[3];          // Three qubits for 0-7 range
creg c[3];          // Three classical bits

// BUG: This creates biased distribution, not uniform!
h q[0];
cnot q[0], q[1];    // BUG: This creates correlation, not independence
cnot q[1], q[2];    // BUG: This makes q[2] dependent on q[1] and q[0]

// Measurements
measure q[0] -> c[0];
measure q[1] -> c[1]; 
measure q[2] -> c[2];

// DEBUGGING CHALLENGE:
// The current circuit produces this biased distribution:
// 000: 25%, 001: 25%, 010: 0%, 011: 0%
// 100: 0%, 101: 0%, 110: 25%, 111: 25%
// Only 4 out of 8 possible outcomes can occur!

// STUDENT TASKS:
// 1. Identify why only certain outcomes are possible
// 2. Explain how the CNOT gates create correlation instead of independence
// 3. Fix the circuit to generate uniform distribution over 0-7
// 4. Verify that all 8 outcomes have equal 12.5% probability

// HINT: Independent qubits should not be entangled
// HINT: What gate on each qubit creates uniform superposition?