`timescale  1ns / 1ps

module tb_InstructionMem;

// InstructionMem Parameters
parameter PERIOD = 10;


// InstructionMem Inputs
reg clk = 1 ;
reg reset = 1 ;
reg en = 0 ;
reg wen = 0 ;
reg [30: 0] Address = 0 ;

// InstructionMem Outputs
wire [31: 0] din ;
wire [31: 0] dout ;


initial
  begin
    forever
      #(PERIOD / 2) clk = ~clk;
  end

InstructionMem u_InstructionMem (
                 .clk ( clk ),
                 .reset ( reset ),
                 .en ( en ),
                 .wen ( wen ),
                 .Address ( Address [30: 0] ),

                 .din ( din [31: 0] ),
                 .dout ( dout [31: 0] )
               );

initial
  begin
    #100;
    en <= 1;
    #100;
    reset <= 0;
    
    #300;
    $finish;
  end

always @(posedge clk)
  begin
    if (reset)
      begin
        Address <= 32'h0;
      end
    else
      begin
        Address <= Address + 32'h4;
      end

  end

endmodule
