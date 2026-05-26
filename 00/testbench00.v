`timescale 1ms/1ms
module testbench00;
 reg x,y;
 wire z1;
 gate01 g01(x,y,z1);
 initial begin
  $dumpfile("tmp.vcd");
  $dumpvars();
  $monitor("%t %b %b %b ",$time,x,y,z1);
  #0 x = 1'b0;y=1'b0;
  #100 y=1'b1;
  #100 x=1'b1;y=1'b0;
  #100 y=1'b1;
  #100 x=1'b0;y=1'b0;
  #100 $finish;
 end 
endmodule
