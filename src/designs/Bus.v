module Bus (
         clk,
         reset,
         en,
         wen,
         Address,
         din,
         dout,
         IRQ,
         led,
         ssdt
       );
input clk, reset, en, wen;
input [31: 0] Address, din;
output [31: 0] dout;
output IRQ;
output [7: 0] led;
output [11: 0] ssdt;

wire Data_Mem_en, Data_Mem_wen;
wire [31: 0] Data_Mem_dout;

wire Timer_en, Timer_wen;
wire [31: 0] Timer_dout;

wire SysTick_en;
wire [31: 0] SysTick_dout;

wire LED_en, LED_wen;
wire [31: 0] LED_dout;

wire SSDT_en, SSDT_wen;
wire [11: 0] ssdt;

assign Data_Mem_en = (Address < 32'h40000000) && en;
assign Data_Mem_wen = (Address < 32'h40000000) && wen;

assign Timer_en = (Address >= 32'h40000000 && Address <= 32'h4000000B) ? en : 0;
assign Timer_wen = (Address >= 32'h40000000 && Address <= 32'h4000000B) ? wen : 0;

assign LED_en = (Address == 32'h4000000C) && en;
assign LED_wen = (Address == 32'h4000000C) && wen;

assign SysTick_en = (Address == 32'h40000014) && en;

assign SSDT_en = (Address == 32'h40000010) && en;
assign SSDT_wen = (Address == 32'h40000010) && wen;

assign led = LED_dout[7 : 0];

assign dout =
       Data_Mem_en ? Data_Mem_dout :
       Timer_en ? Timer_dout :
       SysTick_en ? SysTick_dout :
       LED_en ? LED_dout :
       SSDT_en ? {20'b0, ssdt} : 32'h0;

DataMem data_mem(
          .clk(clk),
          .wen(Data_Mem_wen),
          .Address(Address[10: 2]),
          .din(din),
          .dout(Data_Mem_dout)
        );

Timer timer(
        .clk(clk),
        .reset(reset),
        .en(Timer_en),
        .wen(Timer_wen),
        .address(Address),
        .din(din),
        .dout(Timer_dout),
        .IRQ(IRQ)
      );

SysTick systick(
          .clk(clk),
          .reset(reset),
          .systick(SysTick_dout)
        );

LED leds(
      .clk(clk),
      .reset(reset),
      .wen(LED_wen),
      .din(din),
      .led(LED_dout)
    );

SSDT ssdt_0(
       .clk(clk),
       .reset(reset),
       .wen(SSDT_wen),
       .din(din),
       .ssdt(ssdt)
     );

endmodule
