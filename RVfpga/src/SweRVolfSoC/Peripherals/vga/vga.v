module vga(
// VGA Inputs
input wire reset,
input wire [31:0] keycode,
// VGA Outputs
input wire vga_clk,
output reg [3:0] vga_r,
output reg [3:0] vga_g,
output reg [3:0] vga_b,
output wire vga_vs,
output wire vga_hs,
input wire flag,
input wire clk
);

reg [3:0] row_width;
reg [3:0] col_width;
reg [3:0] prev;
wire [11:0] pix_row;
wire [11:0] pix_col;
reg change;
wire video_on;

wire [31:0] pix_num;

reg [11:0] s_row ;
reg [11:0] s_col ;
integer i, j;
reg [0:7] pixel[0:6];

reg [0:7] data_buffer[0:69];
reg [0:8] buffer_indx; 

dtg dtg(
        .clock(vga_clk),
        .rst(reset), 
        .video_on(video_on), 
        .horiz_sync(vga_hs), 
        .vert_sync(vga_vs),
        .pixel_row(pix_row),
        .pixel_column(pix_col),
        .pix_num(pix_num)
    );
  
initial
begin
s_row = 12'd0;
s_col = 12'd0;
col_width = 4'd7;
row_width = 4'd6;
prev = 4'd15;
change = 1'b0;

buffer_indx = 9;
for(i = 0; i < 70; i= i + 1)
begin
if(i < 10)
data_buffer[i] = i;
else
data_buffer[i] = 8'd255;
end
end

/*
always@(switches)
begin

if(data_buffer[buffer_indx] != switches[3:0])
begin

data_buffer[buffer_indx] = switches[3:0];
buffer_indx = buffer_indx + 1;

if(buffer_indx > 40)
buffer_indx = 8'd0;

change = prev && switches[3:0];
s_col = s_col + 8;

if(s_col >= 560)
begin
s_col = 0;
s_row = s_row + 8;
end
end
 
else
change = 0;
 
end
*/
always@(posedge vga_clk)
begin
if(video_on) begin
	
	if((pix_row < (s_row + row_width)) 
        && (pix_col < (s_col + col_width)))
        begin
			case(data_buffer[pix_col/8])
			0:
				begin
				pixel[0] = 8'b11111111;
				pixel[1] = 8'b11000011;
				pixel[2] = 8'b11000011;
				pixel[3] = 8'b11000011;
				pixel[4] = 8'b11000011;
				pixel[5] = 8'b11000011;
				pixel[6] = 8'b11111111;
				vga_r = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_g = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_b = {4{pixel[pix_row  % 7][pix_col % 8]}};
				end
			1:
				begin
				pixel[0]= 8'b00000011;
				pixel[1]= 8'b00000011;
				pixel[2]= 8'b00000011;
				pixel[3]= 8'b00000011;
				pixel[4]= 8'b00000011;
				pixel[5]= 8'b00000011;
				pixel[6]= 8'b00000011;
				vga_r = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_g = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_b = {4{pixel[pix_row  % 7][pix_col % 8]}};
				end
			2:
				begin
				pixel[0]  = 8'b00111100;
				pixel[1]  = 8'b11000011;
				pixel[2]  = 8'b00000110;
				pixel[3]  = 8'b00001100;
				pixel[4]  = 8'b00011000;
				pixel[5]  = 8'b00110000;
				pixel[6]  = 8'b11111111;
				vga_r = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_g = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_b = {4{pixel[pix_row  % 7][pix_col % 8]}};
				end
			3:
				begin
				pixel[0]  = 8'b00111100;
				pixel[1]  = 8'b11000011;
				pixel[2]  = 8'b00000011;
				pixel[3]  = 8'b00111100;
				pixel[4]  = 8'b00000011;
				pixel[5]  = 8'b11000011;
				pixel[6]  = 8'b00111100;
				vga_r = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_g = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_b = {4{pixel[pix_row  % 7][pix_col % 8]}};
				end
			4:
				begin
				pixel[0]  = 8'b01111000;
				pixel[1]  = 8'b11011000;
				pixel[2]  = 8'b11011000;
				pixel[3]  = 8'b11011000;
				pixel[4]  = 8'b11011000;
				pixel[5]  = 8'b11111111;
				pixel[6]  = 8'b00011000;
				vga_r = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_g = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_b = {4{pixel[pix_row  % 7][pix_col % 8]}};
				end
			5:
				begin
				pixel[0] = 8'b11111111;
				pixel[1] = 8'b11000000;
				pixel[2] = 8'b11000000;
				pixel[3] = 8'b11111111;
				pixel[4] = 8'b00000011;
				pixel[5] = 8'b00000011;
				pixel[6] = 8'b11111100;
				vga_r = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_g = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_b = {4{pixel[pix_row  % 7][pix_col % 8]}};
				end
			6:
				begin
				pixel[0]  = 8'b11111111;
				pixel[1]  = 8'b11000000;
				pixel[2]  = 8'b11000000;
				pixel[3]  = 8'b11111111;
				pixel[4]  = 8'b11000011;
				pixel[5]  = 8'b11000011;
				pixel[6]  = 8'b11111100;
				vga_r = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_g = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_b = {4{pixel[pix_row  % 7][pix_col % 8]}};
				end
			7:
				begin
				pixel[0]  = 8'b11111111;
				pixel[1]  = 8'b00000011;
				pixel[2]  = 8'b00000011;
				pixel[3]  = 8'b00000011;
				pixel[4]  = 8'b00000011;
				pixel[5]  = 8'b00000011;
				pixel[6]  = 8'b00000011;
				vga_r = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_g = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_b = {4{pixel[pix_row  % 7][pix_col % 8]}};
				end
			8:
				begin
				pixel[0] = 8'b11111111;
				pixel[1] = 8'b11000011;
				pixel[2] = 8'b11000011;
				pixel[3] = 8'b11111111;
				pixel[4] = 8'b11000011;
				pixel[5] = 8'b11000011;
				pixel[6] = 8'b11111111;
				vga_r = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_g = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_b = {4{pixel[pix_row  % 7][pix_col % 8]}};
				end
			9:
				begin
				pixel[0] = 8'b11111111;
				pixel[1] = 8'b11000011;
				pixel[2] = 8'b11000011;
				pixel[3] = 8'b11111111;
				pixel[4] = 8'b00000011;
				pixel[5] = 8'b00000011;
				pixel[6] = 8'b11111111;
				vga_r = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_g = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_b = {4{pixel[pix_row  % 7][pix_col % 8]}};
				end

			default:
				begin
				pixel[0] = {6'd0, 2'b11};
				pixel[1] = {6'd0, 2'b11};
				pixel[2] = {6'd0, 2'b11};
				pixel[3] = {6'd0, 2'b11};
				pixel[4] = {6'd0, 2'b11};
				pixel[5] = {6'd0, 2'b11};
				pixel[6] = {6'd0, 2'b11};
				
				vga_r = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_g = {4{pixel[pix_row % 7][pix_col % 8]}};
	            vga_b = {4{pixel[pix_row  % 7][pix_col % 8]}};
				end
			endcase
        end 

     else if((pix_col > (s_col + col_width)) || (pix_row > (s_row + row_width)))
        begin
        vga_r <= 4'b1100;
	    vga_g <= 4'b0000;
	    vga_b <= 4'b0000;
	    end

    end
 else begin
     vga_r <= {4{video_on}};
	vga_g <= {4{video_on}};
	vga_b <= {4{video_on}};
end
end
endmodule

