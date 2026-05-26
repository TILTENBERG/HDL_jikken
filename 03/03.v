module demux14(d,s1,s0,y3,y2,y1,y0);
input d,s1,s0;
output y3,y2,y1,y0;
 assign y3 = d & s1 & s0;
 assign y2 = d & s1 & (~s0);
 assign y1 = d & (~s1) & s0;
 assign y0 = d & (~s1) & (~s0);
endmodule