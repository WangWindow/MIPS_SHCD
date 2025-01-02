/*
 * @FilePath: Memory.v
 * @Author: WangWindow 1598593280@qq.com
 * @Date: 2024-10-08 10:11:29
 * @LastEditors: WangWindow
 * @LastEditTime: 2024-11-06 15:32:34
 * 2024 by WangWindow, All Rights Reserved.
 * @Descripttion: 内存
 */

`define MEMORY_FILE "it.txt"

// 内存中的数据存储顺序可以是小端或大端。
// 寄存器中的数据是直接访问的，不涉及地址，因此没有大小端的概念

// RAM
module RAM (
    input re,  // 读使能
    input we,  // 写使能
    input [31:0] addr,  // 地址
    input [31:0] wdata,  // 写入数据

    output reg [31:0] rdata  // 读出数据
);
    reg [7:0] Mem[0:1023];  // 1 KB 存储空间

    // 读写操作
    always @(*) begin
        if (we) begin
            Mem[addr]   <= wdata[7:0];
            Mem[addr+1] <= wdata[15:8];
            Mem[addr+2] <= wdata[23:16];
            Mem[addr+3] <= wdata[31:24];
        end
        if (re) begin
            rdata <= {Mem[addr+3], Mem[addr+2], Mem[addr+1], Mem[addr]};
        end else begin
            rdata <= rdata;
        end
    end
endmodule

// ROM
// module ROM (
//     input [31:0] raddr,  // 读取地址
//     output reg [31:0] rdata  // 读出数据
// );
//     reg [7:0] memory[0:1023];  // 1 KB 存储空间
//     reg [31:0] temp_memory[0:255];  // 临时存储 32 位数据

//     // 读操作
//     always @(raddr) begin
//         rdata <= {memory[raddr+3], memory[raddr+2], memory[raddr+1], memory[raddr]};
//     end

//     integer i;
//     initial begin
//         $readmemb(`MEMORY_FILE, temp_memory);
//         // 初始化 memory
//         for (i = 0; i < 1024; i = i + 1) begin
//             memory[i] <= 8'b0;
//         end

//         for (i = 0; i < 256; i = i + 1) begin
//             memory[(i<<2)]   <= temp_memory[i][7:0];
//             memory[(i<<2)+1] <= temp_memory[i][15:8];
//             memory[(i<<2)+2] <= temp_memory[i][23:16];
//             memory[(i<<2)+3] <= temp_memory[i][31:24];
//         end
//     end
// endmodule
module ROM (
    input [31:0] raddr,  // 读取地址

    output reg [31:0] rdata  // 读出数据
);
    reg [7:0] memory[0:255];  // 1 KB 存储空间

    // 读操作
    always @(*) begin
        rdata <= {memory[raddr+3], memory[raddr+2], memory[raddr+1], memory[raddr]};
    end

    initial begin
        {memory[3], memory[2], memory[1], memory[0]} = 32'b00100001000010000000000000001010;
        {memory[7], memory[6], memory[5], memory[4]} = 32'b00100001001010010000000000010100;
        {memory[11], memory[10], memory[9], memory[8]} = 32'b00000001000010010101000000100000;
        {memory[15], memory[14], memory[13], memory[12]} = 32'b00000001010010110100100000100100;
        {memory[19], memory[18], memory[17], memory[16]} = 32'b00000001011011000101000000100101;
        {memory[23], memory[22], memory[21], memory[20]} = 32'b00000001010011010100100000100110;
        {memory[27], memory[26], memory[25], memory[24]} = 32'b00110001110011010000000001100100;
        {memory[31], memory[30], memory[29], memory[28]} = 32'b00110101111011110000000011001000;
        {memory[35], memory[34], memory[33], memory[32]} = 32'b00111001010010010000000000110010;
        {memory[39], memory[38], memory[37], memory[36]} = 32'b00001000000000000000000000000000;
    end
endmodule
