//Mahmoud Lotfy
module alu_tb;
reg clk;
reg [15:0]a;
reg[15:0] b;
reg [3:0] alu_func;
wire [15:0] alu_out;
wire arith_flag,logic_flag,cmp_flag,shift_flag;
alu dut(
.clk(clk),
.a(a),
.b(b),
.alu_func(alu_func),
.alu_out(alu_out),
.arith_flag(arith_flag),
.logic_flag(logic_flag),
.shift_flag(shift_flag),
.cmp_flag(cmp_flag)
);
initial begin
    $dumpfile("alu.vcd");
    $dumpvars;
    clk=0;
    a=0;
    b=0;
    alu_func=4'b1111;
    #10
    a=5;
    b=5;
    #1600
    $finish;
end
always  begin
    #12.5 clk=~clk;    
end

always @(posedge clk) begin
#25
begin
if(alu_func<=4'b1111)
alu_func=alu_func+1;
else
alu_func=0;
end

end
endmodule
