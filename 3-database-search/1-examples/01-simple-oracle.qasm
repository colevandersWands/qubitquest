OPENQASM 2.0;
include "qelib1.inc";

// Example 1: Simple search oracle
// Marks target item with phase flip

qreg q[2];
creg c[2];

// Create superposition over all 4 items
h q[0];
h q[1];

// Oracle: mark item |11⟩ (target = 3)
cz q[0], q[1];  // Phase flip when both qubits = 1

measure q[0] -> c[0];
measure q[1] -> c[1];

// Equal probability for all items (oracle alone doesn't help)