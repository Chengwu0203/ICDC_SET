module SET ( clk , rst, en, central, radius, mode, busy, valid, candidate );

parameter [1:0] IDLE = 'h0;
parameter [1:0] PROCESS = 'h1;
parameter [1:0] DONE = 'h2;

input clk, rst;
input en;
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
output reg busy;
output reg valid;
output reg [7:0] candidate;

reg [1:0] CState,NState;
reg [3:0] x_axis,y_axis;

wire [3:0] ax,ay;
wire [8:0] a_distance;
wire [7:0] pow2_r1;
wire in_a;

wire [3:0] bx,by;
wire [8:0] b_distance;
wire [7:0] pow2_r2;
wire in_b;

wire [3:0] cx,cy;
wire [8:0] c_distance;
wire [7:0] pow2_r3;
wire in_c;

assign ax = (central[23:20] > x_axis) ? (central[23:20] - x_axis) : (x_axis - central[23:20]);
assign ay = (central[19:16] > y_axis) ? (central[19:16] - y_axis) : (y_axis - central[19:16]);
assign a_distance = ( ax * ax ) + ( ay * ay );
assign pow2_r1 = (radius[11:8] * radius[11:8]);
assign in_a = (pow2_r1 >= a_distance) ? ('h1) : ('h0);

assign bx = (central[15:12] > x_axis) ? (central[15:12] - x_axis) : (x_axis - central[15:12]);
assign by = (central[11:8] > y_axis) ? (central[11:8] - y_axis) : (y_axis - central[11:8]);
assign b_distance = ( bx * bx ) + ( by * by );
assign pow2_r2 = (radius[7:4] * radius[7:4]);
assign in_b = (pow2_r2 >= b_distance) ? ('h1) : ('h0);

assign cx = (central[7:4] > x_axis) ? (central[7:4] - x_axis) : (x_axis - central[7:4]);
assign cy = (central[3:0] > y_axis) ? (central[3:0] - y_axis) : (y_axis - central[3:0]);
assign c_distance = ( cx * cx ) + ( cy * cy );
assign pow2_r3 = (radius[3:0] * radius[3:0]);
assign in_c = (pow2_r3 >= c_distance) ? ('h1) : ('h0);

always@(posedge clk or posedge rst)begin
    if(rst) CState <= IDLE;
    else    CState <= NState;
end

always@(*)begin
    case(CState)
        IDLE:begin
            if(en)  NState <= PROCESS;
            else    NState <= IDLE;
        end
        PROCESS:begin
            if((x_axis == 'h8)&&(y_axis == 'h8)) NState <= DONE;
            else                                NState <= PROCESS;
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
            PROCESS:begin
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
                    'h0:    candidate <= candidate + in_a;
                    'h1:    candidate <= candidate + (in_a & in_b);
                    'h2:    candidate <= candidate + (in_a ^ in_b);
                    default:begin
                        case({in_a,in_b,in_c})
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
