# Single-Cycle-MIPS

Project for the Computer Architecture course
- The hard-coded instructions implement the generation of the Fibonacci sequence.
- The numbers are displayed in hexadecimal.
- The output of the computations is saved in the location 1 in the data memory (RAM/ only the last switch from left to right should be turned on).
- Each instruction takes one clock cycle (i.e. one press of the clock button).
- In order to get the next number in the FIbonacci sequence the clock button (center button) has to be pressed 6 times. This happens because there are 2 loads, 1 addition, 1 store and 1 jump (i.e. 6 opeartions requiring 1 clock cyle each) involved in each step of the computation of a new term.
- When 'EEEE' is displayed at data memory address 1, the maximum number in the Fibonacci sequence has been reached, the program counter has to be reset.
- From left to right the switches do:
    - 1 to 3: select between
      - Display data memory contents if 000.
      - Dispaly contents of a register if 001.
      - Display the instruction to be executed in the next clock cycle if 010.
      - Display the program counter state if 011.
      - Display the address to the data memory for the next clock cycle if 100.
      - Display the second operand that is entering the ALU in the next clock cycle if 101/110/111.
    - 4 to 6: select between registers
      - Register 0 if 000.
      - Register 1 if 001.
      - Register 2 if 010.
      - Register 3 if 011.
      - Register 4 if 100.
      - Register 5 if 101.
      - Register 6 if 110.
      - Register 7 if 111.
    - 7 acts as the reset switch: takes the MIPS back to the initial stage.
    - 8 does nothing
    - 9 to 16 selects the address in the data memory whose contents are displayed.
 - ISA:
   _Note: [first bits in the instruction] instruction_name [last bits in the instruction]._
    - [000]arithmetic operations:
      - addition [X000].
      - subtraction [X001].
      - logic shift to the left by a shift amount [[0|1]010].
      - logic shift to the right by a shift amount [[0|1]011].
      - AND [X100].
      - OR [X101].
      - arithmetic shift to the right by a shift amount [[0|1]110].
      - XOR [X111].
    - [001] add immediate.
    - [010] load word.
    - [011] store word.
    - [100] branch on equal.
    - [101] AND immediate.
    - [110] branch on greater than 0.
    - [111] jump.
      
_Note 1: The bus sizes of this MIPS processor allow for a data memory and an instruction memory of up to 65536 (2^16) locations. This design is limited to 256 locations because there is no need for such a huge space of addresses and my computer found the design somehow unsinthesizable (too big of a number)._

_Note 2: For the processor to work in a full 16-bit mode the roles of the switches has to be modified (all 16 switches would be needed to navigate through a memory of size 2^16 for example)._

_Note 3: There are three types of instructions, all use 16 bits:_
- R-type: [000] register_source[3] register_target[3] register_destination[3] operation_code[4].
- I-type: [001:110] register_source[3] register_target[3] immediate[7].
- J-type: [111] jump_address[13].

_Note 4: name[X] extends into a string of X bits that takes the role 'name'._

![image](https://github.com/l7aur/Single-Cycle-MIPS/assets/81981519/8b40b451-72f8-4635-ad34-fe9172a5d8d4)

![image](https://github.com/l7aur/Single-Cycle-MIPS16-Processor/assets/81981519/e1f789b7-d93a-4568-bc77-0108181f695e)





