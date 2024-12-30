/*
 * @FilePath: CPU.v
 * @Author: WangWindow 1598593280@qq.com
 * @Date: 2024-10-08 10:05:04
 * @LastEditors: WangWindow
 * @LastEditTime: 2024-12-29 20:34:55
 * 2024 by WangWindow, All Rights Reserved.
 * @Descripttion: CPU
 */

`define CPU_CLK_DIV 2500_000
`define IF 3'b000
`define ID 3'b001
`define EX 3'b010
`define MEM 3'b011
`define WB 3'b100

// CPU
module CPU (
    input en,  // CPU 使能信号
    input clk,  // CPU时钟信号
    input reset_n,  // 复位信号
    output reg [31:0] result  // 输出结果
);
    // CPU 内部复杂模块的使能信号
    reg CU_en;
    reg ALU_en;

    reg [7:0] memory[0:3];

    // 取指阶段
    wire [31:0] Instruction;  // 指令
    reg [31:0] IR;  // 指令寄存器中的数据
    reg [31:0] PC;  // 程序计数器中的数据
    reg [31:0] Next_PC;  // 下一条指令的地址
    reg [5:0] OPcode;  // 操作码
    reg [5:0] Func;  // 功能码

    // CU 译码阶段获取的信号
    reg [4:0] waddr;  // 寄存器堆写地址
    reg [31:0] wdata;  // 寄存器堆写数据
    reg [4:0] raddr1;  // 寄存器堆读地址1
    reg [4:0] raddr2;  // 寄存器堆读地址2
    wire [31:0] rdata1;  // 寄存器堆读数据1
    wire [31:0] rdata2;  // 寄存器堆读数据2
    reg [31:0] Immediate;  // 立即数
    reg [31:0] ALU_in1;  // ALU 输入1
    reg [31:0] ALU_in2;  // ALU 输入2

    // CU 输出信号
    wire RegDst;
    wire ALUSrc_B;
    wire MemtoReg;
    wire Jump;
    wire Branch;
    wire RegWrite;
    wire MemRead;
    wire MemWrite;
    wire [3:0] ALU_Control;

    // ALU 输出信号
    wire ALU_zero;  // ALU 结果零标志
    wire ALU_overflow;  // ALU 结果溢出标志;
    wire ALU_signed;  // ALU 结果有符号标志
    wire [31:0] ALU_out;  // ALU 输出
    wire [31:0] ALU_Hi;  // ALU 高位输出
    wire [31:0] ALU_Lo;  // ALU 低位输出

    // 关于 PC 的信号
    wire Zero_Branch = ALU_zero & Branch;  // 零分支
    wire [31:0] PC_Add_4 = PC + 4;  // PC + 4
    reg [31:0] PC_b;  // 分支地址
    reg [31:0] Jump_addr;  // 跳转地址
    reg [31:0] Next_PC_t;  // 下一条指令的地址

    wire [31:0] DataMem_out;  // 数据存储器的数据输出

    always @(posedge clk) begin
        result <= IR;
    end

    // 状态机
    reg [2:0] state, next_state;
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            state <= `IF;
        end else if (en) begin
            state <= next_state;
        end else begin
            state <= `IF;
        end
    end
    always @(*) begin
        case (state)
            `IF: begin
                CU_en <= 1'b0;
                ALU_en <= 1'b0;
                PC <= Next_PC;
                IR <= Instruction;
                next_state <= `ID;
            end
            `ID: begin
                CU_en <= 1'b1;
                ALU_en <= 1'b0;
                OPcode <= IR[31:26];
                Func <= IR[5:0];
                raddr1 <= IR[25:21];
                raddr2 <= IR[20:16];
                Immediate <= {{16{IR[15]}}, IR[15:0]};
                next_state <= `EX;
            end
            `EX: begin
                CU_en <= 1'b0;
                ALU_en <= 1'b1;
                ALU_in1 <= rdata1;
                ALU_in2 <= (ALUSrc_B) ? Immediate : rdata2;
                PC_b <= {Immediate[29:0], 2'b0} + PC_Add_4;
                Jump_addr <= {PC_Add_4[31:28], {IR[25:21], 2'b0}};
                Next_PC_t <= (Zero_Branch) ? PC_b : PC_Add_4;
                Next_PC <= (Jump) ? Jump_addr : Next_PC_t;
                next_state <= `MEM;
            end
            `MEM: begin
                CU_en <= 1'b0;
                ALU_en <= 1'b0;
                next_state <= `WB;
            end
            `WB: begin
                waddr <= (RegDst) ? IR[15:11] : IR[20:16];
                wdata <= (MemtoReg) ? DataMem_out : ALU_out;
                next_state <= `IF;
            end
            default: begin
                next_state <= `IF;
            end
        endcase
    end


    // TODO: Instruction Memory 模块实例化
    reg Instruction_Memory_en = 1;
    wire Instruction_Memory_clk = clk;
    MyRom u_Instruction_Memory (
        .clka(Instruction_Memory_clk),  // input wire clka
        .ena(Instruction_Memory_en),  // input wire ena
        .addra(PC >> 2),  // input wire [7 : 0] addra
        .douta(Instruction)  // output wire [31 : 0] douta
    );

    // ROM u_Instruction_Memory (
    //     .raddr(PC),
    //     .rdata(Instruction)
    // );

    // TODO: 控制单元模块实例化
    CU u_CU (
        .clk        (clk),
        .reset_n    (reset_n),
        .OPcode     (OPcode),
        .Func       (Func),
        .RegDst     (RegDst),
        .ALUSrc_B   (ALUSrc_B),
        .MemtoReg   (MemtoReg),
        .Jump       (Jump),
        .Branch     (Branch),
        .RegWrite   (RegWrite),
        .ALU_Control(ALU_Control),
        .MemRead    (MemRead),
        .MemWrite   (MemWrite)
    );

    // TODO: 寄存器堆模块(32个通用寄存器)实例化
    Register_file u_Register_file (
        .clk    (clk),
        .reset_n(reset_n),
        .re     (CU_en),
        .we     (RegWrite),
        .waddr  (waddr),
        .raddr1 (raddr1),
        .raddr2 (raddr2),
        .wdata  (wdata),
        .rdata1 (rdata1),
        .rdata2 (rdata2)
    );

    // TODO: ALU 模块实例化
    ALU u_ALU (
        .A          (ALU_in1),
        .B          (ALU_in2),
        .ALU_Control(ALU_Control),
        .ALU_Result (ALU_out),
        .Hi         (ALU_Hi),
        .Lo         (ALU_Lo),
        .Zero       (ALU_zero),
        .Overflow   (ALU_overflow),
        .Signed     (ALU_signed)
    );

    // TODO: Data Memory 模块实例化
    reg Data_Memory_en = 1;
    wire Data_Memory_clk = clk;
    MyRam u_Data_Memory (
        .clka(Data_Memory_clk),  // input wire clka
        .ena(Data_Memory_en),  // input wire ena
        .wea(MemWrite),  // input wire [0 : 0] wea
        .addra(ALU_out >> 2),  // input wire [7 : 0] addra
        .dina(rdata2),  // input wire [31 : 0] dina
        .douta(DataMem_out)  // output wire [31 : 0] douta
    );

    // RAM u_Data_Memory (
    //     .re   (MemRead),
    //     .we   (MemWrite),
    //     .addr (ALU_out),
    //     .wdata(rdata2),
    //     .rdata(DataMem_out)
    // );

    // TODO: 初始化和复位
    initial begin
        $display("CPU start");
        Next_PC <= 32'b0;
    end

endmodule
