OPENQASM 2.0;
include "qelib1.inc";

// Example 5: Eavesdropping detection
// Measurement disturbance reveals Eve

qreg q[4];
creg c[4];

// Alice sends X-basis states
h q[0];             // |+⟩ 
x q[1];
h q[1];             // |-⟩

// Eve measures in wrong basis (Z), disturbing states
measure q[0] -> c[0];
measure q[1] -> c[1];

// Eve forwards Z-basis states to Bob
if(c[0]==1) x q[2];
if(c[1]==1) x q[3];

// Bob measures in X-basis - errors reveal Eve
h q[2];
h q[3];
measure q[2] -> c[2];
measure q[3] -> c[3];