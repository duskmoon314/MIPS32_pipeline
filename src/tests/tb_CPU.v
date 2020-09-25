`timescale  1ns / 1ps

module tb_CPU;

// CPU Parameters
parameter PERIOD = 10;


// CPU Inputs
reg clk = 0 ;
reg reset = 1 ;

// CPU Outputs

wire [7: 0] led;
wire [11: 0] ssdt;

initial
  begin
    forever
      #(PERIOD / 2) clk = ~clk;
  end

initial
  begin
    #200 reset = 0;
  end

CPU u_CPU (
      .clk ( clk ),
      .reset ( reset ),
      .led(led),
      .ssdt(ssdt)
    );

initial
  begin
    #160000;
    $finish;
  end

endmodule
