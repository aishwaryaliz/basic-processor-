This is the implementation of a fundamental microprocessor in Verilog.
The model does not include assembly language, so the instructions must be provided in binary via a text file or immediately in the test bench. This is achieved by incorporating ports for working with external data. To reduce errors, the processor reads instructions from this file after a predetermined delay of 4 clock ticks.
