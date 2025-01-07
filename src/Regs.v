/*
 * @FilePath: Regs.v
 * @Author: WangWindow 1598593280@qq.com
 * @Date: 2024-12-30 20:27:19
 * @LastEditors: WangWindow
 * @LastEditTime: 2025-01-07 11:20:26
 * 2025 by WangWindow, All Rights Reserved.
 * @Descripttion: 寄存器
 */

// 32 位寄存器堆
module General_Regs (
    // input        clk,      // 时钟信号，上述沿写入数据
    input        reset_n,  // 复位信号
    input        re,       // 读使能
    input        we,       // 写使能
    input [ 4:0] waddr,    // 写寄存器的地址
    input [31:0] wdata,    // 写寄存器数据
    input [ 4:0] raddr1,   // 所需读取的寄存器的地址
    input [ 4:0] raddr2,   // 所需读取的寄存器的地址

    output reg [31:0] rdata1,  // raddr1所对应寄存器的输出数据
    output reg [31:0] rdata2   // raddr2所对应寄存器的输出数据
);
    reg [31:0] Regs[0:31];  // 32 个寄存器

    // 读写操作
    integer i;
    // always @(posedge clk or negedge reset_n) begin
    always @(*) begin
        if (!reset_n) begin
            for (i = 0; i < 32; i = i + 1) begin
                Regs[i] <= 32'h00000000;
            end
        end else begin
            if (re) begin
                rdata1 <= Regs[raddr1];
                rdata2 <= Regs[raddr2];
            end else if (we) begin
                if (waddr == 0) begin  // $zero
                    Regs[waddr] <= 32'h00000000;
                end else begin  // 其他寄存器
                    Regs[waddr] <= wdata;
                end
            end
        end
    end
endmodule

// IF/ID 流水线寄存器
module IF_ID_Regs (
    input wire clk,
    input wire reset_n,
    input wire en,
    input wire we,
    input wire [31:0] IR,
    input wire [31:0] PC,

    output reg [31:0] IF_ID_IR,
    output reg [31:0] IF_ID_PC
);
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            IF_ID_IR <= 32'b0;
            IF_ID_PC <= 32'b0;
        end else if (en) begin
            IF_ID_IR <= IR;
            IF_ID_PC <= PC;
        end
    end
endmodule

// ID/EX 流水线寄存器
module ID_EX_Regs (
    input wire clk,
    input wire reset_n,
    input wire en,
    input wire ControlFlush,
    input wire [4:0] ALU_Control,
    input wire ALUSrc_B,
    input wire RegDst,
    input wire MemWrite,
    input wire MemRead,
    input wire Branch,
    input wire Jump,
    input wire MemtoReg,
    input wire RegWrite,
    input wire [31:0] id_PC,
    input wire [31:0] rdata1,
    input wire [31:0] rdata2,
    input wire [31:0] immediate,
    input wire [4:0] rs_addr,
    input wire [4:0] rt_addr,
    input wire [4:0] rd_addr,

    output reg [4:0] ID_EX_ALU_Control,
    output reg ID_EX_ALUSrc_B,
    output reg ID_EX_RegDst,
    output reg ID_EX_MemWrite,
    output reg ID_EX_MemRead,
    output reg ID_EX_Branch,
    output reg ID_EX_Jump,
    output reg ID_EX_MemtoReg,
    output reg ID_EX_RegWrite,
    output reg [31:0] ID_EX_PC,
    output reg [31:0] ID_EX_DATA1,
    output reg [31:0] ID_EX_DATA2,
    output reg [31:0] ID_EX_IM,
    output reg [4:0] ID_EX_RS_ADDR,
    output reg [4:0] ID_EX_RT_ADDR,
    output reg [4:0] ID_EX_RD_ADDR
);
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            ID_EX_ALU_Control <= 5'b0;
            ID_EX_ALUSrc_B <= 1'b0;
            ID_EX_RegDst <= 1'b0;
            ID_EX_MemWrite <= 1'b0;
            ID_EX_MemRead <= 1'b0;
            ID_EX_Branch <= 1'b0;
            ID_EX_Jump <= 1'b0;
            ID_EX_MemtoReg <= 1'b0;
            ID_EX_RegWrite <= 1'b0;
            ID_EX_PC <= 32'b0;
            ID_EX_DATA1 <= 32'b0;
            ID_EX_DATA2 <= 32'b0;
            ID_EX_IM <= 32'b0;
            ID_EX_RS_ADDR <= 5'b0;
            ID_EX_RT_ADDR <= 5'b0;
            ID_EX_RD_ADDR <= 5'b0;
        end else if (en) begin
            if (ControlFlush) begin
                ID_EX_ALU_Control <= 5'b0;
                ID_EX_ALUSrc_B <= 1'b0;
                ID_EX_RegDst <= 1'b0;
                ID_EX_MemWrite <= 1'b0;
                ID_EX_MemRead <= 1'b0;
                ID_EX_Branch <= 1'b0;
                ID_EX_Jump <= 1'b0;
                ID_EX_MemtoReg <= 1'b0;
                ID_EX_RegWrite <= 1'b0;
            end else begin
                ID_EX_ALU_Control <= ALU_Control;
                ID_EX_ALUSrc_B <= ALUSrc_B;
                ID_EX_RegDst <= RegDst;
                ID_EX_MemWrite <= MemWrite;
                ID_EX_MemRead <= MemRead;
                ID_EX_Branch <= Branch;
                ID_EX_Jump <= Jump;
                ID_EX_MemtoReg <= MemtoReg;
                ID_EX_RegWrite <= RegWrite;
            end
            ID_EX_PC <= id_PC;
            ID_EX_DATA1 <= rdata1;
            ID_EX_DATA2 <= rdata2;
            ID_EX_IM <= immediate;
            ID_EX_RS_ADDR <= rs_addr;
            ID_EX_RT_ADDR <= rt_addr;
            ID_EX_RD_ADDR <= rd_addr;
        end
    end
