# ALU
# ALU is the fundamental building block of the processor, which  is responsible for carrying out the arithmetic, logic functions,  Shift functions and Comparison functions.
# Specification:
1-ALU Operands (A, B) 
2-ALU Result (ALU_OUT)
3-ALU operands and output Result are of 16-bit width.
4-ALU Result (ALU_OUT) is registered. 
5-The ALU function is carried out according to the value of 
the ALU_FUN input signal stated in the table in the 
following page and any other value for ALU_FUN not 
stated in the table, ALU_OUT must equal to 16’b0
6-Arith_flag is activated "High" only when ALU performs 
one of the arithmetic operations (Addition, Subtraction, 
Multiplication, division), otherwise "LOW"
7-Logic_flag is activated "High" only when ALU performs 
one of the Boolean operations (AND, OR, NAND, NOR, 
XOR, XNOR), otherwise "LOW"
8-CMP_flag is activated "High" only when ALU performs 
one of the Comparison operations (Equal, Greater than, 
less than), otherwise "LOW"
9-Shift_flag is activated "High" only when ALU performs 
one of the shifting operations (shift right, shift left), 
otherwise "LOW"
