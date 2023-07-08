This is the implementation of a fundamental microprocessor in Verilog.

The model does not include assembly language, so the instructions must be provided in binary via a text file or immediately on the test bench. 
The code given is for instructions given via the text file format. 

The microprocessor is capable of working with data provided externally by the use of data buses. 
It loads the data from the external buses into data memory. 
The data is then loaded into the General Purpose Registers (GPRs), where different arithmetic and logical operations can be performed on the data. 

To reduce errors, the processor reads instructions from the text file after a predetermined delay of 4 clock ticks.

Each instruction is stored in an Instruction Register (IR) of 32 bits. 
The IR gives information on the type of operation to be performed on the data and the address of the data. 

The processor is built following the Harvard Architecture with seperate buses for data memory and instruction memory. 
The array format for memory addressing has been used.
