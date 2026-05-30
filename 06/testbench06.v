`timescale 1ms/1ms
module testbench06;
 reg b0,b1,b2;
 wire y0,y1,y2,y3,y4,y5,y6,y7;
 decoder38 de(b2,b1,b0,y0,y1,y2,y3,y4,y5,y6,y7);
 initial begin
  $dumpfile("tmp.vcd");
  $dumpvars();
  $monitor("%t %b %b %b %b %b %b %b %b %b %b %b",$time,b2,b1,b0,y0,y1,y2,y3,y4,y5,y6,y7);
    #0   b2 = 1'b0;b1 = 1'b0;b0 = 1'b0;
    #100 b2 = 1'b1;b1 = 1'b1;b0 = 1'b1;
    #100 b2 = 1'b1;b1 = 1'b1;b0 = 1'b0;
    #100 b2 = 1'b1;b1 = 1'b0;b0 = 1'b1;
    #100 b2 = 1'b1;b1 = 1'b0;b0 = 1'b0;
    #100 b2 = 1'b0;b1 = 1'b1;b0 = 1'b1;
    #100 b2 = 1'b0;b1 = 1'b1;b0 = 1'b0;
    #100 b2 = 1'b0;b1 = 1'b0;b0 = 1'b1;
    #100 b2 = 1'b0;b1 = 1'b0;b0 = 1'b0;

  #100 $finish;
 end 
endmodule
