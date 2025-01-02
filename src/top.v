/*
 * @FilePath: top.v
 * @Author: WangWindow 1598593280@qq.com
 * @Date: 2024-11-02 00:22:38
 * @LastEditors: WangWindow
 * @LastEditTime: 2024-12-29 16:09:36
 * 2024 by WangWindow, All Rights Reserved.
 * @Descripttion: 顶层文件
 */

`include "defines.v"

module top (
    input sys_clk,  // 时钟信号
    input reset_n,  // 复位信号

    output sh_cp,  // 移位寄存器时钟
    output st_cp,  // 移位寄存器存储
    output ds  //串行数据
);
    reg CPU_en;  // CPU 使能信号
    reg Show_en;  // 数码管显示使能信号
    wire [31:0] result;  // CPU计算结果
    wire cpu_clk;  // CPU时钟

    // 时钟分频模块实例化
    CLK_DIV #(
        .DIV(`CPU_CLK_DIV)
    ) u_CLK_DIV (
        // input
        .clk    (sys_clk),
        .reset_n(reset_n),
        // output
        .clk_div(cpu_clk)
    );

    // CPU 实例化
    CPU u_CPU (
        // input
        .en     (CPU_en),
        .clk    (cpu_clk),
        .reset_n(reset_n),
        // output
        .result (result)
    );

    // 控制 8 个数码管动态显示的模块实例化
    Show u_Show (
        // input
        .en     (Show_en),
        .clk    (sys_clk),
        .reset_n(reset_n),
        .data   (result),
        // output
        .sh_cp  (sh_cp),
        .st_cp  (st_cp),
        .ds     (ds)
    );

    initial begin
        CPU_en  = 1'b1;
        Show_en = 1'b1;
    end

endmodule
