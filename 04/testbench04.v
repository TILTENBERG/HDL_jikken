`timescale 1ms/1ms
module testbench04;
 reg s1,s0,d3,d2,d1,d0;
 wire y;
 mux41 mux(s1,s0,d3,d2,d1,d0,y);
 initial begin
  $dumpfile("tmp.vcd");
  $dumpvars();
  $monitor("%t %b %b %b %b %b %b %b",$time,s1,s0,d3,d2,d1,d0,y);
  #0   s1 = 1'b0;s0 = 1'b0;d3 = 1'b0;d2 = 1'b0;d1 = 1'b0;d0 = 1'b0;
  #100 s1 = 1'b0;s0 = 1'b1;
  #100 s1 = 1'b1;s0 = 1'b0;
  #100 s1 = 1'b1;s0 = 1'b1;

  #100 s1 = 1'b0;s0 = 1'b0;d3 = 1'b0;d2 = 1'b0;d1 = 1'b0;d0 = 1'b1;
  #100 s1 = 1'b0;s0 = 1'b1;d3 = 1'b0;d2 = 1'b0;d1 = 1'b1;d0 = 1'b0;
  #100 s1 = 1'b1;s0 = 1'b0;d3 = 1'b0;d2 = 1'b1;d1 = 1'b0;d0 = 1'b0;
  #100 s1 = 1'b1;s0 = 1'b1;d3 = 1'b1;d2 = 1'b0;d1 = 1'b0;d0 = 1'b0;

  #100 s1 = 1'b0;s0 = 1'b0;d3 = 1'b0;d2 = 1'b0;d1 = 1'b0;d0 = 1'b0;
  
  #100 s1 = 1'b0;s0 = 1'b1;d3 = 1'b0;d2 = 1'b0;d1 = 1'b0;d0 = 1'b1;
  #100 s1 = 1'b0;s0 = 1'b1;d3 = 1'b0;d2 = 1'b0;d1 = 1'b1;d0 = 1'b0;
  #100 s1 = 1'b0;s0 = 1'b1;d3 = 1'b0;d2 = 1'b1;d1 = 1'b0;d0 = 1'b0;
  #100 s1 = 1'b0;s0 = 1'b1;d3 = 1'b1;d2 = 1'b0;d1 = 1'b0;d0 = 1'b0;
  
  #100 s1 = 1'b0;s0 = 1'b0;d3 = 1'b0;d2 = 1'b0;d1 = 1'b0;d0 = 1'b0;
  #100 $finish;
 end 
endmodule
