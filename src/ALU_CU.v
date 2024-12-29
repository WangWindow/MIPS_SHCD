/*
 * @FilePath: ALU_CU.v
 * @Author: WangWindow 1598593280@qq.com
 * @Date: 2024-10-07 23:37:57
 * @LastEditors: WangWindow
 * @LastEditTime: 2024-11-02 21:41:31
 * 2024 by WangWindow, All Rights Reserved.
 * @Descripttion: ALU 和 CU
 */

`define SLL 4'b0000
`define SRL 4'b0001
`define SRA 4'b0010
`define MUL 4'b0011
`define MULU 4'b0100
`define DIV 4'b0101
`define DIVU 4'b0110
`define LUI 4'b0111
`define ADD 4'b1000
`define SUB 4'b1001
`define AND 4'b1010
`define OR 4'b1011
`define XOR 4'b1100
`define NOR 4'b1101
`define SLT 4'b1110
`define SLTU 4'b1111

// 控制单元
module CU (
    input            clk,          // 时钟信号
    input            reset_n,      // 复位信号
    input      [5:0] OPcode,       // OPcode
    input      [5:0] Func,         // Function
    output reg       RegDst,
    output reg       ALUSrc_B,
    output reg       MemtoReg,
    output reg       Jump,
    output reg       Branch,
    output reg       RegWrite,
    output reg [3:0] ALU_Control,
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
    wire [3:0] ALU_Control_t;

    // 控制信号生成
    // 由于一条指令只可能为一种类型，所以只有一个信号为1，其余为0
    nor nor1 (RFormat, OPcode[5], OPcode[3], OPcode[2], OPcode[1], OPcode[0]);  // 000000
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
            RegDst <= 0;
            ALUSrc_B <= 0;
            MemtoReg <= 0;
            Jump <= 0;
            Branch <= 0;
            RegWrite <= 0;
            MemRead <= 0;
            MemWrite <= 0;
            ALU_Control <= 0;
        end else begin
            RegDst <= RFormat;
            ALUSrc_B <= IFormat_L | IFormat_S | IFormat_A;
            MemtoReg <= IFormat_L;
            Jump <= JFormat;
            Branch <= IFormat_B;
            RegWrite <= RFormat | IFormat_L | IFormat_A;
            MemRead <= IFormat_L;
            MemWrite <= IFormat_S;
            ALU_Control <= ALU_Control_t;
        end
    end
endmodule

// ALU 控制模块
module ALU_Ctrl (
    input [2:0] ALU_op,
    input [5:0] OPcode,
    input [5:0] Func,
    output reg [3:0] ALU_Control
);
    // ALUOp=100: RFormat    do 算术逻辑运算
    // ALUOp=010: IFormat_A  do 算术逻辑运算
    // ALUOp=001: IFormat_B  do SUB
    // ALUOp=000: IFormat_L  do ADD
    // ALUOp=000: IFormat_S  do ADD

    always @(*) begin
        case (ALU_op)
            3'b000:  ALU_Control = 4'b1000;  // LW, SW
            3'b001:  ALU_Control = 4'b1001;  // BEQ, BNE, BLEZ, BGTZ
            3'b010: begin
                case (OPcode)
                    6'b001000: ALU_Control = 4'b1000;  // ADDI
                    6'b001001: ALU_Control = 4'b1000;  // ADDIU
                    6'b001010: ALU_Control = 4'b1110;  // SLTI
                    6'b001011: ALU_Control = 4'b1110;  // SLTIU
                    6'b001100: ALU_Control = 4'b1010;  // ANDI
                    6'b001101: ALU_Control = 4'b1011;  // ORI
                    6'b001110: ALU_Control = 4'b1100;  // XORI
                    6'b001111: ALU_Control = 4'b0111;  // LUI
                    default:   ALU_Control = 4'b0000;
                endcase
            end
            3'b100: begin
                case (Func)
                    6'b000000: ALU_Control = 4'b0000;  // SLL
                    6'b000010: ALU_Control = 4'b0001;  // SRL
                    6'b000011: ALU_Control = 4'b0010;  // SRA
                    6'b000100: ALU_Control = 4'b0000;  // SLLV
                    6'b000110: ALU_Control = 4'b0001;  // SRLV
                    6'b000111: ALU_Control = 4'b0010;  // SRAV
                    6'b011000: ALU_Control = 4'b0011;  // MULT
                    6'b011001: ALU_Control = 4'b0100;  // MULTU
                    6'b011010: ALU_Control = 4'b0101;  // DIV
                    6'b011011: ALU_Control = 4'b0110;  // DIVU
                    6'b100000: ALU_Control = 4'b1000;  // ADD
                    6'b100001: ALU_Control = 4'b1000;  // ADDU
                    6'b100010: ALU_Control = 4'b1001;  // SUB
                    6'b100011: ALU_Control = 4'b1001;  // SUBU
                    6'b100100: ALU_Control = 4'b1010;  // AND
                    6'b100101: ALU_Control = 4'b1011;  // OR
                    6'b100110: ALU_Control = 4'b1100;  // XOR
                    6'b100111: ALU_Control = 4'b1101;  // NOR
                    6'b101010: ALU_Control = 4'b1110;  // SLT
                    6'b101011: ALU_Control = 4'b1111;  // SLTU
                    default:   ALU_Control = 4'b0000;
                endcase
            end
            default: ALU_Control = 4'b0000;  // AND
        endcase
    end
endmodule

// ALU
module ALU (
    input      [31:0] A,            // 操作数A
    input      [31:0] B,            // 操作数B
    input      [ 3:0] ALU_Control,  // ALU 控制信号
    output reg [31:0] ALU_Result,   // ALU 计算结果
    output reg [31:0] Hi,           // 乘法的高位/除法的余数
    output reg [31:0] Lo,           // 乘法的低位/除法的商
    output            Zero,         // 结果是否为0
    output            Overflow,     // 是否溢出
    output            Signed        // 是否为有符号数
);
    reg signed_flag;  // 用于标记是否为有符号数

    // ALU 计算
    always @(ALU_Control or A or B) begin
        case (ALU_Control)
            `SLL: begin
                ALU_Result  = A << B;  // SLL
                signed_flag = 0;
            end
            `SRL: begin
                ALU_Result  = A >> B;  // SRL
                signed_flag = 0;
            end
            `SRA: begin
                ALU_Result  = $signed(A) >>> B;  // SRA
                signed_flag = 1;
            end
            `MUL: begin
                {Hi, Lo} = $signed(A) * $signed(B);  // MUL
                ALU_Result = Lo;
                signed_flag = 1;
            end
            `MULU: begin
                {Hi, Lo} = A * B;  // MULU
                ALU_Result = Lo;
                signed_flag = 0;
            end
            `DIV: begin
                Lo          = $signed(A) / $signed(B);  // DIV
                Hi          = $signed(A) % $signed(B);  // 余数
                ALU_Result  = Lo;
                signed_flag = 1;
            end
            `DIVU: begin
                Lo          = A / B;  // DIVU
                Hi          = A % B;  // 余数
                ALU_Result  = Lo;
                signed_flag = 0;
            end
            `LUI: begin
                ALU_Result  = {B, 16'b0};  // LUI
                signed_flag = 0;
            end
            `ADD: begin
                ALU_Result  = A + B;  // ADD
                signed_flag = 0;
            end
            `SUB: begin
                ALU_Result  = A - B;  // SUB
                signed_flag = 0;
            end
            `AND: begin
                ALU_Result  = A & B;  // AND
                signed_flag = 0;
            end
            `OR: begin
                ALU_Result  = A | B;  // OR
                signed_flag = 0;
            end
            `XOR: begin
                ALU_Result  = A ^ B;  // XOR
                signed_flag = 0;
            end
            `NOR: begin
                ALU_Result  = ~(A | B);  // NOR
                signed_flag = 0;
            end
            `SLT: begin
                ALU_Result  = $signed(A) < $signed(B);  // SLT
                signed_flag = 1;
            end
            `SLTU: begin
                ALU_Result  = A < B;  // SLTU
                signed_flag = 0;
            end
            default: begin
                ALU_Result  = 32'b0;
                Hi          = 32'b0;
                Lo          = 32'b0;
                signed_flag = 0;
            end
        endcase
    end

    assign Zero = (ALU_Result == 0);
    assign Overflow = (ALU_Result[31] != ALU_Result[30]);
    assign Signed = signed_flag;

    initial begin
        ALU_Result <= 32'b0;
        Hi <= 32'b0;
        Lo <= 32'b0;
        signed_flag <= 0;
    end

endmodule
