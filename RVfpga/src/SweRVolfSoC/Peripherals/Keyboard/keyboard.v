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
	output reg [31:0]    keycode,
	output reg check
    ); 
    reg [7:0] data_curr;
    reg [7:0] data_pre;
    reg [3:0] b; 
    reg flag;
    reg keyboard_ack;
    
    initial 
    begin 
    b<=4'h1; 
    flag<=1'b0; 
    data_curr<=8'hf0; 
    data_pre<=8'hf0;
    keyboard_ack <= 0;  
    end
    
    always @(posedge clk,posedge wb_rst_i)
    begin
    if(wb_rst_i)begin
        keyboard_ack=0;
    end
    else begin
        keyboard_ack= !keyboard_ack & wb_stb_i & wb_cyc_i;
    end
    end
    
    always @(negedge PS2_CLK)   //Activating at negative edge of clock from keyboard 
    begin 
    case(b) 
    1:;      //first bit 
    2:data_curr[0]<=PS2_DATA; 
    3:data_curr[1]<=PS2_DATA; 
    4:data_curr[2]<=PS2_DATA; 
    5:data_curr[3]<=PS2_DATA; 
    6:data_curr[4]<=PS2_DATA; 
    7:data_curr[5]<=PS2_DATA; 
    8:data_curr[6]<=PS2_DATA; 
    9:data_curr[7]<=PS2_DATA; 
    10:flag<=1'b1; //Parity bit 
    11:flag<=1'b0; //Ending bit 
    endcase 
    
    if(b<=10) b<=b+1; 
    else if(b==11) b<=1; 
    end  
    always@(posedge flag)  // Printing data obtained to led 
    begin    
    if(data_curr==8'hf0) 
    begin
    keycode <= {24'b0,data_pre};
    check <= 1;
    end
    else  begin
    data_pre<=data_curr;
    check <= 0;
    end    
    end
    
    assign wb_ack_o=keyboard_ack;
    assign wb_dat_o=(wb_stb_i & wb_cyc_i)?(keycode & 32'hffffffff) : 32'h00000000;   
    endmodule