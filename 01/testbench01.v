`timescale 1ms/1ms
module testbench01;
 reg x,y;
 wire z0,z1,z2,z3,z4,z5,z6;
 gate00 g00(x,z0);
 gate01 g01(x,y,z1);
 gate02 g02(x,y,z2);
 gate03 g03(x,y,z3);
 gate04 g04(x,y,z4);
 gate05 g05(x,y,z5);
 gate06 g06(x,y,z6);

 initial begin
  $dumpfile("tmp.vcd");
  $dumpvars();
  $monitor("%t %b %b %b %b %b %b %b %b %b",$time,x,y,z0,z1,z2,z3,z4,z5,z6);
  #0 x = 1'b0;y=1'b0;
  #100 y=1'b1;
  #100 x=1'b1;y=1'b0;
  #100 y=1'b1;
  #100 x=1'b0;y=1'b0;
  #100 $finish;
 end 
endmodule
