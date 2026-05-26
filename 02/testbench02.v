`timescale 1ms/1ms
module testbench02;
 reg a,b,cin;
 wire cout,s;
 fulladder fa(a,b,cin,s,cout);
 initial begin
  $dumpfile("tmp.vcd");
  $dumpvars();
  $monitor("%t %b %b %b %b %b",$time,a,b,cin,cout,s);
  #0   cin = 1'b0;a=1'b0;b=1'b0;
  #100 cin = 1'b0;a=1'b0;b=1'b1;
  #100 cin = 1'b0;a=1'b1;b=1'b0;
  #100 cin = 1'b0;a=1'b1;b=1'b1;
  #100 cin = 1'b1;a=1'b0;b=1'b0;
  #100 cin = 1'b1;a=1'b0;b=1'b1;
  #100 cin = 1'b1;a=1'b1;b=1'b0;
  #100 cin = 1'b1;a=1'b1;b=1'b1;
  #100 cin = 1'b0;a=1'b0;b=1'b0;

  #100 $finish;
 end 
endmodule
