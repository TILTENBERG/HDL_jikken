module mux41(s1,s0,d3,d2,d1,d0,y);
input s1,s0,d3,d2,d1,d0;
output y;
 assign y = (~s1 & ~s0 & d0) | (~s1 & s0 & d1) | (s1 & ~ s0 & d2) | (s1 & s0 & d3);
endmodule