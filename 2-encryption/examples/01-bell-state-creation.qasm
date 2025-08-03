OPENQASM 2.0;
include "qelib1.inc";

// Example 1: Bell state creation
// Creates perfect quantum correlation

qreg q[2];
creg c[2];

h q[0];             // Superposition
cnot q[0], q[1];    // Entanglement: |00⟩ + |11⟩

measure q[0] -> c[0];
measure q[1] -> c[1];

// Results: always 00 or 11, never 01 or 10