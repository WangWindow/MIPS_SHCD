module pipeline (
    input clk,               // 时钟信号
    input rst,               // 复位信号
    input stall,             // 暂停信号
    input en,                // 使能信号
    output reg [14:0] state_flat // 流水线状态拼成一维信号
);

    integer i;

    // 定义流水线阶段
    `define IF  3'b000
    `define ID  3'b001
    `define EX  3'b010
    `define MEM 3'b011
    `define WB  3'b100
    `define NOP 3'b111 // 空指令
    
    reg [2:0] state [0:4]; // 流水线状态数组
    reg [2:0] next_state;
    initial begin
        next_state <= `NOP; // 初始为 NOP 状态
    end
    // 初始化流水线状态
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            // 复位时，所有流水线状态设为 `NOP`
            for (i = 0; i < 5; i = i + 1) begin
                state[i] <= `NOP;
            end
        end else if (!stall && en) begin
            // 流水线状态推进逻辑
            for (i = 4; i > 0; i = i - 1) begin
                state[i] <= state[i-1]; // 后一级更新为前一级状态
            end
            // 第一级加载新指令状态
            if (state[0]==`NOP && en) begin
                next_state <= `IF; // 第一级空指令时，加载新指令
            end else if (state[0]==`IF) begin
                next_state <= `ID; // 第一级为取指时，加载译码指令
            end else if (state[0]==`ID) begin
                next_state <= `EX; // 第一级为译码时，加载执行指令
            end else if (state[0]==`EX) begin
                next_state <= `MEM; // 第一级为执行时，加载访存指令
            end else if (state[0]==`MEM) begin
                next_state <= `WB; // 第一级为访存时，加载写回指令
            end else if (state[0]==`WB) begin
                next_state <= `IF; // 第一级为写回时，加载下一条指令的取指
            end  
            state[0] <= next_state;
        end
    end
    
    // 将多维数组拼接成一维信号
    always @(*) begin
        state_flat = {state[4], state[3], state[2], state[1], state[0]};
    end

endmodule
