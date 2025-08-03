OPENQASM 2.0;
include "qelib1.inc";

// Example 5: Risk-return optimization
// Balance expected return vs portfolio risk

qreg q[3];
creg c[3];

h q[0];  // High-risk, high-return asset
h q[1];  // Medium-risk, medium-return asset  
h q[2];  // Low-risk, low-return asset

// Encourage return (favor high-return assets)
z q[0];  // Boost high-return asset probability

// Penalize excessive risk (correlated assets)
cz q[0], q[1];  // High and medium are correlated

// Diversification bonus
z q[2];  // Favor including low-risk asset

// Mixer to explore combinations
ry(0.6) q[0];
ry(0.6) q[1];
ry(0.6) q[2];

measure q -> c;