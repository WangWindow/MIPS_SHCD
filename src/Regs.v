// 32 位寄存器堆
module Register_file (
    input             clk,      //时钟信号，上述沿写入数据
    input             reset_n,  //复位信号
    input             re,       //读使能
    input             we,       //写使能
    input      [ 4:0] waddr,    //写寄存器的地址
    input      [31:0] wdata,    //写寄存器数据
    input      [ 4:0] raddr1,   //所需读取的寄存器的地址
    input      [ 4:0] raddr2,   //所需读取的寄存器的地址
    output reg [31:0] rdata1,   //raddr1所对应寄存器的输出数据
    output reg [31:0] rdata2    //raddr2所对应寄存器的输出数据
);
    reg [31:0] Regs[0:31];  // 32 个寄存器

    // 读写操作
    integer i;
    always @(posedge clk or negedge reset_n) begin
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
