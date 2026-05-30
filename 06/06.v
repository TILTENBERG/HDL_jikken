module decoder38(b2,b1,b0,y0,y1,y2,y3,y4,y5,y6,y7);

    input b0,b1,b2;
    output y0,y1,y2,y3,y4,y5,y6,y7;

    assign y0 = ~b2 & ~b1 & ~b0;
    assign y1 = ~b2 & ~b1 & b0;
    assign y2 = ~b2 & b1 & ~b0;
    assign y3 = ~b2 & b1 & b0;
    assign y4 = b2 & ~b1 & ~b0;
    assign y5 = b2 & ~b1 & b0;
    assign y6 = b2 & b1 & ~b0;
    assign y7 = b2 & b1 & b0;


endmodule