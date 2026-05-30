module priority_encoder(x0,x1,x2,x3,x4,x5,x6,x7,b0,b1,b2);

    input x0,x1,x2,x3,x4,x5,x6,x7;
    output b0,b1,b2;

    assign b0 = ~x6 & (~x4 & ~x2 & x1 | ~x4 & x3 | x5) | x7;
    assign b1 = ~x5 & ~x4 & (x2 | x3) | x6 | x7;
    assign b2 = x4 | x5 | x6 | x7;

endmodule