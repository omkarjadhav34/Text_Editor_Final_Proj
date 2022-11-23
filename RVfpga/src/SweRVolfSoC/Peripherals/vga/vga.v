//////////////////////////////////////////////////////////////////////////////////
// Company: Portland State University
// Engineer: Omkar Jadhav 
// Module Name: vga
// Project Name: Text Editor
// Target Devices: Nexys-A7-100T
// Description: Vga module used to display keycodes from a keyboard plugged into 
//              the PS2 port 
//////////////////////////////////////////////////////////////////////////////////
module vga 
(
    input  wire [31:0]  keycode,
    input  wire         vga_clk,
    input  wire         flag,
    input  wire         clk,
    output wire         vga_vs,
    output wire         vga_hs,
    output reg  [3 :0]  vga_r,
    output reg  [3 :0]  vga_g,
    output reg  [3 :0]  vga_b
);

wire          reset;
wire          video_on;
wire [11: 0]  pix_row;
wire [11: 0]  pix_col;
wire [31: 0]  pix_num;
reg  [3 : 0]  row_width;
reg  [3 : 0]  col_width;
reg  [11: 0]  s_row ;
reg  [11: 0]  s_col ;
reg  [0 :10]  pixel[0:7];
reg  [0 : 7]  data_buffer[0:40][0:69];
reg  [0 : 7]  buffer_indx; 
reg  [0 : 7]  tempx;

integer i, j;

dtg dtg(
        .clock        (vga_clk),
        .rst          (reset), 
        .video_on     (video_on), 
        .horiz_sync   (vga_hs), 
        .vert_sync    (vga_vs),
        .pixel_row    (pix_row),
        .pixel_column (pix_col),
        .pix_num      (pix_num)
       );
  
initial
begin
    s_row       = 12'd40;                  // s_row + row_width -> max vertical area of displaying text
    s_col       = 12'd80;                   // s_col + col_width -> max horizontal area of displaying text
    col_width   = 4'd8;
    row_width   = 4'd8;
    buffer_indx = 8'd0;                     // data buffer pointer -> index of user entered keycodes

    for (i = 0; i < 70; i = i + 1)          // Initally display 0  for first row 
    begin
        if (i < 10)
            data_buffer[0][i] = 8'h45;
        else
            data_buffer[0][i] = 8'hff;
    end

    for (i = 0; i < 70; i = i + 1)          // Initially display 1 for second row
    begin
        if (i < 10)
            data_buffer[1][i] = 8'h16;
        else
            data_buffer[1][i] = 8'hff;
    end
    
    for (i = 0; i < 70; i = i + 1)          // Initially display 2 for third row
    begin
        if (i < 10)
            data_buffer[2][i] = 8'h1e;
        else
            data_buffer[2][i] = 8'hff;
    end
end

