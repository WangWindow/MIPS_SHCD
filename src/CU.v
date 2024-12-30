/*
 * @FilePath: CU.v
 * @Author: WangWindow 1598593280@qq.com
 * @Date: 2024-12-26 20:33:00
 * @LastEditors: WangWindow
 * @LastEditTime: 2024-12-30 16:02:14
 * 2024 by WangWindow, All Rights Reserved.
 * @Descripttion: CU
 */

`include "defines.v"

// 控制单元
module CU (
    input            clk,
    input            reset_n,
    input      [5:0] OPcode,
    input      [5:0] Func,
    output reg       RegDst,
    output reg       ALUSrc_B,
    output reg       MemtoReg,
    output reg       Jump,
    output reg       Branch,
    output reg       RegWrite,
    output reg [4:0] ALU_Control,
    output reg       MemRead,
    output reg       MemWrite
);
    wire RFormat;  // R 型指令：操作数都是寄存器的算数指令
    wire IFormat_L;  // I 型指令：加载
    wire IFormat_S;  // I 型指令：存储
    wire IFormat_A;  // I 型指令：算术型：操作数是寄存器和立即数的算数指令
    wire IFormat_B;  // I 型指令：分支型：分支型指令使用到减法操作
    wire JFormat;  // J 型指令
    wire [2:0] ALU_op;  // ALU 操作类型
    wire [4:0] ALU_Control_t;

    // 控制信号生成
    // 由于一条指令只可能为一种类型，所以只有一个信号为1，其余为0
    nor nor1 (RFormat, OPcode[5], OPcode[4], OPcode[3], OPcode[2], OPcode[1], OPcode[0]);  // 000000
    and and5b1 (IFormat_L, OPcode[5], ~OPcode[3]);  // 100xxx
    and and5b2 (IFormat_S, OPcode[5], OPcode[3]);  // 101xxx
    and and5b3 (IFormat_A, ~OPcode[5], OPcode[3]);  // 001xxx
    and and5b4 (IFormat_B, ~OPcode[5], ~OPcode[3], OPcode[2]);  // 0001xx
    and and5b5 (JFormat, ~OPcode[5], ~OPcode[3], ~OPcode[2], OPcode[1]);  // 00101x

    // 000: IFormat_L/IFormat_S; 100: RFormat; 010: IFormat_A; 001: IFormat_B
    assign ALU_op = {RFormat, IFormat_A, IFormat_B};

    // ALU 控制
    ALU_Ctrl u_ALU_Ctrl (
        .ALU_op     (ALU_op),
        .OPcode     (OPcode),
        .Func       (Func),
        .ALU_Control(ALU_Control_t)
    );

    // 控制信号输出
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            RegDst      <= 0;
            ALUSrc_B    <= 0;
            MemtoReg    <= 0;
            Jump        <= 0;
            Branch      <= 0;
            RegWrite    <= 0;
            MemRead     <= 0;
            MemWrite    <= 0;
            ALU_Control <= 0;
        end else begin
            RegDst      <= RFormat;
            ALUSrc_B    <= IFormat_L | IFormat_S | IFormat_A;
            MemtoReg    <= IFormat_L;
            Jump        <= JFormat;
            Branch      <= IFormat_B;
            RegWrite    <= RFormat | IFormat_L | IFormat_A;
            MemRead     <= IFormat_L;
            MemWrite    <= IFormat_S;
            ALU_Control <= ALU_Control_t;
        end
    end
endmodule

// ALU 控制模块
module ALU_Ctrl (
    input [2:0] ALU_op,
    input [5:0] OPcode,
    input [5:0] Func,
    output reg [4:0] ALU_Control
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
