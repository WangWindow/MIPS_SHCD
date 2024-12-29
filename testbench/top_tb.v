`timescale 1ns / 1ns

module top_tb;

    // 输入信号
    reg sys_clk;
    reg reset_n;

    // 输出信号
    wire sh_cp;
    wire st_cp;
    wire ds;

    // 实例化顶层模块
    top uut (
        .sys_clk(sys_clk),
        .reset_n(reset_n),
        .sh_cp(sh_cp),
        .st_cp(st_cp),
        .ds(ds)
    );

    // 时钟生成
    always #10 sys_clk = ~sys_clk;  // 20ns 时钟周期，即 50MHz

    // 初始化输入信号
    initial begin
        sys_clk = 0;
        reset_n = 1;
        #10 reset_n = 0;
        #10 reset_n = 1;
    end

endmodule
