`timescale  1ns / 1ps

module Timer (
         clk,
         reset,
         en,
         wen,
         address,
         din,
         dout,
         IRQ
       );
input clk, reset, en, wen;
input [31: 0] address, din;
output [31: 0] dout;
output IRQ;

reg [31: 0] TH, TL, TCON;
assign IRQ = TCON[2];
assign dout = ~en ? 32'h0 :
       (address[3 : 0] == 4'h8) ? TCON :
       (address[3 : 0] == 4'h4) ? TL :
       TH;

always @(posedge clk)
  begin
    if (reset)
      begin
        TH <= 32'h00000000;
        TL <= 32'h00000000;
        TCON <= 32'h00000000;
      end
    else
      begin
        if (wen)
          begin
            if (address[3: 0] == 4'h8)
              begin
                TCON <= din;
              end
            else if (address[3: 0] == 4'h4)
              begin
                TL <= din;
              end
            else
              begin
                TH <= din;
              end
          end
        else
          begin
            if (TCON[0])
              begin
                if ( & TL)
                  begin
                    TL <= TH;
                    TCON[2] <= TCON[1];
                  end
                else
                  begin
                    TL <= TL + 32'b1;
                  end
              end
          end
      end
  end
endmodule
