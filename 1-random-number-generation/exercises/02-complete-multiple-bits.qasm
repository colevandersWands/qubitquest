OPENQASM 2.0;
include "qelib1.inc";

// Exercise 2: Complete the multiple random bits generator
// Fill in the blanks (__) to generate 3 independent random bits
// Each bit should have 50% probability of being 0 or 1

qreg q[__];         // BLANK: How many qubits do we need for 3 random bits?
creg c[3];          // Classical register for 3 bits

// Create superposition on all qubits
__ q[0];            // BLANK: What gate creates 50/50 superposition?
__ q[1];            // BLANK: Same gate for second qubit
__ q[__];           // BLANK: Gate and qubit index for third qubit

// Measure all qubits
measure q[0] -> c[0];
measure q[__] -> c[1];     // BLANK: Which qubit index for second measurement?
measure q[2] -> c[__];     // BLANK: Which classical bit index for third result?

// STUDENT TASKS:
// 1. Fill in the quantum register size
// 2. Fill in the correct gates to create superposition  
// 3. Complete the measurement statements with correct indices
// 4. Verify that all three bits are independent and random

// HINT: Each qubit needs one Hadamard gate for 50/50 randomness
// HINT: Qubit and classical bit indices should correspond