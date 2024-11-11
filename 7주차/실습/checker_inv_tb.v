`timescale 1ns / 1ps

module inv_tb;

reg aa,bb,cc,dd,pp;

wire pec;

inv u_inv (
.a (aa ),
.b (bb ),
.c (cc ),
.d (dd ),
.p (pp ),
.pec (pec ));

initial begin
aa = 1'b0;
bb = 1'b0;
cc = 1'b0;
dd = 1'b0;
pp = 1'b0;
end

always begin
aa = #20 ~aa;
bb = #30 ~bb;
cc = #40 ~bb;
dd = #50 ~bb;
pp = #60 ~bb;
end

initial begin
    #1000
    $finish;
    
end

endmodule