//Implementation of a MIPS-style ALU
//Supported instructions:
//  ADD, SUB, XOR, SLT, MUL
//Ian Hoover and Derek Redfern
//Olin College - CompArch

module alu(inA,inB,Ctrl,zero,overflow,Cout)
  input [31:0] inA;
  input [31:0] inB;
  output zero,overflow,Cout;
  wire [31:0] notB;
  wire Cin;
  
  not_32bit notBgate(notB,inB);

  
  //32 instances of bitSlice
  bitSlice_1bit bitSlice1(Out, Cout, A, B, Cin,Cntrl)
  
  //Handle overflows and check for zero
endmodule