OPENQASM 2.0;
include "qelib1.inc";

// Exercise 5: Design portfolio optimizer
// Maximize return while minimizing risk

qreg q[3];
creg c[3];

// Design optimization for:
// Asset 0: High return, high risk
// Asset 1: Medium return, medium risk  
// Asset 2: Low return, low risk
// Goal: Best risk-adjusted portfolio

// Your solution here:
__

measure q -> c;

// TASK: Create cost function balancing return and risk