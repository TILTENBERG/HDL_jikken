`timescale 1ms/1ms
module testbench05;
 reg x0,x1,x2,x3,x4,x5,x6,x7;
 wire b0,b1,b2;
 priority_encoder pe(x0,x1,x2,x3,x4,x5,x6,x7,b0,b1,b2);
 initial begin
  $dumpfile("tmp.vcd");
  $dumpvars();
  $monitor("%t %b %b %b %b %b %b %b %b %b %b %b",$time,x0,x1,x2,x3,x4,x5,x6,x7,b0,b1,b2);
  #0   x7 = 1'b0;x6 = 1'b0;x5 = 1'b0;x4 = 1'b0;x3 = 1'b0;x2 = 1'b0;x1 = 1'b0;x0 = 1'b0;
  #100 x7 = 1'b1;
  #100 x7 = 1'b0; x6 = 1'b1;
  #100 x6 = 1'b0; x5 = 1'b1;
  #100 x5 = 1'b0; x4 = 1'b1;
  #100 x4 = 1'b0; x3 = 1'b1;
  #100 x3 = 1'b0; x2 = 1'b1;
  #100 x2 = 1'b0; x1 = 1'b1;
  #100 x1 = 1'b0; x0 = 1'b1;

  #100 x7 = 1'b1;x6 = 1'b1;x5 = 1'b1;x4 = 1'b1;x3 = 1'b1;x2 = 1'b1;x1 = 1'b1;x0 = 1'b1;
  #100 x7 = 1'b0;
  #100 x6 = 1'b0;
  #100 x5 = 1'b0;
  #100 x4 = 1'b0;
  #100 x3 = 1'b0;
  #100 x2 = 1'b0;
  #100 x1 = 1'b0;
  #100 x0 = 1'b0;

  #100 $finish;
 end 
endmodule
