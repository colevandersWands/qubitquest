# Case Study 1: Portfolio Optimization at Global Asset Management

## Business Context

**Company**: GlobalTech Asset Management - $50B under management  
**Challenge**: Portfolio optimization for 1,000+ institutional clients  
**Deadline**: Quarterly rebalancing requires solutions within 48-hour window  
**Stakeholder Pressure**: Clients demanding better risk-adjusted returns amid market
volatility

## Current Classical Parallel Approach

```
Current Infrastructure:
- 1,000-node compute cluster (AWS c5.24xlarge instances)
- Cost: $50,000/month baseline + $200,000 during optimization windows
- Optimization algorithm: Genetic algorithm with parallel population evaluation
- Processing time: 36 hours for full portfolio optimization
- Results: Satisfactory but leaving performance on the table
```

**Technical Details**:

- **Search Space**: 2^50 possible portfolio combinations per client
- **Parallel Strategy**: Distribute population across 1,000 cores
- **Bottleneck**: Each core still evaluates 10^12 combinations
- **Amdahl's Law Impact**: 15% sequential coordination limits speedup to 6.7x

## The Performance Wall

<details>
<summary><strong>Current Optimization Results</strong></summary>

**Classical Parallel Performance**:

- **Risk-adjusted returns**: 8.2% annually (industry average: 7.8%)
- **Optimization convergence**: Reaches local optima, potentially missing global optimum
- **Computational limit**: Cannot explore more than 0.1% of total search space
- **Client satisfaction**: 85% (good but not exceptional)

**Resource Utilization**:

- **CPU utilization**: 95% during optimization
- **Network overhead**: 20% of compute time spent on coordination
- **Memory bottleneck**: Large correlation matrices don't fit in individual node memory
- **Time constraint**: Must stop optimization before global optimum found

</details>

## Quantum Computing Proposal

**Quantum Approach**: Quantum Approximate Optimization Algorithm (QAOA)

- **Theoretical advantage**: Explore all 2^50 combinations simultaneously through
  superposition
- **Expected improvement**: Access to global optimum instead of local optima
- **Resource requirement**: 50-qubit quantum computer (currently available)

<details>
<summary><strong>Quantum Solution Analysis</strong></summary>

**Technical Requirements**:

- **Quantum hardware**: IBM Quantum Network access (~$10,000/month)
- **Development time**: 6-month pilot project with quantum computing consultants
- **Integration**: Hybrid classical/quantum workflow
- **Staff training**: 2 senior engineers need quantum computing certification

**Projected Outcomes**:

- **Risk-adjusted returns**: Potentially 8.8-9.2% annually (0.6-1.0% improvement)
- **Business value**: 1% improvement on $50B = $500M additional client value annually
- **Competitive advantage**: First-mover advantage in quantum-enhanced portfolio
  management

**Risk Factors**:

- **NISQ limitations**: Current quantum computers have limited coherence time
- **Measurement overhead**: Quantum state preparation and measurement adds latency
- **Unproven technology**: No guarantee quantum approach will outperform in practice

</details>

## Decision Framework

**Questions for Discussion**:

1. **ROI Analysis**: Is the potential $500M annual value worth the $10M development
   investment?

2. **Risk Assessment**: How do you balance proven classical methods vs. unproven quantum
   advantage?

3. **Competitive Positioning**: What's the cost of falling behind if competitors adopt
   quantum optimization first?

4. **Timeline Constraints**: Can you afford 6-month development when quarterly rebalancing
   continues?

<details>
<summary><strong>Recommended Decision Process</strong></summary>

**Phase 1 (3 months)**: Proof of concept

- Small portfolio subset (10 assets) on quantum simulator
- Compare classical vs. quantum optimization quality
- Cost: $100K consulting + internal engineering time

**Phase 2 (6 months)**: Pilot with real hardware

- Single high-value client portfolio on actual quantum computer
- Measure real-world performance vs. theoretical projections
- Cost: $500K total investment

**Decision Point**: Proceed to full deployment only if pilot shows measurable improvement

**Success Metrics**:

- ✓ 0.3%+ improvement in risk-adjusted returns
- ✓ Client satisfaction increase to 90%+
- ✓ Quantum solution completes within 48-hour window

</details>

## Key Learning Points

- **Exponential search spaces** break classical parallel computing even with massive
  clusters
- **Quantum algorithms** may provide quadratic improvements for optimization problems
- **Hybrid approaches** combining classical and quantum can provide practical advantages
- **Business case development** requires realistic assessment of quantum vs. classical
  trade-offs
