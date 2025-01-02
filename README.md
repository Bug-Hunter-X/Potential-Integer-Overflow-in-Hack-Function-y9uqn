# Potential Integer Overflow in Hack Function

This repository demonstrates a potential integer overflow error in a simple Hack program. The program consists of three functions: `foo`, `bar`, and `baz`.  `foo` increments its input by 1, `bar` doubles the output of `foo`, and `baz` subtracts 1 from the output of `bar`. The `main` function calls `baz` with an input and prints the result.

The issue arises when the input to `baz` is large enough that the intermediate calculations in `foo` and `bar` cause an integer overflow.  Hack does not inherently detect this error, and the result will be incorrect.

This example highlights the importance of considering potential integer overflow when writing programs in Hack (or any language). Robust code should include checks to prevent overflows or handle them gracefully.

## How to reproduce

1.  Clone this repository.
2.  Compile and run the `bug.hack` file using the Hack compiler. 
3.  Observe the output of the program and consider whether the output correctly corresponds to the calculation (x + 1) * 2 - 1
4. Modify the input value of x in main function and observe the changes in the output. Experiment with various large input values to see the effect of the overflow.
