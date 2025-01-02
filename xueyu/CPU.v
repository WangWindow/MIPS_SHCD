/*
 * @FilePath: CPU.v
 * @Author: WangWindow 1598593280@qq.com
 * @Date: 2024-10-08 10:05:04
 * @LastEditors: WangWindow
 * @LastEditTime: 2024-11-06 14:53:52
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

    // 流水线寄存器
    reg [31:0] IF_ID_IR,IF_ID_PC;  // 取指阶段的指令
    reg [31:0] ID_EX_IM,ID_EX_DATA1,ID_EX_DATA2,ID_EX_PC,ID_EX_IR;  // 译码阶段的指令
    reg [11:0] ID_EX_CU;  // 控制单元输出的信号
    // 执行阶段的指令
    reg [31:0] EX_MEM_ALU,EX_MEM_DATA2;
    reg [4:0] EX_MEM_WADDR;
    reg [2:0] EX_MEM_ALU_sign;
    reg [11:0] EX_MEM_CU;
    reg [31:0] EX_MEM_IR;
    reg [31:0] EX_MEM_NEXT_PC;  //增设一个寄存器保存在EX阶段得到的next_PC

    wire EX_MEM_ALU_zero = EX_MEM_ALU_sign[0];
    wire EX_MEM_ALU_overflow = EX_MEM_ALU_sign[1];
    wire EX_MEM_ALU_signed = EX_MEM_ALU_sign[2];
    wire EX_MEM_RegDst = EX_MEM_CU[0];
    wire EX_MEM_ALUSrc_B = EX_MEM_CU[1];
    wire EX_MEM_MemtoReg = EX_MEM_CU[2];
    wire EX_MEM_Jump = EX_MEM_CU[3];
    wire EX_MEM_Branch = EX_MEM_CU[4];
    wire EX_MEM_RegWrite = EX_MEM_CU[5];
    wire EX_MEM_MemRead = EX_MEM_CU[6];
    wire EX_MEM_MemWrite = EX_MEM_CU[7];
    wire [3:0] EX_MEM_ALU_Control = EX_MEM_CU[8:11];

    // 内存阶段的指令
    reg [31:0] MEM_WB_DATA, MEM_WB_ALU;
    reg [4:0] MEM_WB_WADDR;
    reg [1:0] MEM_WB_CU;
    reg [31:0] MEM_WB_NEXT_PC;

    wire MEM_WB_RegWrite = MEM_WB_CU[0];
    wire MEM_WB_MemtoReg = MEM_WB_CU[1];



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
    wire Zero_Branch;  // 零分支
    wire [31:0] PC_Add_4 = ID_EX_PC + 4;  // PC + 4
    reg [31:0] PC_b;  // 分支地址
    reg [31:0] Jump_addr;  // 跳转地址
    reg [31:0] Next_PC_t;  // 下一条指令的地址

    wire [31:0] DataMem_out;  // 数据存储器的数据输出

    always @(posedge clk) begin
        result <= wdata;
    end


    //流水线寄存器更新
    // IF/ID 流水线寄存器
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            IF_ID_IR <= 32'b0;
            IF_ID_PC <= 32'b0;
        end else if (en) begin
            IF_ID_IR <= IR;
            IF_ID_PC <= PC;
        end
    end

    // ID/EX 流水线寄存器
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            ID_EX_IM <= 32'b0;
            ID_EX_DATA1 <= 32'b0;
            ID_EX_DATA2 <= 32'b0;
            ID_EX_PC <= 32'b0;
            ID_EX_IR <= 32'b0;
            ID_EX_CU <= 12'b0;
        end else if (en) begin
            ID_EX_IM <= Immediate;
            ID_EX_DATA1 <= rdata1;
            ID_EX_DATA2 <= rdata2;
            ID_EX_PC <= IF_ID_PC;
            ID_EX_IR <= IF_ID_IR;
            ID_EX_CU <= {RegDst, ALUSrc_B, MemtoReg, Jump, Branch, RegWrite, MemRead, MemWrite, ALU_Control};
        end
    end

    // EX/MEM 流水线寄存器
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            EX_MEM_ALU <= 32'b0;
            EX_MEM_DATA2 <= 32'b0;
            EX_MEM_WADDR <= 5'b0;
            EX_MEM_ALU_sign <= 3'b0;
            EX_MEM_CU <= 12'b0;
            EX_MEM_IR <= 32'b0;
            EX_MEM_NEXT_PC <= 32'b0;
        end else if (en) begin
            EX_MEM_ALU <= ALU_out;
            EX_MEM_DATA2 <= ID_EX_DATA2;
            EX_MEM_WADDR <= (ID_EX_CU[0]) ? ID_EX_IR[15:11] : ID_EX_IR[20:16];
            EX_MEM_ALU_sign <= {ALU_signed, ALU_overflow, ALU_zero};
            EX_MEM_CU <= ID_EX_CU;
            EX_MEM_IR <= ID_EX_IR;
            EX_MEM_NEXT_PC <= Next_PC;
        end
    end

    // MEM/WB 流水线寄存器
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            MEM_WB_DATA <= 32'b0;
            MEM_WB_ALU <= 32'b0;
            MEM_WB_WADDR <= 5'b0;
            MEM_WB_CU <= 2'b0;
            MEM_WB_NEXT_PC = 32'b0;
        end else if (en) begin
            MEM_WB_DATA <= DataMem_out;
            MEM_WB_ALU <= EX_MEM_ALU;
            MEM_WB_WADDR <= EX_MEM_WADDR;
            MEM_WB_CU <= {MemtoReg, RegWrite};
            MEM_WB_NEXT_PC = EX_MEM_NEXT_PC;
        end
    end

    // 状态机
    reg [2:0] state [0:4];
    reg [2:0] state1;
    reg [2:0] state2;
    reg [2:0] state3;
    reg [2:0] state4;
    reg [2:0] state5;


    integer i;
    always @(*) begin
        state[0] <= state1;
        state[1] <= state2;
        state[2] <= state3;
        state[3] <= state4;
        state[4] <= state5;
        for (i=0;i<5;i=i+1)begin
            case (state[i])
                `IF: begin
                    CU_en <= 1'b0;
                    ALU_en <= 1'b0;
                    PC <= MEM_WB_NEXT_PC; // 来自上一条执行指令的 MEM/WB 流水线寄存器
                    IR <= Instruction;
                end
                `ID: begin
                    CU_en <= 1'b1;
                    ALU_en <= 1'b0;
                    // 从IF/ID流水线寄存器获取指令并译码
                    OPcode <= IF_ID_IR[31:26];
                    Func <= IF_ID_IR[5:0];
                    raddr1 <= IF_ID_IR[25:21];
                    raddr2 <= IF_ID_IR[20:16];
                    Immediate <= {{16{IF_ID_IR[15]}}, IF_ID_IR[15:0]};
                end
                `EX: begin
                    CU_en <= 1'b0;
                    ALU_en <= 1'b1;
                    ALU_in1 <= ID_EX_DATA1;
                    ALU_in2 <= (ID_EX_CU[1]) ? ID_EX_IM : ID_EX_DATA2; // 根据 ALUSrc_B 选择
                    ALU_Control <= ID_EX_CU[8:11]; // ALU 控制信号
                    Branch = ID_EX_CU[4]; // 分支信号
                    Zero_Branch = ALU_zero & Branch;
                    Jump = ID_EX_CU[3]; // 跳转信号
                    PC_b <= {ID_EX_IM[29:0], 2'b0} + ID_EX_PC; // 分支地址
                    Jump_addr <= {PC_Add_4[31:28], {ID_EX_IM[25:0], 2'b0}}; // 跳转地址
                    Next_PC_t <= (Zero_Branch) ? PC_b : PC_Add_4;
                    Next_PC <= (Jump) ? Jump_addr : Next_PC_t;
                end
                `MEM: begin
                    CU_en <= 1'b0;
                    ALU_en <= 1'b0;
                end
                `WB: begin
                    // 数据来自 MEM/WB 流水线寄存器
                    waddr <= (EX_MEM_CU[0]) ? EX_MEM_IR[15:11] : EX_MEM_IR[20:16];
                    wdata <= (MEM_WB_MemtoReg) ? MEM_WB_DATA : MEM_WB_ALU;
                end
            endcase
        end
    end

    // 状态机模块例化
    pipeline u_pipeline (
        .clk(clk),
        .rst(reset_n),
        .stall(1'b0),
        .en(en),
        .state_flat({state5, state4, state3, state2, state1})
    );

    // TODO: Instruction Memory 模块实例化
    ROM u_Instruction_Memory (
        .raddr(PC),
        .rdata(Instruction)
    );
    // assign Instruction = {memory[3+PC], memory[2+PC], memory[1+PC], memory[PC]};

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
    RAM u_Data_Memory (
        .re   (MemRead),
        .we   (MemWrite),
        .addr (ALU_out),
        .wdata(rdata2),
        .rdata(DataMem_out)
    );

    // // TODO: 初始化和复位
    initial begin
        $display("CPU start");
        Next_PC <= 32'b0;
    end

endmodule
