`timescale 1ms/1ms
module testbench03;
 reg d,s1,s0;
 wire y3,y2,y1,y0;
 demux14 demux(d,s1,s0,y3,y2,y1,y0);
 initial begin
  $dumpfile("tmp.vcd");
  $dumpvars();
  $monitor("%t %b %b %b %b %b %b %b",$time,d,s1,s0,y3,y2,y1,y0);
  #0   d=1'b0;s1=1'b0;s0=1'b0;
  #100 d=1'b0;s1=1'b0;s0=1'b1;
  #100 d=1'b0;s1=1'b1;s0=1'b0;
  #100 d=1'b0;s1=1'b1;s0=1'b1;
  #100 d=1'b1;s1=1'b0;s0=1'b0;
  #100 d=1'b1;s1=1'b0;s0=1'b1;
  #100 d=1'b1;s1=1'b1;s0=1'b0;
  #100 d=1'b1;s1=1'b1;s0=1'b1;
  #100 d=1'b0;s1=1'b0;s0=1'b0;
  #100 $finish;
 end 
endmodule
