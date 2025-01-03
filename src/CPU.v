/*
 * @FilePath: CPU.v
 * @Author: WangWindow 1598593280@qq.com
 * @Date: 2024-10-08 10:05:04
 * @LastEditors: WangWindow
 * @LastEditTime: 2025-01-03 14:48:24
 * 2024 by WangWindow, All Rights Reserved.
 * @Descripttion: CPU
 */

`include "defines.v"

// CPU
module CPU (
    input en,  // CPU 使能信号
    input clk,  // CPU时钟信号
    input reset_n,  // 复位信号

    output reg [31:0] result  // 输出结果
);
    // TODO: CPU 内部信号
    // $$ 取指阶段
    reg  [31:0] PC;  // 程序计数器中的数据
    reg  [31:0] IR;  // 指令寄存器中的数据
    wire [31:0] if_Instruction;
    wire        if_Zero_Branch;
    wire        if_Jump;
    wire [31:0] if_Branch_addr;
    wire [31:0] if_PC_Add_4;
    wire [31:0] if_Jump_addr;
    wire [31:0] if_Next_PC_t;
    wire [31:0] if_Next_PC;

    // $$ 取指/译码阶段的寄存器
    wire [31:0] IF_ID_IR;
    wire [31:0] IF_ID_PC;

    // $$ 译码阶段
    // 译码阶段 CU 输入信号
    wire [ 5:0] id_OPcode;
    wire [ 5:0] id_Func;
    // 译码阶段 CU 输出状态信号
    wire [ 4:0] id_ALU_Control;
    wire        id_ALUSrc_B;
    wire        id_RegDst;
    wire        id_MemWrite;
    wire        id_MemRead;
    wire        id_Branch;
    wire        id_Jump;
    wire        id_MemtoReg;
    wire        id_RegWrite;
    // 译码阶段获取其他信号
    wire        id_RegWrite_back;
    wire [ 4:0] id_rs_addr;
    wire [ 4:0] id_rt_addr;
    wire [ 4:0] id_rd_addr;
    wire [31:0] id_Immediate;
    wire [31:0] id_Jump_addr;
    wire [ 4:0] id_Regs_waddr;
    wire [31:0] id_Regs_wdata;
    wire [31:0] id_Regs_raddr1;
    wire [31:0] id_Regs_raddr2;
    wire [31:0] id_Regs_rdata1;
    wire [31:0] id_Regs_rdata2;
    // 译码阶段传递的信号
    wire [31:0] id_PC;

    // $$ 译码/执行阶段的寄存器
    wire [ 4:0] ID_EX_ALU_Control;
    wire        ID_EX_ALUSrc_B;
    wire        ID_EX_RegDst;
    wire        ID_EX_MemWrite;
    wire        ID_EX_MemRead;
    wire        ID_EX_Branch;
    wire        ID_EX_Jump;
    wire        ID_EX_MemtoReg;
    wire        ID_EX_RegWrite;
    wire [31:0] ID_EX_PC;
    wire [31:0] ID_EX_DATA1;
    wire [31:0] ID_EX_DATA2;
    wire [31:0] ID_EX_IM;
    wire [ 4:0] ID_EX_RT_ADDR;
    wire [ 4:0] ID_EX_RD_ADDR;

    // $$ 执行阶段
    wire [ 4:0] ex_ALU_Control;
    wire        ex_ALUSrc_B;
    wire        ex_RegDst;
    wire        ex_MemWrite;
    wire        ex_MemRead;
    wire        ex_Branch;
    wire        ex_Jump;
    wire        ex_MemtoReg;
    wire        ex_RegWrite;
    wire [31:0] ex_PC;
    wire [31:0] ex_immediate;
    wire [31:0] ex_Data1;
    wire [31:0] ex_Data2;
    wire [ 4:0] ex_rt_addr;
    wire [ 4:0] ex_rd_addr;
    wire [31:0] ex_Branch_addr;
    wire [ 4:0] ex_Regs_waddr_select;
    // 执行阶段 ALU 输入输出信号
    wire [31:0] ex_ALU_in1;
    wire [31:0] ex_ALU_in2;
    wire [31:0] ex_ALU_Result;
    wire [31:0] ex_ALU_Hi;
    wire [31:0] ex_ALU_Lo;
    wire        ex_ALU_zero;
    wire        ex_ALU_over;
    wire        ex_ALU_signed;

    // $$ 执行/访存阶段的寄存器
    wire        EX_MEM_MemWrite;
    wire        EX_MEM_MemRead;
    wire        EX_MEM_Branch;
    wire        EX_MEM_Jump;
    wire        EX_MEM_MemtoReg;
    wire        EX_MEM_RegWrite;
    wire [31:0] EX_MEM_PC;
    wire [31:0] EX_MEM_ALU_RESULT;
    wire [ 2:0] EX_MEM_ALU_SIGN;
    wire [31:0] EX_MEM_MEM_ADDR;
    wire [31:0] EX_MEM_MEM_WDATA;
    wire [ 4:0] EX_MEM_REG_WADDR;

    // $$ 访存阶段
    wire        mem_MemWrite;
    wire        mem_MemRead;
    wire        mem_Branch;
    wire        mem_Jump;
    wire        mem_MemtoReg;
    wire        mem_RegWrite;
    wire        mem_ALU_zero;
    wire        mem_Zero_Branch;
    wire [31:0] mem_PC;
    wire [31:0] mem_DataMemory_addr;
    wire [31:0] mem_DataMemory_wdata;
    wire [31:0] mem_DataMemory_rdata;

    // $$ 访存/写回阶段的寄存器
    wire        MEM_WB_MemtoReg;
    wire        MEM_WB_RegWrite;
    wire [31:0] MEM_WB_MEM_RDATA;
    wire [31:0] MEM_WB_ALU_RESULT;
    wire [ 4:0] MEM_WB_REG_WADDR;

    // $$ 写回阶段
    wire [ 4:0] wb_Regs_waddr;
    wire [31:0] wb_Regs_wdata;
    wire [31:0] wb_Mux_in_0;
    wire [31:0] wb_Mux_in_1;
    wire        wb_RegWrite;
    wire        wb_MemtoReg;

    // TODO: 数据通路
    // $$取指阶段
    assign if_Zero_Branch = mem_Zero_Branch;
    assign if_Jump = id_Jump;
    assign if_Branch_addr = mem_PC;
    assign if_PC_Add_4 = PC + 4;
    assign if_Jump_addr = id_Jump_addr;
    assign if_Next_PC_t = (if_Zero_Branch) ? mem_PC : if_PC_Add_4;
    assign if_Next_PC = (if_Jump) ? if_Jump_addr : if_Next_PC_t;

    // $$译码阶段
    assign id_OPcode = IF_ID_IR[31:26];
    assign id_Func = IF_ID_IR[5:0];
    assign id_RegWrite_back = wb_RegWrite;
    assign id_rs_addr = IF_ID_IR[25:21];
    assign id_rt_addr = IF_ID_IR[20:16];
    assign id_rd_addr = IF_ID_IR[15:11];
    assign id_Immediate = {{16{IF_ID_IR[15]}}, IF_ID_IR[15:0]};
    assign id_Jump_addr = {IF_ID_PC[31:28], {IF_ID_IR[25:21], 2'b0}};
    assign id_Regs_waddr = wb_Regs_waddr;
    assign id_Regs_wdata = wb_Regs_wdata;
    assign id_Regs_raddr1 = id_rs_addr;
    assign id_Regs_raddr2 = id_rt_addr;
    assign id_PC = IF_ID_PC;

    // $$执行阶段
    assign ex_ALU_Control = ID_EX_ALU_Control;
    assign ex_ALUSrc_B = ID_EX_ALUSrc_B;
    assign ex_RegDst = ID_EX_RegDst;
    assign ex_MemWrite = ID_EX_MemWrite;
    assign ex_MemRead = ID_EX_MemRead;
    assign ex_Branch = ID_EX_Branch;
    assign ex_Jump = ID_EX_Jump;
    assign ex_MemtoReg = ID_EX_MemtoReg;
    assign ex_RegWrite = ID_EX_RegWrite;
    assign ex_PC = ID_EX_PC;
    assign ex_immediate = ID_EX_IM;
    assign ex_Data1 = ID_EX_DATA1;
    assign ex_Data2 = ID_EX_DATA2;
    assign ex_ALU_in1 = ex_Data1;
    assign ex_ALU_in2 = (ex_ALUSrc_B) ? ex_immediate : ex_Data2;
    assign ex_rt_addr = ID_EX_RT_ADDR;
    assign ex_rd_addr = ID_EX_RD_ADDR;
    assign ex_Branch_addr = {ID_EX_IM[29:0], 2'b0} + ID_EX_PC;
    assign ex_Regs_waddr_select = (ex_RegDst) ? ex_rd_addr : ex_rt_addr;

    // $$访存阶段
    assign mem_MemWrite = EX_MEM_MemWrite;
    assign mem_MemRead = EX_MEM_MemRead;
    assign mem_Branch = EX_MEM_Branch;
    assign mem_Jump = EX_MEM_Jump;
    assign mem_MemtoReg = EX_MEM_MemtoReg;
    assign mem_RegWrite = EX_MEM_RegWrite;
    assign mem_ALU_zero = EX_MEM_ALU_SIGN[2];
    assign mem_Zero_Branch = mem_ALU_zero & mem_Branch;
    assign mem_PC = EX_MEM_PC;
    assign mem_DataMemory_addr = EX_MEM_MEM_ADDR;
    assign mem_DataMemory_wdata = EX_MEM_MEM_WDATA;

    // $$写回阶段
    assign wb_Regs_waddr = MEM_WB_REG_WADDR;
    assign wb_Regs_wdata = wb_MemtoReg ? wb_Mux_in_1 : wb_Mux_in_0;
    assign wb_Mux_in_0 = MEM_WB_ALU_RESULT;
    assign wb_Mux_in_1 = MEM_WB_MEM_RDATA;
    assign wb_RegWrite = MEM_WB_RegWrite;
    assign wb_MemtoReg = MEM_WB_MemtoReg;

    // 其他信号
    reg [31:0] Hi;  // Hi 寄存器
    reg [31:0] Lo;  // Lo 寄存器
    always @(*) begin
        IR <= if_Instruction;
        Hi <= ex_ALU_Hi;
        Lo <= ex_ALU_Lo;
    end

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            PC <= 32'b0;
        end else begin
            PC <= if_Next_PC;
        end
    end

    //! 输出结果
    always @(posedge clk) begin
        result <= id_Regs_wdata;
    end

    // TODO: IF/ID 流水线寄存器
    IF_ID_Regs u_IF_ID_Regs (
        // input
        .clk(clk),
        .reset_n(reset_n),
        .en(en),
        .IR(if_Instruction),
        .PC(if_PC_Add_4),
        // output
        .IF_ID_IR(IF_ID_IR),
        .IF_ID_PC(IF_ID_PC)
    );

    // TODO: ID/EX 流水线寄存器
    ID_EX_Regs u_ID_EX_Regs (
        // input
        .clk(clk),
        .reset_n(reset_n),
        .en(en),
        .ALU_Control(id_ALU_Control),
        .ALUSrc_B(id_ALUSrc_B),
        .RegDst(id_RegDst),
        .MemWrite(id_MemWrite),
        .MemRead(id_MemRead),
        .Branch(id_Branch),
        .Jump(id_Jump),
        .MemtoReg(id_MemtoReg),
        .RegWrite(id_RegWrite),
        .id_PC(id_PC),
        .rdata1(id_Regs_rdata1),
        .rdata2(id_Regs_rdata2),
        .immediate(id_Immediate),
        .rt_addr(id_rt_addr),
        .rd_addr(id_rd_addr),
        // output
        .ID_EX_ALU_Control(ID_EX_ALU_Control),
        .ID_EX_ALUSrc_B(ID_EX_ALUSrc_B),
        .ID_EX_RegDst(ID_EX_RegDst),
        .ID_EX_MemWrite(ID_EX_MemWrite),
        .ID_EX_MemRead(ID_EX_MemRead),
        .ID_EX_Branch(ID_EX_Branch),
        .ID_EX_Jump(ID_EX_Jump),
        .ID_EX_MemtoReg(ID_EX_MemtoReg),
        .ID_EX_RegWrite(ID_EX_RegWrite),
        .ID_EX_PC(ID_EX_PC),
        .ID_EX_DATA1(ID_EX_DATA1),
        .ID_EX_DATA2(ID_EX_DATA2),
        .ID_EX_IM(ID_EX_IM),
        .ID_EX_RT_ADDR(ID_EX_RT_ADDR),
        .ID_EX_RD_ADDR(ID_EX_RD_ADDR)
    );

    // TODO: EX/MEM 流水线寄存器
    EX_MEM_Regs u_EX_MEM_Regs (
        // input
        .clk(clk),
        .reset_n(reset_n),
        .en(en),
        .MemWrite(ex_MemWrite),
        .MemRead(ex_MemRead),
        .Branch(ex_Branch),
        .Jump(ex_Jump),
        .MemtoReg(ex_MemtoReg),
        .RegWrite(ex_RegWrite),
        .Branch_addr(ex_Branch_addr),
        .ALU_Result(ex_ALU_Result),
        .ALU_Sign({ex_ALU_zero, ex_ALU_over, ex_ALU_signed}),
        .DATA2(ex_Data2),
        .Regs_waddr_select(ex_Regs_waddr_select),
        // output
        .EX_MEM_MemWrite(EX_MEM_MemWrite),
        .EX_MEM_MemRead(EX_MEM_MemRead),
        .EX_MEM_Branch(EX_MEM_Branch),
        .EX_MEM_Jump(EX_MEM_Jump),
        .EX_MEM_MemtoReg(EX_MEM_MemtoReg),
        .EX_MEM_RegWrite(EX_MEM_RegWrite),
        .EX_MEM_PC(EX_MEM_PC),
        .EX_MEM_ALU_RESULT(EX_MEM_ALU_RESULT),
        .EX_MEM_ALU_SIGN(EX_MEM_ALU_SIGN),
        .EX_MEM_MEM_ADDR(EX_MEM_MEM_ADDR),
        .EX_MEM_MEM_WDATA(EX_MEM_MEM_WDATA),
        .EX_MEM_REG_WADDR(EX_MEM_REG_WADDR)
    );

    // TODO: MEM/WB 流水线寄存器
    MEM_WB_Regs u_MEM_WB_Regs (
        // input
        .clk(clk),
        .reset_n(reset_n),
        .en(en),
        .MemtoReg(mem_MemtoReg),
        .RegWrite(mem_RegWrite),
        .DataMemory_rdata(mem_DataMemory_rdata),
        .EX_MEM_MEM_ADDR(EX_MEM_MEM_ADDR),
        .EX_MEM_REG_WADDR(EX_MEM_REG_WADDR),
        // output
        .MEM_WB_MemtoReg(MEM_WB_MemtoReg),
        .MEM_WB_RegWrite(MEM_WB_RegWrite),
        .MEM_WB_MEM_RDATA(MEM_WB_MEM_RDATA),
        .MEM_WB_ALU_RESULT(MEM_WB_ALU_RESULT),
        .MEM_WB_REG_WADDR(MEM_WB_REG_WADDR)
    );

    // TODO: Instruction Memory 模块实例化
    // ROM u_Instruction_Memory (
    //     // input
    //     .raddr(PC),
    //     // output
    //     .rdata(if_Instruction)
    // );
    MyROM u_Instruction_Memory (
        .clka(clk),  // input wire clka
        .ena(en),  // input wire ena
        .addra(PC >> 2),  // input wire [7 : 0] addra
        .douta(if_Instruction)  // output wire [31 : 0] douta
    );

    // TODO: 控制单元模块实例化
    CU u_CU (
        // input
        // .clk        (clk),
        .reset_n    (reset_n),
        .OPcode     (id_OPcode),
        .Func       (id_Func),
        // output
        .ALU_Control(id_ALU_Control),
        .ALUSrc_B   (id_ALUSrc_B),
        .RegDst     (id_RegDst),
        .MemWrite   (id_MemWrite),
        .MemRead    (id_MemRead),
        .Branch     (id_Branch),
        .Jump       (id_Jump),
        .MemtoReg   (id_MemtoReg),
        .RegWrite   (id_RegWrite)
    );

    // TODO: 寄存器堆模块(32个通用寄存器)实例化
    General_Regs u_General_Regs (
        // input
        // .clk    (clk),
        .reset_n(reset_n),
        .re     (en),
        .we     (id_RegWrite_back),
        .waddr  (id_Regs_waddr),
        .wdata  (id_Regs_wdata),
        .raddr1 (id_Regs_raddr1),
        .raddr2 (id_Regs_raddr2),
        // output
        .rdata1 (id_Regs_rdata1),
        .rdata2 (id_Regs_rdata2)
    );

    // TODO: ALU 模块实例化
    ALU u_ALU (
        // input
        // .clk        (clk),
        .reset_n    (reset_n),
        .A          (ex_ALU_in1),
        .B          (ex_ALU_in2),
        .ALU_Control(ex_ALU_Control),
        // output
        .ALU_Result (ex_ALU_Result),
        .Hi         (ex_ALU_Hi),
        .Lo         (ex_ALU_Lo),
        .Zero       (ex_ALU_zero),
        .Over       (ex_ALU_over),
        .Signed     (ex_ALU_signed)
    );

    // TODO: Data Memory 模块实例化
    RAM u_Data_Memory (
        // input
        .re(mem_MemRead),
        .we(mem_MemWrite),
        .addr(mem_DataMemory_addr),
        .wdata(mem_DataMemory_wdata),
        // output
        .rdata(mem_DataMemory_rdata)
    );

    // TODO: 初始化和复位
    initial begin
        $display("CPU start");
        PC <= 32'b0;
    end
endmodule
