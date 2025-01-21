# VHDL 4-bit Multiplier with Overflow Handling

This repository demonstrates a common error in VHDL code:  overflow in arithmetic operations.  The original `bug.vhdl` code implements a simple 4-bit multiplier without considering the possibility that the product of two 4-bit numbers might exceed 8 bits.  This leads to truncation and incorrect results.

The `bugSolution.vhdl` file provides a corrected version that handles potential overflow by using a larger output vector to accommodate the maximum possible product size.  It also includes error handling to indicate when overflow occurs.

## How to reproduce the bug

1. Synthesize and simulate `bug.vhdl`.
2. Provide input values for `a` and `b` where their product exceeds 8 bits (e.g., a = 15, b = 15).
3. Observe that the `product` output is incorrect due to truncation.

## How to fix the bug

Refer to `bugSolution.vhdl` for the corrected implementation. The solution uses a wider output vector and adds overflow detection.