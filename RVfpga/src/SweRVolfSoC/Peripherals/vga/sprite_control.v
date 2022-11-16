module sprite_control(
input wire vga_clk,
input wire spr_row,
input wire spr_col,

input wire pixel_row,
input wire pixel_col,
input wire [3:0] bckgnd_pixel,
output reg [3:0] pixel_out
);

//rgb values of sprite and shape of sprite
//Presently a white box
reg [15:0][3:0] spr_pixels;

initial
spr_pixels[15:0] = 4'b0;
			 
always@(posedge vga_clk)
begin
if((pixel_row >= spr_row) && (pixel_row <= spr_row+4) && (pixel_col >= spr_col) && (pixel_col <= spr_col + 4))
begin
pixel_out  <= spr_pixels[spr_row * 4 + spr_col]; 
end
else
begin
pixel_out <= 4'b1111;
end
end
endmodule