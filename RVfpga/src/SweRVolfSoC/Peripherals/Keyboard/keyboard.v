module keyboard_top(                                                                                                         
	// WISHBONE Interface                                                                                                      
	wb_clk_i, wb_rst_i, wb_cyc_i, wb_adr_i, wb_dat_i, wb_sel_i, wb_we_i, wb_stb_i,                                         
	wb_dat_o, wb_ack_o, wb_err_o
	);
	input wire            wb_clk_i;	// Clock
	input wire            wb_rst_i;	// Reset
	input wire            wb_cyc_i;	// cycle valid input
	input wire  [31:0]	wb_adr_i;	// address bus inputs
	input wire  [31:0]	wb_dat_i;	// input data bus
	input wire	  [3:0]     wb_sel_i;	// byte select inputs
	input wire            wb_we_i;	// indicates write transfer
	input wire            wb_stb_i;	// strobe input
	output wire  [31:0]  wb_dat_o;	// output data bus
	output wire           wb_ack_o;	// normal termination
	output wire           wb_err_o;	// termination w/ error
	
    /*
    reg [11:0] reg0,reg1;
    reg[26:0] zeroes ;
    reg[31:0] dat,reg_o;
	reg pshbttn_ack;
	initial
	begin
	reg0 = 32'h00 ;
    reg1 = 32'h00;
	end
	always @(posedge wb_clk_i, posedge wb_rst_i)
	begin
		if(wb_rst_i) begin
		    reg0 = 32'h00 ;
            reg1 = 32'h00;
            dat = 32'b0;
			pshbttn_ack = 0;
		end
		else begin
		     case (wb_adr_i[5:2])
                1:   reg0 = pshbttn_ack && wb_we_i ? wb_dat_i : reg0;
                2:   reg1 = pshbttn_ack && wb_we_i ? wb_dat_i : reg1;
             endcase
			
			pshbttn_ack = !pshbttn_ack & wb_stb_i & wb_cyc_i;
		end
		end
	
	assign wb_ack_o = pshbttn_ack;                                                                                              
	assign wb_dat_o = (wb_adr_i[5:2] == 0)? {zeroes[26:0],pb_data_i[4:0]}:((wb_adr_i[5:2]==1) ? reg0: reg1);                                         
    assign pointerRow = reg0;
    assign pointerColumn = reg1;
    */
	endmodule