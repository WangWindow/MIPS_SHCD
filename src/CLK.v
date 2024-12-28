/*
 * @FilePath: CLK.v
 * @Author: WangWindow 1598593280@qq.com
 * @Date: 2024-10-08 11:42:22
 * @LastEditors: WangWindow
 * @LastEditTime: 2024-11-06 09:24:02
 * 2024 by WangWindow, All Rights Reserved.
 * @Descripttion: 时钟模块
 */

module CLK_DIV #(
    parameter DIV = 8  // 分频系数
) (
    input clk,  // 时钟信号
    input  reset_n,  // 复位信号
    output reg clk_div     // 时钟信号
);
    reg [31:0] cnt;  // 计数器

    // 分频
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            cnt <= 32'b0;
        end else begin
            if (cnt == DIV - 1) begin
                cnt <= 32'b0;
            end else begin
                cnt <= cnt + 1;
            end
        end
    end

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            clk_div <= 1'b0;
        end else begin
            if (cnt == DIV - 1) begin
                clk_div <= ~clk_div;
            end else begin
                clk_div <= clk_div;
            end
        end
    end

    initial begin
        cnt <= 32'b0;
        clk_div <= 0;
    end

endmodule
