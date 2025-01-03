/*
 * @FilePath: CU.v
 * @Author: WangWindow 1598593280@qq.com
 * @Date: 2024-12-26 20:33:00
 * @LastEditors: WangWindow
 * @LastEditTime: 2025-01-03 14:03:36
 * 2024 by WangWindow, All Rights Reserved.
 * @Descripttion: 控制单元 CU
 */

`include "defines.v"

// 控制单元
module CU (
    // input       clk,      // 时钟信号
    input       reset_n,  // 复位信号
    input [5:0] OPcode,   // 操作码
    input [5:0] Func,     // 功能码

    output reg [4:0] ALU_Control,  // ALU 控制信号
    output reg       ALUSrc_B,     // ALU 第二个操作数选择信号
    output reg       RegDst,       // 目的寄存器选择信号
    output reg       MemWrite,     // 内存写使能信号
    output reg       MemRead,      // 内存读使能信号
    output reg       Branch,       // 分支信号
    output reg       Jump,         // 跳转信号
    output reg       MemtoReg,     // 写寄存器数据来源选择信号
    output reg       RegWrite      // 寄存器写使能信号
);
    wire RFormat;  // R 型指令：操作数都是寄存器的算数指令
    wire IFormat_L;  // I 型指令：加载
    wire IFormat_S;  // I 型指令：存储
    wire IFormat_A;  // I 型指令：算术型：操作数是寄存器和立即数的算数指令
    wire IFormat_B;  // I 型指令：分支型：分支型指令使用到减法操作
    wire JFormat;  // J 型指令
    wire MVFormat;  // MV 型指令
    wire [2:0] ALU_op;  // ALU 操作类型
    wire [4:0] ALU_Control_t;

    // 控制信号生成
    // 由于一条指令只可能为一种类型，所以只有一个信号为1，其余为0
    nor nor1 (RFormat, OPcode[5], OPcode[4], OPcode[3], OPcode[2], OPcode[1], OPcode[0]);  // 000000
    and and5b1 (IFormat_L, OPcode[5], ~OPcode[4], ~OPcode[3]);  // 100xxx
    and and5b2 (IFormat_S, OPcode[5], ~OPcode[4], OPcode[3]);  // 101xxx
    and and5b3 (IFormat_A, ~OPcode[5], ~OPcode[4], OPcode[3]);  // 001xxx
    and and5b4 (IFormat_B, ~OPcode[5], ~OPcode[4], ~OPcode[3], OPcode[2]);  // 0001xx
    and and5b5 (JFormat, ~OPcode[5], ~OPcode[4], ~OPcode[3], ~OPcode[2], OPcode[1]);  // 00001x
    and and5b6 (MVFormat, ~OPcode[5], ~OPcode[4], ~OPcode[3], ~OPcode[2], ~OPcode[1]);  // 00000x

    // 000: IFormat_L/IFormat_S; 100: RFormat; 010: IFormat_A; 001: IFormat_B
    assign ALU_op = {RFormat, IFormat_A, IFormat_B};

    // ALU 控制
    ALU_Ctrl u_ALU_Ctrl (
        // input
        .ALU_op(ALU_op),
        .OPcode(OPcode),
        .Func(Func),
        // output
        .ALU_Control(ALU_Control_t)
    );

    // 控制信号输出
    always @(*) begin
        if (!reset_n) begin
            ALU_Control <= 0;
            ALUSrc_B    <= 0;
            RegDst      <= 0;
            MemWrite    <= 0;
            MemRead     <= 0;
            Branch      <= 0;
            Jump        <= 0;
            MemtoReg    <= 0;
            RegWrite    <= 0;
        end else begin
            ALU_Control <= ALU_Control_t;
            ALUSrc_B    <= IFormat_L | IFormat_S | IFormat_A;
            RegDst      <= RFormat;
            MemWrite    <= IFormat_S;
            MemRead     <= IFormat_L;
            Branch      <= IFormat_B;
            Jump        <= JFormat;
            MemtoReg    <= IFormat_L;
            RegWrite    <= RFormat | IFormat_L | IFormat_A;
        end
    end
endmodule

// ALU 控制模块
module ALU_Ctrl (
    input [2:0] ALU_op,  // ALU 操作类型
    input [5:0] OPcode,  // 操作码
    input [5:0] Func,    // 功能码

    output reg [4:0] ALU_Control  // ALU 控制信号
);
    // ALUOp=100: RFormat    --> 算术逻辑运算
    // ALUOp=010: IFormat_A  --> 算术逻辑运算
    // ALUOp=001: IFormat_B  --> SUB
    // ALUOp=000: IFormat_L  --> ADD
    // ALUOp=000: IFormat_S  --> ADD

    always @(*) begin
        case (ALU_op)
            3'b000:  ALU_Control = `ADD;  // LW,SW --> ADD
            3'b001:  ALU_Control = `SUB;  // BEQ,BNE
            3'b010: begin
                case (OPcode)
                    6'b001000: ALU_Control = `ADD;  // ADDI
                    6'b001001: ALU_Control = `ADD;  // ADDIU
                    6'b001010: ALU_Control = `SLT;  // SLTI
                    6'b001011: ALU_Control = `SLT;  // SLTIU
                    6'b001100: ALU_Control = `AND;  // ANDI
                    6'b001101: ALU_Control = `OR;  // ORI
                    6'b001110: ALU_Control = `XOR;  // XORI
                    6'b001111: ALU_Control = `LUI;  // LUI
                    default:   ALU_Control = `ADD;
                endcase
            end
            3'b100: begin  // RFormat
                case (Func)
                    6'b000000: ALU_Control = `SLL;  // SLL
                    6'b000010: ALU_Control = `SRL;  // SRL
                    6'b000011: ALU_Control = `SRA;  // SRA
                    6'b000100: ALU_Control = `SLL;  // SLLV
                    6'b000110: ALU_Control = `SRL;  // SRLV
                    6'b000111: ALU_Control = `SRA;  // SRAV
                    6'b010000: ALU_Control = `MFHI;  // MFHI
                    6'b010010: ALU_Control = `MFLO;  // MFLO
                    6'b011000: ALU_Control = `MUL;  // MULT
                    6'b011001: ALU_Control = `MULU;  // MULTU
                    6'b011010: ALU_Control = `DIV;  // DIV
                    6'b011011: ALU_Control = `DIVU;  // DIVU
                    6'b100000: ALU_Control = `ADD;  // ADD
                    6'b100001: ALU_Control = `ADD;  // ADDU
                    6'b100010: ALU_Control = `SUB;  // SUB
                    6'b100011: ALU_Control = `SUB;  // SUBU
                    6'b100100: ALU_Control = `AND;  // AND
                    6'b100101: ALU_Control = `OR;  // OR
                    6'b100110: ALU_Control = `XOR;  // XOR
                    6'b100111: ALU_Control = `NOR;  // NOR
                    6'b101010: ALU_Control = `SLT;  // SLT
                    6'b101011: ALU_Control = `SLTU;  // SLTU
                    default:   ALU_Control = `ADD;
                endcase
            end
            default: ALU_Control = `ADD;
        endcase
    end
endmodule
