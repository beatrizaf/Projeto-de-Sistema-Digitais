module tb;
  bit  cp1, cp2, p0, p1, p2, p3, p4, p5, p6, p7, pl, ds;
  wire saida, QB;
  
 
  register register(.cp1(cp1), .cp2(cp2), .p0(p0), .p1(p1), .p2(p2), .p3(p3), .p4(p4), .p5(p5), .p6(p6), .p7(p7), .pl(pl), .ds(ds), .saida(saida), .QB(QB));
  
  initial begin
    
    $dumpfile("tb.vcd");
    $dumpvars(1);
    
    $monitor("PL = %b, CP1 = %b, CP2 = %b, Q = %b, QB = %b",pl, cp1, cp2, saida, QB);
    
    p0 = 1'b0; p1 = 1'b0; 
    p2 = 1'b0; p3 = 1'b0; 
    p4 = 1'b1; p5 = 1'b1; 
    p6 = 1'b0; p7 = 1'b0;
    
    #5 ds  = 1'b1;
    #5 pl  = 1'b1;
    #5 cp1 = 1'b1;
    #5 ds  = 1'b0;
    #5 cp1 = 1'b0;
    #5 cp1 = 1'b1;
    #5 cp1 = 1'b0;
    #5 cp1 = 1'b1;
    #5 cp1 = 1'b0;
    #5 cp1 = 1'b1;
    #5 pl  = 1'b0;
    #5 pl  = 1'b1;
    #10
    
    $finish;
    end
endmodule