endmodule

// EX/MEM 流水线寄存器
module EX_MEM_Regs (
    input wire clk,
    input wire reset_n,
    input wire en,
    input wire MemWrite,
    input wire MemRead,
    input wire Branch,
    input wire Jump,
    input wire MemtoReg,
    input wire RegWrite,
    input wire [31:0] Branch_addr,
    input wire [31:0] ALU_Result,
    input wire [2:0] ALU_Sign,
    input wire [31:0] DATA2,
    input wire [4:0] Regs_waddr_select,

    output reg EX_MEM_MemWrite,
    output reg EX_MEM_MemRead,
    output reg EX_MEM_Branch,
    output reg EX_MEM_Jump,
    output reg EX_MEM_MemtoReg,
    output reg EX_MEM_RegWrite,
    output reg [31:0] EX_MEM_PC,
    output reg [31:0] EX_MEM_ALU_RESULT,
    output reg [2:0] EX_MEM_ALU_SIGN,
    output reg [31:0] EX_MEM_MEM_ADDR,
    output reg [31:0] EX_MEM_MEM_WDATA,
    output reg [4:0] EX_MEM_REG_WADDR
);
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            EX_MEM_MemWrite <= 1'b0;
            EX_MEM_MemRead <= 1'b0;
            EX_MEM_Branch <= 1'b0;
            EX_MEM_Jump <= 1'b0;
            EX_MEM_MemtoReg <= 1'b0;
            EX_MEM_RegWrite <= 1'b0;
            EX_MEM_PC <= 32'b0;
            EX_MEM_ALU_RESULT <= 32'b0;
            EX_MEM_ALU_SIGN <= 3'b0;
            EX_MEM_MEM_ADDR <= 32'b0;
            EX_MEM_MEM_WDATA <= 32'b0;
            EX_MEM_REG_WADDR <= 5'b0;
        end else if (en) begin
            EX_MEM_MemWrite <= MemWrite;
            EX_MEM_MemRead <= MemRead;
            EX_MEM_Branch <= Branch;
            EX_MEM_Jump <= Jump;
            EX_MEM_MemtoReg <= MemtoReg;
            EX_MEM_RegWrite <= RegWrite;
            EX_MEM_PC <= Branch_addr;
            EX_MEM_ALU_RESULT <= ALU_Result;
            EX_MEM_ALU_SIGN <= ALU_Sign;
            EX_MEM_MEM_ADDR <= ALU_Result;
            EX_MEM_MEM_WDATA <= DATA2;
            EX_MEM_REG_WADDR <= Regs_waddr_select;
        end
    end
endmodule

// MEM/WB 流水线寄存器
module MEM_WB_Regs (
    input wire clk,
    input wire reset_n,
    input wire en,
    input wire MemtoReg,
    input wire RegWrite,
    input wire [31:0] DataMemory_rdata,
    input wire [31:0] EX_MEM_MEM_ADDR,
    input wire [4:0] EX_MEM_REG_WADDR,

    output reg MEM_WB_MemtoReg,
    output reg MEM_WB_RegWrite,
    output reg [31:0] MEM_WB_MEM_RDATA,
    output reg [31:0] MEM_WB_ALU_RESULT,
    output reg [4:0] MEM_WB_REG_WADDR
);
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            MEM_WB_MemtoReg   <= 1'b0;
            MEM_WB_RegWrite   <= 1'b0;
            MEM_WB_MEM_RDATA  <= 32'b0;
            MEM_WB_ALU_RESULT <= 32'b0;
            MEM_WB_REG_WADDR  <= 5'b0;
        end else if (en) begin
            MEM_WB_MemtoReg   <= MemtoReg;
            MEM_WB_RegWrite   <= RegWrite;
            MEM_WB_MEM_RDATA  <= DataMemory_rdata;
            MEM_WB_ALU_RESULT <= EX_MEM_MEM_ADDR;
            MEM_WB_REG_WADDR  <= EX_MEM_REG_WADDR;
        end
    end
endmodule
