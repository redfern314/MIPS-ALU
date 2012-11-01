//ALU bitslice for the MIPS architecture
//Ian Hoover and Derek Redfern
//Olin College - CompArch

`define NOT not #10
`define XOR xor #20

module bitSlice_1bit (Out, Cout, A, B, negB, Cin,Cntrl);
  input A,B,negB,Cin;
  input [2:0] Cntrl;
  output Out, Cout;
  
  wire Xor, Add, Sub, Slt, Mul;
  
  add_1bit add(Add,Cout,A,B,Cin);
  add_1bit sub(Sub,Cout,A,negB,Cin);

  `XOR xorGate(Xor,A,B);
  
  mux_5bit finalMux(Out,Add,Sub,Xor,Slt,Mul,Cntrl[0],Cntrl[1],Cntrl[2]);
  
endmodule
