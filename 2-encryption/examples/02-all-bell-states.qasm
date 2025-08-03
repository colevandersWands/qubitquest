OPENQASM 2.0;
include "qelib1.inc";

// Example 2: Four Bell states
// Different correlation patterns

qreg q[8];
creg c[8];

// |Φ+⟩: same correlation (00, 11)
h q[0];
cnot q[0], q[1];

// |Φ-⟩: same correlation with phase
h q[2];
cnot q[2], q[3];
z q[2];

// |Ψ+⟩: opposite correlation (01, 10)  
h q[4];
cnot q[4], q[5];
x q[5];

// |Ψ-⟩: opposite correlation with phase
h q[6];
cnot q[6], q[7];
x q[7];
z q[6];

measure q -> c;