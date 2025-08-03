OPENQASM 2.0;
include "qelib1.inc";

// Example 6: Partial database search
// Search structured database with partial information

qreg q[3];
creg c[3];

// Search for items with first bit = 1 (|1xx⟩ pattern)
h q[0];
h q[1];
h q[2];

// Oracle: mark all |1xx⟩ states
z q[0];  // Phase flip |1xx⟩ states

// Single amplification step
h q[0];
h q[1];
h q[2];
z q[0];
z q[1];
z q[2];
h q[0];
h q[1];
h q[2];

measure q -> c;

// Increased probability for |100⟩, |101⟩, |110⟩, |111⟩