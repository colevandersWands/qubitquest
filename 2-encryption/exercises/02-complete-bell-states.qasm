OPENQASM 2.0;
include "qelib1.inc";

// Exercise 2: Complete all four Bell states
// Fill in the blanks to create |Φ+⟩, |Φ-⟩, |Ψ+⟩, |Ψ-⟩

qreg q[8];
creg c[8];

// |Φ+⟩ = (|00⟩ + |11⟩)/√2 - Same correlation
__ q[0];            // BLANK: What gate creates superposition?
cnot q[0], q[1];

// |Φ-⟩ = (|00⟩ - |11⟩)/√2 - Same correlation with phase
h q[2];
cnot q[2], q[3];
__ q[__];           // BLANK: What gate and qubit for phase flip?

// |Ψ+⟩ = (|01⟩ + |10⟩)/√2 - Opposite correlation  
h q[4];
cnot q[4], q[5];
__ q[5];            // BLANK: What gate creates bit flip?

// |Ψ-⟩ = (|01⟩ - |10⟩)/√2 - Opposite correlation with phase
h q[6];
cnot q[6], q[7];
x q[7];
__ q[6];            // BLANK: Additional gate needed?

measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];

// TASK: Complete the missing gates to generate all four Bell states
// Each pair should show different correlation patterns