/*
 * @FilePath: defines.v
 * @Author: WangWindow 1598593280@qq.com
 * @Date: 2024-12-30 15:36:37
 * @LastEditors: WangWindow
 * @LastEditTime: 2024-12-30 15:37:00
 * 2024 by WangWindow, All Rights Reserved.
 * @Descripttion: 宏定义
 */

// CPU 时钟分频系数
`define CPU_CLK_DIV 2500_000

// 指令处理状态
`define IF 3'b000
`define ID 3'b001
`define EX 3'b010
`define MEM 3'b011
`define WB 3'b100

// ALU_Ctrl 操作类型
`define SLL 5'b00000
`define SRL 5'b00001
`define SRA 5'b00010
`define MUL 5'b00011
`define MULU 5'b00100
`define DIV 5'b00101
`define DIVU 5'b00110
`define LUI 5'b00111
`define ADD 5'b01000
`define SUB 5'b01001
`define AND 5'b01010
`define OR 5'b01011
`define XOR 5'b01100
`define NOR 5'b01101
`define SLT 5'b01110
`define SLTU 5'b01111
`define MFHI 5'b10000
`define MFLO 5'b10001
