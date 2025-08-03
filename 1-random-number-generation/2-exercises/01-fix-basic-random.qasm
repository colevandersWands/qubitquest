OPENQASM 2.0;
include "qelib1.inc";

// Exercise 1: Fix the basic random bit generator
// This circuit should generate a single random bit with 50/50 probability
// BUGS TO FIX: Missing gate, wrong register syntax, measurement error

qreg q[1];          // Single qubit quantum register
creg c[2];          // BUG: Wrong classical register size - should be 1 bit

// BUG: Missing Hadamard gate to create superposition
// The qubit starts in |0⟩ and needs to be put in |+⟩ state

// BUG: Incorrect measurement syntax
measure q[0] -> c[2];  // BUG: Index out of bounds for classical register

// STUDENT TASKS:
// 1. Fix the classical register size
// 2. Add the missing Hadamard gate
// 3. Fix the measurement statement
// 4. Verify the circuit generates random 0s and 1s with equal probability

// HINT: What quantum gate creates equal superposition?
// HINT: Classical register index should match its declared size