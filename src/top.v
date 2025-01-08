/*
 * @FilePath: top.v
 * @Author: WangWindow 1598593280@qq.com
 * @Date: 2024-11-02 00:22:38
 * @LastEditors: WangWindow
 * @LastEditTime: 2025-01-07 18:34:00
 * 2024 by WangWindow, All Rights Reserved.
 * @Descripttion: 顶层文件
 */

`include "defines.v"

module top (
    input  sys_clk,  // 时钟信号
    input  reset_n,  // 复位信号
    output sh_cp,
    output st_cp,
    output ds
);
    reg CPU_en;
    reg Show_en;
    wire [31:0] result;  // CPU计算结果
    wire [31:0] display_data;  // 用于显示的BCD码
    wire [7:0] sel;  // 数码管位选（选择当前要显示的数码管）
    wire [6:0] seg;  // 数码管段选（当前要显示的内容）

    // CPU 时钟模块实例化
    wire clk;
    CLK_DIV #(
        .DIV(`CPU_CLK_DIV)
    ) u_CLK_DIV (
        // input
        .clk    (sys_clk),
        .reset_n(reset_n),
        // output
        .clk_div(clk)
    );

    // CPU 实例化
    CPU u_CPU (
        // input
        .en     (CPU_en),
        .clk    (clk),
        .reset_n(reset_n),
        // output
        .result (result)
    );

    // 转换模块实例化
    BinaryToBCD u_BinaryToBCD (
        // input
        .binary(result),
        // output
        .bcd(display_data)
    );

    // 数码管显示模块实例化
    Show_Gen u_Show_Gen (
        // input
        .clk(sys_clk),
        .reset_n(reset_n),
        .en(Show_en),
        .data(display_data),
        // output
        .sel(sel),
        .seg(seg)
    );
    HC595_Driver u_HC595_Driver (
        // input
        .clk(sys_clk),
        .reset_n(reset_n),
        .data({1'd1, seg, sel}),
        .s_en(Show_en),
        // output
        .sh_cp(sh_cp),
        .st_cp(st_cp),
        .ds(ds)
    );

    initial begin
        CPU_en  = 1'b1;
        Show_en = 1'b1;
    end

endmodule
