// Mahmoud Lotfy
module alu (
    input [15:0] a,b,
    input [3:0] alu_func,
    input clk,
    output reg [15:0] alu_out,
    output reg arith_flag,logic_flag,cmp_flag,shift_flag

);
reg [15:0] out;
always @(posedge clk) begin
    alu_out=out;
end
always @(alu_func or a or b) begin
    case (alu_func)
      4'b0000  :begin
        out=a+b;
        arith_flag=1;
        logic_flag=0;
         cmp_flag=0;
         shift_flag=0;

      end 
      4'b0001:begin
        if(a>=b)
        out=a-b;
        if(a<b)
        out=b-a;
         arith_flag=1;
         logic_flag=0;
         cmp_flag=0;
         shift_flag=0;
        
      end
      4'b0010:begin
        out=a*b;
        arith_flag=1;
         logic_flag=0;
         cmp_flag=0;
         shift_flag=0;

      end
      4'b0011:begin
        if(a>=b)
        out=a/b;
        if(a<b)
        out=b/a;
         arith_flag=1;
         logic_flag=0;
         cmp_flag=0;
         shift_flag=0;
        
      end
      4'b0100: begin
        out=a&b;
        arith_flag=0;
         logic_flag=1;
         cmp_flag=0;
         shift_flag=0;
        
      end
      4'b0101:begin
        out=a|b;
        arith_flag=0;
         logic_flag=1;
         cmp_flag=0;
         shift_flag=0;
        
      end
      4'b0110:begin
        out=~(a&b);
        arith_flag=0;
         logic_flag=1;
         cmp_flag=0;
         shift_flag=0;
        
      end
      4'b0111:begin
        out=~(a|b);
        arith_flag=0;
         logic_flag=1;
         cmp_flag=0;
         shift_flag=0;
        
      end
       4'b1000:begin
        out=a^b;
        arith_flag=0;
         logic_flag=1;
        cmp_flag=0;
         shift_flag=0;
      end
      4'b1001:begin
        out=~(a^b);
        arith_flag=0;
         logic_flag=1;
        cmp_flag=0;
         shift_flag=0;
      end
      4'b1010:begin
        if(a==b)
        out=1;
        else
        out=0;
         cmp_flag=1;
         arith_flag=0;
        logic_flag=0;
        shift_flag=0;
        
        
      end
      4'b1011:begin
        if(a>b)
        out=16'b10;
        else
        out=0;
         cmp_flag=1;
         arith_flag=0;
        logic_flag=0;
        shift_flag=0;
        
      end
       4'b1100:begin
        if(a<b)
        out=16'b11;
        else
         out=0;
         cmp_flag=1;
         arith_flag=0;
         logic_flag=0;
         shift_flag=0;
        
        
      end
      4'b1101:begin
            out=a>>1;
            shift_flag=1;
             arith_flag=0;
            logic_flag=0;
            cmp_flag=0;

      end
      4'b1101:begin
            out=a<<1;
            shift_flag=1;
             arith_flag=0;
            logic_flag=0;
            cmp_flag=0;

      end

        default: begin
            out=0;
            arith_flag=0;
            logic_flag=0;
            cmp_flag=0;
            shift_flag=0;

        end
    endcase
    
end



always @(posedge clk) begin
    $display ("At ALU_FUNC=%b , ALU_OUT=%d",alu_func,alu_out);
end

    
endmodule
