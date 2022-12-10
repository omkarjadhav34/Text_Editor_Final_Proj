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
reg  [11: 0]  row_width;
reg  [11: 0]  col_width;
reg  [11: 0]  s_row ;
reg  [11: 0]  s_col ;
reg  [0 :10]  pixel[0:7];
reg  [0 : 7]  data_buffer[0:40][0:79];
reg  [0 :11]  buffer_indx; 
reg  [0 : 7]  tempx;
reg  [0 : 11]  curr_row;
reg  [0 : 11]  buffer_row_indx [0:59];

integer i, j, first;

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
    s_row       = 12'd440;                  // s_row + row_width -> max vertical area of displaying text
    s_col       = 12'd600;                   // s_col + col_width -> max horizontal area of displaying text
    col_width   = 12'd8;
    row_width   = 12'd8;
    buffer_indx = 12'd0;                     // data buffer pointer -> index of user entered keycodes
    curr_row =0;
    
    first = 1;
    
    for (i = 0; i < 70; i = i + 1)          // Initally display 0  for first row 
    begin
        if (i < 60) begin
            data_buffer[0][i] = 8'h45;
            buffer_row_indx[i] = 12'h000;
            end
        else
            data_buffer[0][i] = 8'hff;
    end

    /* message: ece 540 */
    data_buffer[1][10] = 8'h24;              //E
    data_buffer[1][11] = 8'h21;
    data_buffer[1][12] = 8'h24;
    data_buffer[1][13] = 8'h29;
    data_buffer[1][14] = 8'h2e;
    data_buffer[1][15] = 8'h25;
    data_buffer[1][16] = 8'h45;
    data_buffer[1][17] = 8'hff;
    
    /* message: text editor */
    data_buffer[6][10] = 8'h2c;              
    data_buffer[6][12] = 8'h24;
    data_buffer[6][14] = 8'h22;
    data_buffer[6][16] = 8'h2c;
    data_buffer[6][22] = 8'h24;
    data_buffer[6][24] = 8'h23;
    data_buffer[6][26] = 8'h43;
    data_buffer[6][28] = 8'h2c;              
    data_buffer[6][30] = 8'h44;
    data_buffer[6][32] = 8'h2d;
    
    
    /* message: done by */
    data_buffer[10][0] = 8'h23;              //E
    data_buffer[10][1] = 8'h44;
    data_buffer[10][2] = 8'h31;
    data_buffer[10][3] = 8'h24;
    data_buffer[10][4] = 8'h29;
    data_buffer[10][5] = 8'h32;
    data_buffer[10][6] = 8'h35;
    
    /* message: omkar */
    data_buffer[11][10] = 8'h44;              
    data_buffer[11][11] = 8'h3a;
    data_buffer[11][12] = 8'h42;
    data_buffer[11][13] = 8'h1c;
    data_buffer[11][14] = 8'h2d;
    data_buffer[11][15] = 8'h29;
    
    /* message: raghavendra */
    data_buffer[12][10] = 8'h2d;             
    data_buffer[12][11] = 8'h1c;
    data_buffer[12][12] = 8'h34;
    data_buffer[12][13] = 8'h33;
    data_buffer[12][14] = 8'h1c;
    data_buffer[12][15] = 8'h2a;
    data_buffer[12][16] = 8'h24;
    data_buffer[12][17] = 8'h31;
    data_buffer[12][18] = 8'h23;
    data_buffer[12][19] = 8'h2d;
    data_buffer[12][20] = 8'h1c;
    
    /* message: sakshi */
    data_buffer[13][10] = 8'h1b;             
    data_buffer[13][11] = 8'h1c;
    data_buffer[13][12] = 8'h42;
    data_buffer[13][13] = 8'h1b;
    data_buffer[13][14] = 8'h33;
    data_buffer[13][15] = 8'h43;
end

