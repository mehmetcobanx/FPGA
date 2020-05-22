`timescale 1ns / 1ps

module dna_tb;

// Inputs
reg clk1;
reg [1:0] x1;

// Output
wire y1;
wire [2:0] state1;
wire [2:0] count1;

parameter A=2'b00, T=2'b01, C=2'b10, G=2'b11;

// Instantiate the Unit Under Test (UUT)
dna_spaced UUT(y1,state1,x1,clk1,count1);

initial begin
#1 clk1=0;
forever
#1 clk1=~clk1;
end

initial 
begin

   x1 = C;
#2 x1 = G;
#2 x1 = A;
#2 x1 = T;
#2 x1 = T;
#2 x1 = C;
#2 x1 = G;
#2 x1 = C;
#2 x1 = C;

#2 x1 = A;
#2 x1 = C;
#2 x1 = G;
#2 x1 = G;
#2 x1 = C;
#2 x1 = A;
#2 x1 = T;
#2 x1 = T;
#2 x1 = C;
#2 x1 = G;
#2 x1 = C;
#2 x1 = C;
$stop;

end
endmodule
