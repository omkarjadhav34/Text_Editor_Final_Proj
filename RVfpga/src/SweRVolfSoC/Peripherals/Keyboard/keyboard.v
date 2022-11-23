module keyboard_top(                                                                                                         
	// WISHBONE Interface  
	input wire clk,                                                                                                    
    input  wire PS2_CLK,
    input  wire PS2_DATA,
    input wire            wb_rst_i,	// Reset
	input wire            wb_cyc_i,	// cycle valid input
	input wire  [31:0]	  wb_adr_i,	// address bus inputs
	input wire  [31:0]	  wb_dat_i,	// input data bus
	input wire	  [3:0]   wb_sel_i,	// byte select inputs
	input wire            wb_we_i,	// indicates write transfer
	input wire            wb_stb_i,	// strobe input
	output wire  [31:0]   wb_dat_o,	// output data bus
	output wire           wb_ack_o,	// normal termination
	output wire           wb_err_o,	// termination w/ error
	output wire [31:0]    keycode,
	output wire check
	);


Keyboard_PS2_receiver PS2Receiver (
.clk(clk),
.kclk(PS2_CLK),
.keydata(PS2_DATA),
.keyout(keycode[31:0]),
.check(check)
);

reg keyboard_ack;

initial
keyboard_ack = 0;

always @(posedge clk,posedge wb_rst_i)
begin
if(wb_rst_i)begin
keyboard_ack=0;
end
else begin
keyboard_ack= !keyboard_ack & wb_stb_i & wb_cyc_i;
end
end

assign wb_ack_o=keyboard_ack;
assign wb_dat_o=(wb_stb_i & wb_cyc_i)?(keycode & 32'hffffffff) : 32'h00000000;

endmodule



module Keyboard_PS2_receiver(
input wire clk,
input wire kclk,
input wire  keydata,
output wire [31:0] keyout,
output reg check
);

reg flag;
wire kclkf,kdataf;
    reg [7:0]data;
    reg [7:0]Previousdata;
    reg [3:0]count;
    reg [31:0]keycode;
    
debouncer debounce(
    .clk(clk),
    .I0(kclk),
    .I1(keydata),
    .O0(kclkf),
    .O1(kdataf)
);

    initial begin
        keycode<=32'h00000000;
        count<=4'b0000;
        flag<=1'b0;
    end
    
always@(negedge(kclkf))begin
    case(count)
    0:;//Start bit
    1:data[0]<=kdataf;
    2:data[1]<=kdataf;
    3:data[2]<=kdataf;
    4:data[3]<=kdataf;
    5:data[4]<=kdataf;
    6:data[5]<=kdataf;
    7:data[6]<=kdataf;
    8:data[7]<=kdataf;
    9:flag<=1'b1;
    10:flag<=1'b0;
    
    endcase
        if(count<=9) count<=count+1;
        else if(count==10) count<=0;
        
end

always @(posedge flag)begin
    if (Previousdata!=data)begin
        keycode[31:24]<=keycode[23:16];
        keycode[23:16]<=keycode[15:8];
        keycode[15:8]<=Previousdata;
        keycode[7:0]<=data;
        Previousdata<=data;
        check <= 1'b1;
    end
    else begin
        check <= 1'b0;
    end
end

assign keyout[31:0]=keycode[31:0];
    
endmodule


module debouncer(
    input wire clk,
    input wire I0,
    input wire I1,
    output reg O0,
    output reg O1
    );
    
    reg [4:0]cnt0, cnt1;
    reg Iv0=0,Iv1=0;
    reg out0, out1;
  
initial
begin
cnt0 = 5'b00000;
cnt1 = 5'b00000;
end    
always@(posedge(clk))begin
    if (I0==Iv0)begin
        if (cnt0==19)
        begin
        O0<=I0;
        end
        else cnt0<=cnt0+1;
      end
    else begin
        cnt0<=5'b00000;
        Iv0<=I0;
    end
    if (I1==Iv1)begin
            if (cnt1==19)O1<=I1;
            else cnt1<=cnt1+1;
          end
        else begin
            cnt1<=5'b00000;
            Iv1<=I1;
        end
    end
    
endmodule