/*  Always block to enter a new entered keycode into the buffer */
always @ (posedge flag)
begin
	if ((keycode[7:0] > 8'b0)) begin
		
		if(first == 1) begin
		  for(i = 0; i < 40; i = i + 1) begin
		      for(j = 0; j < 80; j = j + 1) begin
		          data_buffer[i][j] = 8'h00;
		      end
		  end
		  
          s_row       = 12'd440;                  // s_row + row_width -> max vertical area of displaying text
          s_col       = 12'd600;
          first = 0;
		end   
		
		if (8'h66 == keycode[7:0])
			buffer_indx = buffer_indx - 1;
        
        else if(keycode[7:0] == 8'h5A) begin
		    buffer_row_indx[curr_row] = buffer_indx;
		    curr_row                  = curr_row + 1;
		    buffer_indx               = buffer_row_indx[curr_row];
        end
        else begin
			 data_buffer[curr_row][buffer_indx] = keycode[7:0];
			 buffer_indx                        = buffer_indx + 1;      // Increment buffer index
             //s_col                              = (buffer_indx * 10) + 10;
             //s_row                              = 8; 
        end
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
        
    8'h1c:
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
    
    8'h32:
        begin
        pixel[0] = 10'b1100000000;
        pixel[1] = 10'b1100000000;
        pixel[2] = 10'b1100000000;
        pixel[3] = 10'b1111111100;
        pixel[4] = 10'b1100001100;
        pixel[5] = 10'b1100001100;
        pixel[6] = 10'b1111111100;
        pixel[7] = 10'b0000000000;
        end
        
    8'h21:
        begin
        pixel[0]  = 10'b0000000000;
        pixel[1]  = 10'b0000000000;
        pixel[2]  = 10'b0000000000;
        pixel[3]  = 10'b1111111100;
        pixel[4]  = 10'b1100000000;
        pixel[5]  = 10'b1100000000;
        pixel[6]  = 10'b1111111100;
        pixel[7] =  10'b0000000000;
        end
        
    8'h23:
        begin
        pixel[0]  = 10'b0000001100;
        pixel[1]  = 10'b0000001100;
        pixel[2]  = 10'b0000001100;
        pixel[3]  = 10'b1111111100;
        pixel[4]  = 10'b1100001100;
        pixel[5]  = 10'b1100001100;
        pixel[6]  = 10'b1111111100;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h24:
        begin
        pixel[0]  = 10'b1111111100;
        pixel[1]  = 10'b1100001100;
        pixel[2]  = 10'b1100001100;
        pixel[3]  = 10'b1111111100;
        pixel[4]  = 10'b1100000000;
        pixel[5]  = 10'b1100000000;
        pixel[6]  = 10'b1111111100;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h2B:
        begin
        pixel[0]  = 10'b0011111100;
        pixel[1]  = 10'b0110000000;
        pixel[2]  = 10'b0110000000;
        pixel[3]  = 10'b1111110000;
        pixel[4]  = 10'b0110000000;
        pixel[5]  = 10'b0110000000;
        pixel[6]  = 10'b0110000000;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h34:
        begin
        pixel[0]  = 10'b0000000000;
        pixel[1]  = 10'b0111111000;
        pixel[2]  = 10'b1100001100;
        pixel[3]  = 10'b1111111100;
        pixel[4]  = 10'b0000001100;
        pixel[5]  = 10'b1100001100;
        pixel[6]  = 10'b0111111100;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h33:
        begin
        pixel[0]  = 10'b1100000000;
        pixel[1]  = 10'b1100000000;
        pixel[2]  = 10'b1100000000;
        pixel[3]  = 10'b1111111100;
        pixel[4]  = 10'b1100001100;
        pixel[5]  = 10'b1100001100;
        pixel[6]  = 10'b1100001100;
        pixel[7]  = 10'b0000000000;
        end
        
    8'h43:
        begin
        pixel[0] = 10'b0001100000;
        pixel[1] = 10'b0000000000;
        pixel[2] = 10'b0001100000;
        pixel[3] = 10'b0001100000;
        pixel[4] = 10'b0001100000;
        pixel[5] = 10'b0001100000;
        pixel[6] = 10'b1111111100;
        pixel[7] = 10'b0000000000;
        end
        
    8'h3B:
        begin
        pixel[0] = 10'b0001100000;
        pixel[1] = 10'b0000000000;
        pixel[2] = 10'b0001100000;
        pixel[3] = 10'b0001100000;
        pixel[4] = 10'b1101100000;
        pixel[5] = 10'b1101100000;
        pixel[6] = 10'b1111100000;
        pixel[7] = 10'b0000000000;
        end
        
    8'h42:
        begin
        pixel[0] = 10'b0000000000;
        pixel[1] = 10'b1100000000;
        pixel[2] = 10'b1100001000;
        pixel[3] = 10'b1100010000;
        pixel[4] = 10'b1111100000;
        pixel[5] = 10'b1100001000;
        pixel[6] = 10'b1100000100;
        pixel[7] = 10'b0000000000;
        end
        
    8'h4B:
        begin
        pixel[0] = 10'b0000001100;
        pixel[1] = 10'b0000001100;
        pixel[2] = 10'b0000001100;
        pixel[3] = 10'b0000001100;
        pixel[4] = 10'b0000001100;
        pixel[5] = 10'b0000001100;
        pixel[6] = 10'b0001111110;
        pixel[7] = 10'b0000000000;
        end
        
    8'h3A:
        begin
        pixel[0] = 10'b0000000000;
        pixel[1] = 10'b1100000000;
        pixel[2] = 10'b1100000000;
        pixel[3] = 10'b1111011100;
        pixel[4] = 10'b1100101100;
        pixel[5] = 10'b1100101100;
        pixel[6] = 10'b1100001100;
        pixel[7] = 10'b0000000000;
        end
        
    8'h31:
        begin
        pixel[0] = 10'b0000000000;
        pixel[1] = 10'b0000000000;
        pixel[2] = 10'b1100000000;
        pixel[3] = 10'b1111111000;
        pixel[4] = 10'b1100001100;
        pixel[5] = 10'b1100001100;
        pixel[6] = 10'b1100001100;
        pixel[7] = 10'b0000000000;
        end
        
    8'h44:
        begin
        pixel[0] = 10'b0000000000;
        pixel[1] = 10'b0000000000;
        pixel[2] = 10'b0000000000;
        pixel[3] = 10'b0111111000;
        pixel[4] = 10'b1100001100;
        pixel[5] = 10'b1100001100;
        pixel[6] = 10'b0111111000;
        pixel[7] = 10'b0000000000;
        end
        
    8'h4D:
        begin
        pixel[0] = 10'b0000000000;
        pixel[1] = 10'b1111111000;
        pixel[2] = 10'b1100001100;
        pixel[3] = 10'b1100001100;
        pixel[4] = 10'b1111111000;
        pixel[5] = 10'b1100000000;
        pixel[6] = 10'b1100000000;
        pixel[7] = 10'b0000000000;
        end
        
    8'h15:
        begin
        pixel[0] = 10'b0000000000;
        pixel[1] = 10'b0000000000;
        pixel[2] = 10'b1111111100;
        pixel[3] = 10'b1100001100;
        pixel[4] = 10'b1100001100;
        pixel[5] = 10'b1111111100;
        pixel[6] = 10'b0000001100;
        pixel[7] = 10'b0000000000;
        end
    
    8'h2D:
        begin
        pixel[0] = 10'b0000000000;
        pixel[1] = 10'b1100000000;
        pixel[2] = 10'b1100111000;
        pixel[3] = 10'b1101000000;
        pixel[4] = 10'b1110000000;
        pixel[5] = 10'b1100000000;
        pixel[6] = 10'b1100000000;
        pixel[7] = 10'b0000000000;
        end
    
    8'h1B:
        begin
        pixel[0] = 10'b0000000000;
        pixel[1] = 10'b0000000000;
        pixel[2] = 10'b0111111100;
        pixel[3] = 10'b1100000000;
        pixel[4] = 10'b1111111100;
        pixel[5] = 10'b0000001100;
        pixel[6] = 10'b1111111100;
        pixel[7] = 10'b0000000000;
        end
    
    8'h2C:
        begin
        pixel[0] = 10'b0001100000;
        pixel[1] = 10'b0001100000;
        pixel[2] = 10'b0001100000;
        pixel[3] = 10'b1111111100;
        pixel[4] = 10'b0001100000;
        pixel[5] = 10'b0001100100;
        pixel[6] = 10'b0001111000;
        pixel[7] = 10'b0000000000;
        end
    
    8'h3C:
        begin
        pixel[0] = 10'b0000000000;
        pixel[1] = 10'b0000000000;
        pixel[2] = 10'b0000000000;
        pixel[3] = 10'b1100001100;
        pixel[4] = 10'b1100001100;
        pixel[5] = 10'b1100001100;
        pixel[6] = 10'b0111111000;
        pixel[7] = 10'b0000000000;
        end
    
    8'h2A:
        begin
        pixel[0] = 10'b0000000000;
        pixel[1] = 10'b0000000000;
        pixel[2] = 10'b0000000000;
        pixel[3] = 10'b1100001100;
        pixel[4] = 10'b1100001100;
        pixel[5] = 10'b0110011000;
        pixel[6] = 10'b0001100000;
        pixel[7] = 10'b0000000000;
        end
    
    8'h1D:
        begin
        pixel[0] = 10'b0000000000;
        pixel[1] = 10'b0000000000;
        pixel[2] = 10'b0000000000;
        pixel[3] = 10'b1100001100;
        pixel[4] = 10'b1101101100;
        pixel[5] = 10'b1101101100;
        pixel[6] = 10'b1110011100;
        pixel[7] = 10'b0000000000;
        end
    
    8'h22:
        begin
        pixel[0] = 10'b0000000000;
        pixel[1] = 10'b0000000000;
        pixel[2] = 10'b1100001100;
        pixel[3] = 10'b0100010000;
        pixel[4] = 10'b0001000000;
        pixel[5] = 10'b0100010000;
        pixel[6] = 10'b1100001100;
        pixel[7] = 10'b0000000000;
        end
    
    8'h35:
        begin
        pixel[0] = 10'b1100001100;
        pixel[1] = 10'b1100001100;
        pixel[2] = 10'b1100001100;
        pixel[3] = 10'b1111111100;
        pixel[4] = 10'b0000001100;
        pixel[5] = 10'b0000001100;
        pixel[6] = 10'b1111111000;
        pixel[7] = 10'b0000000000;
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
    
	   if ((pix_row <= (s_row + row_width)) &&                              // Print the text area
           (pix_col <= (s_col + col_width))) 
        begin
				vga_r  = {4{pixel[(pix_row - 1) % 8][pix_col % 10]}};
	            vga_g  = {4{pixel[(pix_row - 1) % 8][pix_col % 10]}};
	            vga_b  = {4{pixel[(pix_row - 1) % 8][pix_col % 10]}};
        end 

        else if (( pix_col > (s_col + col_width) ) ||                       // Print background red colour
                 ( pix_row > (s_row + row_width) ))
        begin
            if (first == 1) begin
                vga_r  = 4'b1100;               
	            vga_g  = 4'b0000;
	            vga_b  = 4'b0000;
	        end
	        else begin
                vga_r  = 4'b0000;               
	            vga_g  = 4'b0000;
	            vga_b  = 4'b0000;	        
	        end
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

