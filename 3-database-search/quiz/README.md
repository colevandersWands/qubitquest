# Module 3 Quiz: Quantum Database Search

Test your understanding of Grover's algorithm, amplitude amplification, and when quantum
search provides real advantages.

## Quiz Questions

- [Quiz 1: Grover's Algorithm Speedup](./quiz-01.md) - Understanding quadratic vs linear
  complexity
- [Quiz 2: Oracle Function Purpose](./quiz-02.md) - How quantum search marks target states
- [Quiz 3: Optimal Iterations](./quiz-03.md) - Calculating the right number of
  amplification steps
- [Quiz 4: Classical vs Quantum Database Search](./quiz-04.md) - When indexed search beats
  quantum
- [Quiz 5: Quantum Search Business Application](./quiz-05.md) - Practical limitations of
  quadratic speedup

## Key Concepts Covered

**Technical Understanding**:

- Grover's provides O(√N) speedup over O(N) unstructured search
- Oracle marks targets with phase flips, not amplitude changes
- Optimal iterations = π/4 × √N for maximum success probability
- Amplitude amplification gradually increases target probability

**Professional Applications**:

- Indexed databases (O(log N)) still beat quantum search
- Quadratic speedup isn't enough for exponentially large spaces
- Unstructured search problems benefit most from quantum
- Real quantum advantage requires specific problem characteristics
