OPENQASM 2.0;
include "qelib1.inc";

// Example 5: Conditional random number generation
// Demonstrates: quantum correlation and conditional probabilities
// Scenario: Generate random bit, then second bit biased based on first result

qreg q[2];          // Two-qubit quantum register
creg c[2];          // Two classical bits to store results

// Step 1: Generate first random bit (50/50 probability)
h q[0];

// Step 2: Create conditional logic using CNOT gate
// If q[0] = |0⟩, then q[1] stays |0⟩ (deterministic 0)
// If q[0] = |1⟩, then q[1] becomes |1⟩ (deterministic 1)
cnot q[0], q[1];

// Step 3: Add random bias to the second qubit
// This creates: if first bit = 0, second bit has 25% chance of 1
//              if first bit = 1, second bit has 75% chance of 1
ry(1.047) q[1];     // Bias the conditional qubit

// Measure both qubits
measure q[0] -> c[0];
measure q[1] -> c[1];

// Resulting probability distribution:
// c[0]=0, c[1]=0: 50% × 75% = 37.5%
// c[0]=0, c[1]=1: 50% × 25% = 12.5%  
// c[0]=1, c[1]=0: 50% × 25% = 12.5%
// c[0]=1, c[1]=1: 50% × 75% = 37.5%

// This demonstrates quantum conditional probability:
// P(c[1]=1 | c[0]=0) = 25%
// P(c[1]=1 | c[0]=1) = 75%

// Applications: Modeling correlated random events, 
// Bayesian sampling, conditional Monte Carlo scenarios