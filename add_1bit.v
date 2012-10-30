//1 bit adder
//Olin College - CompArch

`define AND and #20
`define OR or #20
`define NOT not #10
`define XOR xor #20

module add_1bit(A,B,cIn,out,cOut);
  input A,B,cIn;
  output out,cOut;
  wire AxorB,AandB,andCarry;
  
  `XOR AxorBgate(AxorB,A,B);
  `XOR xorCarrygate(out,AxorB,cIn);
  `AND AandBgate(AandB,A,B);
  `AND andCarrygate(andCarry,cIn,AxorB);
  `OR cOutgate(cOut,andCarry,AandB);
endmodule

module TESTadd_1bit;
  reg A,B,cIn;
  wire out,cOut;
  
  //test 1 bit adder
  initial  // Stimulus 
  begin
    A=1;B=1;cIn=0;
    #150 A=0; 
    #150 cIn=1;
    #150 A=1; 
  end
  add_1bit UUT (A,B,cIn,out,cOut); 
  initial  // Response 
    $monitor($time,A,B,cIn,out,cOut);
endmodule

