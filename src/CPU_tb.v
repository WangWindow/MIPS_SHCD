// FILE: test_CPU.v
`timescale 1ns / 1ns

module CPU_tb;
    // Inputs
    reg en;
    reg clk;
    reg reset_n;

    // Outputs
    wire [31:0] result;

    // Instantiate the CPU module
    CPU uut (
        .en(en),
        .clk(clk),
        .reset_n(reset_n),
        .result(result)
    );

    // Clock generation
    always #100 clk = ~clk;

    initial begin
        // 初始化
        en = 0;
        clk = 0;
        reset_n = 1;

        // 复位
        #100 reset_n = 0;
        en = 1;
        #100 reset_n = 1;
    end
endmodule
