module SET ( clk , rst, en, central, radius, mode, busy, valid, candidate );

    input   clk, rst;
    input   en;
    input [23:0] central;
    input [11:0] radius;
    input [1:0]  mode;
    output reg   busy;
    output reg   valid;
    output reg[7:0] candidate;
    
    reg     [3:0] x, y;
    reg     [3:0] r;
    wire    [3:0] m;
    reg     [6:0] position;
    wire    [6:0] position_wire;

    reg           A, B, C;   
    reg     [2:0] state;
	// reg           dot_ans;
    wire          dot_ans_wire;

    reg     [7:0] count;

    assign m[0] = A;
    assign m[1] = A & B;
    assign m[2] = A ^ B;
    assign m[3] = (A & B) + (B & C) + (A & C) - (A & B & C);

    assign position_wire    = position;
    // assign dot_ans_wire     = dot_ans;
    check U1(.x(x), .y(y), .r(r), .position(position_wire), .dot_ans(dot_ans_wire));

    always @(posedge clk or posedge rst) begin
        if(rst)begin
            busy    <= 1'b0;
            valid   <= 1'b0;
        end
        else begin 
            if(en && !busy)begin
                    position<= 8'h00;
                    state   <= 3'd0;
                    {x,y,r} <= {central[23:16],radius[11:8]};
                    busy    <= 1'b1;
                    count   <= 1'b0;
            end
            else begin
                case(state)
                    3'b000:begin
                        A       <= dot_ans_wire;
                        {x,y,r} <= {central[15:8],radius[7:4]};
                        state   <= 3'b001;
                    end
                    3'b001:begin
                        B       <= dot_ans_wire;
                        {x,y,r} <= {central[7:0],radius[3:0]};
                        state   <= 3'b010;
                    end
                    3'b010:begin
                        C       <= dot_ans_wire;
                        state   <= 3'b100;
                    end
                    // 3'b011:begin
                    //     // position<= position +1'b1;
                    //     state   <= 3'b100;
                    // end
                    3'b100:begin
                        if(position == 7'b1_000_000)begin
                            state   <= 3'b101;
                        end
                        else begin
                            count   <= count + m[mode];
                            state   <= 3'b000;
                            position<= position +1'b1;
                            {x,y,r} <= {central[23:16],radius[11:8]};
                        end
                    end
                    3'b101:begin
                        valid       <= 1'b1;
                        candidate   <= count;
                        state       <= 3'b110;
                    end
                    default:begin
                        valid     <= 1'b0;
                        busy      <= 1'b0;
                        count     <= 1'b0;
                        position  <= 0;
                        state     <= 0;
                        candidate <= 0;
                    end
                endcase
            end
        end 
    end


endmodule

module check(x, y, r ,position, dot_ans);
	input   [3:0] x, y, r;
    input   [6:0] position;
    output        dot_ans;

    wire    [8:0] dis;

    assign dis      = (x-position[5:3] - 1'b1)*(x-position[5:3] - 1'b1) + (y-position[2:0] - 1'b1)*(y-position[2:0] - 1'b1);  
    assign dot_ans  = (dis <= r*r) ? 1'b1 : 1'b0;

endmodule
