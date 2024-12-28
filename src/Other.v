/*
 * @FilePath: Other.v
 * @Author: WangWindow 1598593280@qq.com
 * @Date: 2024-10-08 01:47:14
 * @LastEditors: WangWindow
 * @LastEditTime: 2024-11-02 22:29:27
 * 2024 by WangWindow, All Rights Reserved.
 * @Descripttion: 其他模块
 */

// 控制 8 个数码管动态显示的模块
module Show8 (
    input en,  //数码管显示使能
    input clk,  //50M
    input reset_n,  //复位信号,低有效
    input [31:0] display_data,  // 8个BCD码
    output [7:0] sel,  //数码管位选（选择当前要显示的数码管）
    output reg [6:0] seg  //数码管段选（当前要显示的内容）
);
    reg [14:0] divider_cnt;  //25000-1
    reg clk_1K;  //1K扫描时钟
    reg [7:0] sel_r;  //8位循环移位寄存器
    reg [3:0] data_tmp;  //数据缓存

    // 分频计数器计数模块
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) divider_cnt <= 15'd0;
        else if (!en) divider_cnt <= 15'd0;
        else if (divider_cnt == 24999) divider_cnt <= 15'd0;
        else divider_cnt <= divider_cnt + 1'b1;
    end

    // 1K扫描时钟生成模块
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) clk_1K <= 1'b0;
        else if (divider_cnt == 24999) clk_1K <= ~clk_1K;
        else clk_1K <= clk_1K;
    end

    // 8位循环移位寄存器
    always @(posedge clk_1K or negedge reset_n) begin
        if (!reset_n) sel_r <= 8'b0000_0001;
        else if (sel_r == 8'b1000_0000) sel_r <= 8'b0000_0001;
        else sel_r <= sel_r << 1;
    end

    always @(*) begin
        case (sel_r)
            8'b0000_0001: data_tmp = display_data[3:0];
            8'b0000_0010: data_tmp = display_data[7:4];
            8'b0000_0100: data_tmp = display_data[11:8];
            8'b0000_1000: data_tmp = display_data[15:12];
            8'b0001_0000: data_tmp = display_data[19:16];
            8'b0010_0000: data_tmp = display_data[23:20];
            8'b0100_0000: data_tmp = display_data[27:24];
            8'b1000_0000: data_tmp = display_data[31:28];
            default: data_tmp = 4'b0000;
        endcase
    end

    always @(*) begin
        case (data_tmp)
            4'h0: seg = 7'b1000000;
            4'h1: seg = 7'b1111001;
            4'h2: seg = 7'b0100100;
            4'h3: seg = 7'b0110000;
            4'h4: seg = 7'b0011001;
            4'h5: seg = 7'b0010010;
            4'h6: seg = 7'b0000010;
            4'h7: seg = 7'b1111000;
            4'h8: seg = 7'b0000000;
            4'h9: seg = 7'b0010000;
            4'ha: seg = 7'b0001000;
            4'hb: seg = 7'b0000011;
            4'hc: seg = 7'b1000110;
            4'hd: seg = 7'b0100001;
            4'he: seg = 7'b0000110;
            4'hf: seg = 7'b0001110;
        endcase
    end

    assign sel = (en) ? sel_r : 8'b0000_0000;

endmodule

module HC595_Driver (
    input clk,  //50M
    input reset_n,  //复位信号,低有效
    input [15:0] data,  //数据输入
    input s_en,  //数据输入使能
    output reg sh_cp,  //移位寄存器时钟
    output reg st_cp,  //存储寄存器时钟
    output reg ds  //串行数据输入
);

    parameter CNT_MAX = 2;
    wire reset = ~reset_n;

    reg [15:0] r_data;
    always @(posedge clk) begin
        if (s_en) r_data <= data;
    end

    reg [7:0] divider_cnt;  //分频计数器;
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) divider_cnt <= 0;
        else if (divider_cnt == CNT_MAX - 1'b1) divider_cnt <= 0;
        else divider_cnt <= divider_cnt + 1'b1;
    end

    wire sck_plus = (divider_cnt == CNT_MAX - 1'b1);
    reg [5:0] SHCP_EDGE_CNT;
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) SHCP_EDGE_CNT <= 0;
        else if (sck_plus) begin
            if (SHCP_EDGE_CNT == 6'd32) SHCP_EDGE_CNT <= 0;
            else SHCP_EDGE_CNT <= SHCP_EDGE_CNT + 1'b1;
        end else SHCP_EDGE_CNT <= SHCP_EDGE_CNT;
    end

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            st_cp <= 1'b0;
            ds <= 1'b0;
            sh_cp <= 1'd0;
        end else begin
            case (SHCP_EDGE_CNT)
                0: begin
                    sh_cp <= 0;
                    st_cp <= 1'd0;
                    ds <= r_data[15];
                end
                1: begin
                    sh_cp <= 1;
                    st_cp <= 1'd0;
                end
                2: begin
                    sh_cp <= 0;
                    ds <= r_data[14];
                end
                3: begin
                    sh_cp <= 1;
                end
                4: begin
                    sh_cp <= 0;
                    ds <= r_data[13];
                end
                5: begin
                    sh_cp <= 1;
                end
                6: begin
                    sh_cp <= 0;
                    ds <= r_data[12];
                end
                7: begin
                    sh_cp <= 1;
                end
                8: begin
                    sh_cp <= 0;
                    ds <= r_data[11];
                end
                9: begin
                    sh_cp <= 1;
                end
                10: begin
                    sh_cp <= 0;
                    ds <= r_data[10];
                end
                11: begin
                    sh_cp <= 1;
                end
                12: begin
                    sh_cp <= 0;
                    ds <= r_data[9];
                end
                13: begin
                    sh_cp <= 1;
                end
                14: begin
                    sh_cp <= 0;
                    ds <= r_data[8];
                end
                15: begin
                    sh_cp <= 1;
                end
                16: begin
                    sh_cp <= 0;
                    ds <= r_data[7];
                end
                17: begin
                    sh_cp <= 1;
                end
                18: begin
                    sh_cp <= 0;
                    ds <= r_data[6];
                end
                19: begin
                    sh_cp <= 1;
                end
                20: begin
                    sh_cp <= 0;
                    ds <= r_data[5];
                end
                21: begin
                    sh_cp <= 1;
                end
                22: begin
                    sh_cp <= 0;
                    ds <= r_data[4];
                end
                23: begin
                    sh_cp <= 1;
                end
                24: begin
                    sh_cp <= 0;
                    ds <= r_data[3];
                end
                25: begin
                    sh_cp <= 1;
                end
                26: begin
                    sh_cp <= 0;
                    ds <= r_data[2];
                end
                27: begin
                    sh_cp <= 1;
                end
                28: begin
                    sh_cp <= 0;
                    ds <= r_data[1];
                end
                29: begin
                    sh_cp <= 1;
                end
                30: begin
                    sh_cp <= 0;
                    ds <= r_data[0];
                end
                31: begin
                    sh_cp <= 1;
                end
                32: st_cp <= 1'd1;
                default: begin
                    st_cp <= 1'b0;
                    ds <= 1'b0;
                    sh_cp <= 1'd0;
                end
            endcase
        end
    end
endmodule

// 二进制转 BCD 码
module BinaryToBCD #(
    parameter BINARY_WIDTH = 32,
    parameter BCD_WIDTH = 32
) (
    input [BINARY_WIDTH-1:0] binary,  // 参数化位宽的二进制输入
    output reg [BCD_WIDTH-1:0] bcd  // 参数化位宽的BCD输出
);
    integer i, j;
    always @(binary) begin
        bcd = {BCD_WIDTH{1'b0}};  // 初始化BCD输出为0

        // 移位和加3算法
        for (i = BINARY_WIDTH - 1; i >= 0; i = i - 1) begin
            // 检查每个BCD位是否大于等于5
            for (j = 0; j < (BCD_WIDTH >> 2); j = j + 1) begin
                if (bcd[(j<<2)+:4] >= 5) begin
                    bcd[(j<<2)+:4] = bcd[(j<<2)+:4] + 3;
                end
            end
            // 左移一位并添加当前二进制位
            bcd = {bcd[BCD_WIDTH-2:0], binary[i]};
        end
    end
endmodule
