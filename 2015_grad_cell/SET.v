module SET ( clk , rst, en, central, radius, mode, busy, valid, candidate );

parameter [3:0] IDLE = 'h0;
parameter [3:0] PROCESS_0 = 'h1;
parameter [3:0] PROCESS_1 = 'h2;
parameter [3:0] PROCESS_2 = 'h3;
parameter [3:0] PROCESS_3 = 'h4;
parameter [3:0] PROCESS_4 = 'h5;
parameter [3:0] DONE = 'h6;

input clk, rst;
input en;
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
output reg busy;
output reg valid;
output reg [7:0] candidate;

reg [3:0] CState, NState;
reg [3:0] x_axis, y_axis;

wire in_circle;
reg in_A, in_B,in_C;
reg [3:0] x, y, r;

check U0( .c_x(x), .c_y(y), .r(r), .x_axis(x_axis), .y_axis(y_axis), .in_circle(in_circle));

always@(posedge clk or posedge rst)begin
    if(rst) CState <= IDLE;
    else    CState <= NState;
end

always@(*)begin
    case(CState)
        IDLE:begin
            if(en)  NState <= PROCESS_0;
            else    NState <= IDLE;
        end
        PROCESS_0:  NState <= PROCESS_1;
        PROCESS_1:  NState <= PROCESS_2;
        PROCESS_2:  NState <= PROCESS_3;
        PROCESS_3:  NState <= PROCESS_4;
        PROCESS_4:begin
            if((x_axis == 'h8)&&(y_axis == 'h8))    NState <= DONE;
            else                                    NState <= PROCESS_0;
        end
        default:begin
            NState <= IDLE;
        end
    endcase
end

always@(posedge clk or posedge rst)begin
    if(rst)begin
        x_axis <= 'h1;
        y_axis <='h1;
        busy <= 'h0;
        valid <= 'h0;
        candidate <= 'h0;
    end
    else begin
        case(CState)
            IDLE:begin
                busy <= 'h0;
                valid <= 'h0;
                candidate <= 'h0;
            end
            PROCESS_0:begin
                {x,y,r} <= {central[23:16],radius[11:8]};
            end
            PROCESS_1:begin
                in_A <= in_circle;
                {x,y,r} <= {central[15:8],radius[7:4]};
            end
            PROCESS_2:begin
                in_B <= in_circle;
                {x,y,r} <= {central[7:0],radius[3:0]};
            end
            PROCESS_3:begin
                in_C <= in_circle;
            end
            PROCESS_4:begin
                if(x_axis < 'h8)begin
                    x_axis <= x_axis + 'h1;
                end
                else begin
                    x_axis <= 'h1;
                    if(y_axis < 'h8)begin
                        y_axis <= y_axis + 'h1;
                    end
                    else begin
                        y_axis <= 'h1;
                    end
                end
                case(mode)
                    'h0:    candidate <= candidate + in_A;
                    'h1:    candidate <= candidate + (in_A & in_B);
                    'h2:    candidate <= candidate + (in_A ^ in_B);
                    default:begin
                        case({in_A,in_B,in_C})
                            3'b011: candidate <= candidate + 'h1;
                            3'b101: candidate <= candidate + 'h1;
                            3'b110: candidate <= candidate + 'h1;
                            default:candidate <= candidate;
                        endcase
                    end
                endcase
            end
            DONE:begin
                busy <= 'h1;
                valid <= 'h1;
                candidate <= candidate;
            end
            default:begin
                busy <= 'h0;
                valid <= 'h0;
                candidate <= 'h0;
            end
        endcase
    end
end

endmodule

module check( c_x, c_y, r, x_axis, y_axis, in_circle);

input [3:0] c_x, c_y, r;
input [3:0] x_axis, y_axis;
output in_circle;

wire [3:0] ax, ay;
wire [8:0] distance;
wire [7:0] pow2_r;

assign ax = (c_x > x_axis) ? (c_x - x_axis) : (x_axis - c_x);
assign ay = (c_y > y_axis) ? (c_y - y_axis) : (y_axis - c_y);
assign distance = ( ax * ax ) + ( ay * ay );
assign pow2_r = (r * r);
assign in_circle = (pow2_r >= distance) ? ('h1) : ('h0);

// xiuyu is 87

endmodule
