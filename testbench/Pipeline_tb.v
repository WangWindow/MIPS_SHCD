`timescale 1ns / 1ps

module pipeline_tb;

    // 测试输入信号
    reg clk;            // 时钟信号
    reg rst;            // 复位信号
    reg stall;          // 暂停信号
    reg en;             // 使能信号

    // 测试输出信号
    wire [14:0] state; // 流水线状态数组
    wire [2:0] next_state; //第一级流水线下一状态

    // 实例化待测模块
    pipeline uut (
        .clk(clk),
        .rst(rst),
        .stall(stall),
        .en(en),
        .state_flat(state)
    );

    // 时钟周期
    parameter PERIOD = 10;

    // 时钟信号生成
    always begin
        clk = 1;
        #(PERIOD/2);
        clk = 0;
        #(PERIOD/2);
    end
    
    initial begin
       // 初始化
        clk = 0;
        rst = 0; // 复位信号高
        stall = 0;
        en = 0;
    
        // 保持复位一段时间
        #20; 
        rst = 1; // 释放复位信号
        #10; 
        
        // 测试1：正常运行
        en = 1;   // 使能流水线
        stall = 0;
    end
endmodule
