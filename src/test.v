module Test (
    input en,  // CPU 使能信号
    input clk,  // 时钟信号
    input reset_n,  // 复位信号
    output reg [31:0] result  // 输出结果
);

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            result <= 1000;
        end else if (en) begin
            result <= result + 1;
        end else begin
            result <= result;
        end
    end

    initial begin
        result <= 1;
    end

endmodule
