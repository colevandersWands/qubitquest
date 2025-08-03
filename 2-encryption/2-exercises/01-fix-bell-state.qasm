OPENQASM 2.0;
include "qelib1.inc";

// Exercise 1: Fix the Bell state creation
// This should create perfect correlation between two qubits
// BUGS TO FIX: Missing gate, wrong qubit order, measurement issues

qreg q[2];
creg c[2];

// BUG: Missing Hadamard gate to create superposition
// The first qubit needs to be put in superposition before entanglement

cnot q[1], q[0];    // BUG: Wrong qubit order - control and target swapped

measure q[0] -> c[0];
measure q[1] -> c[1];

// STUDENT TASKS:
// 1. Add the missing Hadamard gate on the correct qubit
// 2. Fix the CNOT gate to use correct control and target qubits
// 3. Verify the circuit creates correlated outcomes (00 or 11 only)

// HINT: Bell state needs H on first qubit, then CNOT(first→second)
// HINT: Check which qubit should control the CNOT operation