/*  Always block to enter a new entered keycode into the buffer */
always @ (posedge flag)
begin
    if ((keycode[7:0] > 8'b0)) begin                            // Check for non-zero keycode 
        //reset = 1'b1;
        data_buffer[0][buffer_indx]     = keycode[7:0];
        buffer_indx                     = buffer_indx + 1;      // Increment buffer index

    if (buffer_indx >= (s_col / 8))
        buffer_indx = 0;

    end
end

/* Always block to convert the character from the buffer to pixels information of the character */
always @ (pix_row or pix_col)
begin
    tempx         = data_buffer[pix_row / 8][pix_col / 10];
    
    case(tempx)
    8'h45:                                           // 8'h45 -> 0
        begin
        pixel[0]  = 10'b1111111100;
        pixel[1]  = 10'b1100001100;
        pixel[2]  = 10'b1100001100;
        pixel[3]  = 10'b1100001100;
        pixel[4]  = 10'b1100001100;
        pixel[5]  = 10'b1100001100;
        pixel[6]  = 10'b1111111100;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h16:                                           // 8'h16 -> 1
        begin
        pixel[0]  = 10'b0000001100;
        pixel[1]  = 10'b0000001100;
        pixel[2]  = 10'b0000001100;
        pixel[3]  = 10'b0000001100;
        pixel[4]  = 10'b0000001100;
        pixel[5]  = 10'b0000001100;
        pixel[6]  = 10'b0000001100;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h1E:                                           // 8'h1E -> 2
        begin
        pixel[0]  = 10'b0011110000;
        pixel[1]  = 10'b1100001100;
        pixel[2]  = 10'b0000011000;
        pixel[3]  = 10'b0000110000;
        pixel[4]  = 10'b0001100000;
        pixel[5]  = 10'b0011000000;
        pixel[6]  = 10'b1111111100;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h26:                                           // 8'h26 -> 3
        begin
        pixel[0]  = 10'b0011110000;
        pixel[1]  = 10'b1100001100;
        pixel[2]  = 10'b0000001100;
        pixel[3]  = 10'b0011110000;
        pixel[4]  = 10'b0000001100;
        pixel[5]  = 10'b1100001100;
        pixel[6]  = 10'b0011110000;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h25:                                           // 8'h25 -> 4
        begin
        pixel[0]  = 10'b0111100000;
        pixel[1]  = 10'b1101100000;
        pixel[2]  = 10'b1101100000;
        pixel[3]  = 10'b1101100000;
        pixel[4]  = 10'b1101100000;
        pixel[5]  = 10'b1111111100;
        pixel[6]  = 10'b0001100000;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h2E:                                           // 8'h2E -> 5
        begin
        pixel[0]  = 10'b1111111100;
        pixel[1]  = 10'b1100000000;
        pixel[2]  = 10'b1100000000;
        pixel[3]  = 10'b1111111100;
        pixel[4]  = 10'b0000001100;
        pixel[5]  = 10'b0000001100;
        pixel[6]  = 10'b1111110000;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h36:                                           // 8'h36 -> 6
        begin
        pixel[0]  = 10'b1111111100;
        pixel[1]  = 10'b1100000000;
        pixel[2]  = 10'b1100000000;
        pixel[3]  = 10'b1111111100;
        pixel[4]  = 10'b1100001100;
        pixel[5]  = 10'b1100001100;
        pixel[6]  = 10'b1111110000;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h3d:                                           // 8'h3d -> 7
        begin
        pixel[0]  = 10'b1111111100;
        pixel[1]  = 10'b0000001100;
        pixel[2]  = 10'b0000001100;
        pixel[3]  = 10'b0000001100;
        pixel[4]  = 10'b0000001100;
        pixel[5]  = 10'b0000001100;
        pixel[6]  = 10'b0000001100;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h3e:                                           // 8'h3e -> 8
        begin
        pixel[0]  = 10'b1111111100;
        pixel[1]  = 10'b1100001100;
        pixel[2]  = 10'b1100001100;
        pixel[3]  = 10'b1111111100;
        pixel[4]  = 10'b1100001100;
        pixel[5]  = 10'b1100001100;
        pixel[6]  = 10'b1111111100;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h46:                                           // 8'h46 -> 9
        begin
        pixel[0]  = 10'b1111111100;
        pixel[1]  = 10'b1100001100;
        pixel[2]  = 10'b1100001100;
        pixel[3]  = 10'b1111111100;
        pixel[4]  = 10'b0000001100;
        pixel[5]  = 10'b0000001100;
        pixel[6]  = 10'b1111111100;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h1c:                                           // 8'h1c -> a
        begin
        pixel[0]  = 10'b1111111100;
        pixel[1]  = 10'b0000001100;
        pixel[2]  = 10'b0000001100;
        pixel[3]  = 10'b1111111100;
        pixel[4]  = 10'b1100001100;
        pixel[5]  = 10'b1100001100;
        pixel[6]  = 10'b1111111100;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h1B:                                           // 8'h45 -> s
        begin
        pixel[0]  = 10'b0011111100;
        pixel[1]  = 10'b0110000000;
        pixel[2]  = 10'b1100000000;
        pixel[3]  = 10'b1111111100;
        pixel[4]  = 10'b0000001100;
        pixel[5]  = 10'b0000001100;
        pixel[6]  = 10'b1111110000;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h23:                                           // 8'h45 -> d
        begin
        pixel[0]  = 10'b0000001100;
        pixel[1]  = 10'b0000001100;
        pixel[2]  = 10'b0000001100;
        pixel[3]  = 10'b1111111100;
        pixel[4]  = 10'b1100001100;
        pixel[5]  = 10'b1100011100;
        pixel[6]  = 10'b1111101100;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h2B:                                           // 8'h2B -> f
        begin
        pixel[0]  = 10'b0011111100;
        pixel[1]  = 10'b0110000000;
        pixel[2]  = 10'b0110000000;
        pixel[3]  = 10'b1111111100;
        pixel[4]  = 10'b0110000000;
        pixel[5]  = 10'b0110000000;
        pixel[6]  = 10'b0110000000;
        pixel[7]  = 10'b0000000000;
        end	
        
    default:                                           // no char region
        begin
        pixel[0]  = {5'd0, 5'd0};
        pixel[1]  = {5'd0, 5'd0};
        pixel[2]  = {5'd0, 5'd0};
        pixel[3]  = {5'd0, 5'd0};
        pixel[4]  = {5'd0, 5'd0};
        pixel[5]  = {5'd0, 5'd0};
        pixel[6]  = {5'd0, 5'd0};
        pixel[7]  = {5'd0, 5'd0};
        end			
	endcase
end

/* Always block to display pixels onto the screen */
always @ (posedge vga_clk)
begin
    if ( video_on ) begin
    
	   if ((pix_row <= (s_row + row_width )) &&                              // Print the text area
           (pix_col <= (s_col + col_width))) 
        begin
				vga_r  = {4{pixel[(pix_row - 1) % 8][pix_col % 10]}};
	            vga_g  = {4{pixel[(pix_row - 1) % 8][pix_col % 10]}};
	            vga_b  = {4{pixel[(pix_row - 1) % 8][pix_col % 10]}};
        end 

        else if (( pix_col > (s_col + col_width) ) ||                       // Print background red colour
                 ( pix_row > (s_row + row_width) ))
        begin
                vga_r  = 4'b1100;               
	            vga_g  = 4'b0000;
	            vga_b  = 4'b0000;
	    end
    end
    
    else begin
                vga_r  = {4{video_on}};
	            vga_g  = {4{video_on}};
	            vga_b  = {4{video_on}};
    end
end

//assign reset = (flag == 1);
endmodule

