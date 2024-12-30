/*
 * @FilePath: ALU.v
 * @Author: WangWindow 1598593280@qq.com
 * @Date: 2024-10-07 23:37:57
 * @LastEditors: WangWindow
 * @LastEditTime: 2024-12-30 17:45:05
 * 2024 by WangWindow, All Rights Reserved.
 * @Descripttion: ALU
 */

`include "defines.v"

// 算术逻辑单元
module ALU (
    input             clk,
    input             reset_n,
    input      [31:0] A,
    input      [31:0] B,
    input      [ 4:0] ALU_Control,
    output reg [31:0] ALU_Result,
    output reg [31:0] Hi,
    output reg [31:0] Lo,
    output            Zero,
    output            Over,
    output            Signed
);
    reg signed_flag;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            ALU_Result  <= 32'b0;
            Hi          <= 32'b0;
            Lo          <= 32'b0;
            signed_flag <= 1'b0;
        end else begin
            case (ALU_Control)
                `SLL: begin
                    ALU_Result  <= A << B;
                    signed_flag <= 1'b0;
                end
                `SRL: begin
                    ALU_Result  <= A >> B;
                    signed_flag <= 1'b0;
                end
                `SRA: begin
                    ALU_Result  <= $signed(A) >>> B;
                    signed_flag <= 1'b1;
                end
                `MUL: begin
                    {Hi, Lo}    <= $signed(A) * $signed(B);
                    ALU_Result  <= Lo;
                    signed_flag <= 1'b1;
                end
                `MULU: begin
                    {Hi, Lo}    <= A * B;
                    ALU_Result  <= Lo;
                    signed_flag <= 1'b0;
                end
                `DIV: begin
                    if (B != 0) begin
                        Lo          <= $signed(A) / $signed(B);
                        Hi          <= $signed(A) % $signed(B);
                        ALU_Result  <= Lo;
                        signed_flag <= 1'b1;
                    end else begin
                        Lo          <= 32'b0;
                        Hi          <= 32'b0;
                        ALU_Result  <= 32'b0;
                        signed_flag <= 1'b0;
                    end
                end
                `DIVU: begin
                    if (B != 0) begin
                        Lo          <= A / B;
                        Hi          <= A % B;
                        ALU_Result  <= Lo;
                        signed_flag <= 1'b0;
                    end else begin
                        Lo          <= 32'b0;
                        Hi          <= 32'b0;
                        ALU_Result  <= 32'b0;
                        signed_flag <= 1'b0;
                    end
                end
                `LUI: begin
                    ALU_Result  <= {B[15:0], 16'b0};
                    signed_flag <= 1'b0;
                end
                `ADD: begin
                    ALU_Result  <= A + B;
                    signed_flag <= (A[31] == B[31]) && (ALU_Result[31] != A[31]);
                end
                `SUB: begin
                    ALU_Result  <= A - B;
                    signed_flag <= (A[31] != B[31]) && (ALU_Result[31] != A[31]);
                end
                `AND: begin
                    ALU_Result  <= A & B;
                    signed_flag <= 1'b0;
                end
                `OR: begin
                    ALU_Result  <= A | B;
                    signed_flag <= 1'b0;
                end
                `XOR: begin
                    ALU_Result  <= A ^ B;
                    signed_flag <= 1'b0;
                end
                `NOR: begin
                    ALU_Result  <= ~(A | B);
                    signed_flag <= 1'b0;
                end
                `SLT: begin
                    ALU_Result  <= ($signed(A) < $signed(B)) ? 32'b1 : 32'b0;
                    signed_flag <= 1'b1;
                end
                `SLTU: begin
                    ALU_Result  <= (A < B) ? 32'b1 : 32'b0;
                    signed_flag <= 1'b0;
                end
                default: begin
                    ALU_Result  <= 32'b0;
                    signed_flag <= 1'b0;
                end
            endcase
        end
    end

    assign Zero = (ALU_Result == 32'b0);
    assign Over = signed_flag ? (
        (ALU_Control == `ADD && (A[31] == B[31]) && (ALU_Result[31] != A[31])) ||
        (ALU_Control == `SUB && (A[31] != B[31]) && (ALU_Result[31] != A[31]))
    ) : 1'b0;
    assign Signed = signed_flag;

endmodule
