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
    input  sys_clk,  // 时钟信号
    input  reset_n,  // 复位信号
    output sh_cp,
    output st_cp,
    output ds
);
    reg CPU_en;
    wire [31:0] result;  // CPU计算结果
    wire [31:0] display_data;  // 用于显示的BCD码
    wire [7:0] sel;  // 数码管位选（选择当前要显示的数码管）
    wire [6:0] seg;  // 数码管段选（当前要显示的内容）

    // CPU 时钟模块实例化
    wire clk;
    CLK_DIV #(
        .DIV(`CPU_CLK_DIV)
    ) u_CLK_DIV (
        .clk    (sys_clk),
        .reset_n(reset_n),
        .clk_div(clk)
    );

    // CPU 实例化
    CPU u_CPU (
        .en     (CPU_en),
        .clk    (clk),
        .reset_n(reset_n),
        .result (result)
    );

    // 结果转换为 BCD 码
    // BinaryToBCD #(
    //     .BINARY_WIDTH(32),
    //     .BCD_WIDTH(32)
    // ) u_BinaryToBCD (
    //     .binary(result),
    //     .bcd   (display_data)
    // );

    // 控制 8 个数码管动态显示的模块实例化
    Show8 u_Show8 (
        .clk(sys_clk),
        .reset_n(reset_n),
        .en(1'b1),
        .display_data(result),
        .sel(sel),
        .seg(seg)
    );
    HC595_Driver u_HC595_Driver (
        .clk(sys_clk),
        .reset_n(reset_n),
        .data({1'd1, seg, sel}),
        .s_en(1'b1),
        .sh_cp(sh_cp),
        .st_cp(st_cp),
        .ds(ds)
    );

    initial begin
        CPU_en = 1'b1;
    end

endmodule
