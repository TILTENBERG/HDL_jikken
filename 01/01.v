module gate00(a,c);
input a;
output c;
 assign c = ~a;
endmodule

module gate01(a,b,c);
input a,b;
output c;
 assign c = a&b;
endmodule

module gate02(a,b,c);
input a,b;
output c;
 assign c = a~&b;
endmodule

module gate03(a,b,c);
input a,b;
output c;
 assign c = a|b;
endmodule

module gate04(a,b,c);
input a,b;
output c;
 assign c = a~|b;
endmodule

module gate05(a,b,c);
input a,b;
output c;
 assign c = a^b;
endmodule

module gate06(a,b,c);
input a,b;
output c;
 assign c = a~^b;
endmodule






