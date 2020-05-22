module dna(y,state,x,clk);

input clk;
input [1:0] x;
output reg y;

output reg[2:0] state =3'b000;

parameter NULL=3'b000, S1=3'b001, S2=3'b010 , S3=3'b011, S4=3'b100, S5=3'b101;

parameter A=2'b00, T=2'b01, C=2'b10, G=2'b11;

always @ (posedge clk)
begin 
if (x == A)
            case (state)
            NULL:  state <= S1;
              S1:  state <= S1;
              S2:  state <= S1;
              S3:  state <= S1;
              S4:  state <= S1;
              S5:  state <= S1;                            
            endcase
else if (x == T)
            case (state)
            NULL:  state <= NULL;
              S1:  state <= S2;
              S2:  state <= S3;
              S3:  state <= NULL;
              S4:  state <= NULL;
              S5:  state <= NULL;
             endcase
else if (x == C)
            case (state)
            NULL:  state <= NULL;
              S1:  state <= NULL;
              S2:  state <= NULL;
              S3:  state <= S4;
              S4:  state <= NULL;
              S5:  state <= NULL;
            endcase
else
            case (state)
            NULL:  state <= NULL;
              S1:  state <= NULL;
              S2:  state <= NULL;
              S3:  state <= NULL;
              S4:  state <= S5;
              S5:  state <= NULL;
            endcase
if ((x == C) && (state == S5)) y <= 1;
else y <= 0;
end        
endmodule
