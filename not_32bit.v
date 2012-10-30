`define NOT not #10

module not_32bit(out,in);
  input [31:0] in;
  output [31:0] out;

  `NOT not0(out[0],in[0]);
  `NOT not1(out[1],in[1]);
  `NOT not2(out[2],in[2]);
  `NOT not3(out[3],in[3]);
  `NOT not4(out[4],in[4]);
  `NOT not5(out[5],in[5]);
  `NOT not6(out[6],in[6]);
  `NOT not7(out[7],in[7]);
  `NOT not8(out[8],in[8]);
  `NOT not9(out[9],in[9]);
  `NOT not10(out[10],in[10]);
  `NOT not11(out[11],in[11]);
  `NOT not12(out[12],in[12]);
  `NOT not13(out[13],in[13]);
  `NOT not14(out[14],in[14]);
  `NOT not15(out[15],in[15]);
  `NOT not16(out[16],in[16]);
  `NOT not17(out[17],in[17]);
  `NOT not18(out[18],in[18]);
  `NOT not19(out[19],in[19]);
  `NOT not20(out[20],in[20]);
  `NOT not21(out[21],in[21]);
  `NOT not22(out[22],in[22]);
  `NOT not23(out[23],in[23]);
  `NOT not24(out[24],in[24]);
  `NOT not25(out[25],in[25]);
  `NOT not26(out[26],in[26]);
  `NOT not27(out[27],in[27]);
  `NOT not28(out[28],in[28]);
  `NOT not29(out[29],in[29]);
  `NOT not30(out[30],in[30]);
  `NOT not31(out[31],in[31]);
endmodule

module TESTnot_32bit;
  reg [31:0] in;
  wire [31:0] out;
  
  //test 32 bit not
  initial  // Stimulus 
  begin
    in=0;
    #50; in=21;
  end
  not_32bit UUT (in,out); 
  initial  // Response 
    $monitor(in,out);
endmodule