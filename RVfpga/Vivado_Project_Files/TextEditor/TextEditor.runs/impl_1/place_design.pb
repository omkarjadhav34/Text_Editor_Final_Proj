
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Bank IO standard internal Vref conflict: Conflicting INTERNAL_VREF constraint in Bank %s.  Some ports in this bank, for example, %s   (SSTL18_II, Vref=0.900V) 
 at site %s conflict with constrained INTERNAL_VREF of 0.750V.%s*DRC2.
 "
342default:default2default:default2D
 ".
ddram_dq[0]ddram_dq[0]2default:default2default:default2@
 "*
	IOB_X1Y54
	IOB_X1Y542default:default2default:default24
 DRC|Pin Planning|IO Standard2default:default8ZBIIVRC-1h px? 
?
YReport rule limit reached: REQP-1839 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px? 
?
YReport rule limit reached: REQP-1840 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2p
 "Z
!ddr2/ldc/storage_10_reg_0/ENBWREN!ddr2/ldc/storage_10_reg_0/ENBWREN2default:default2default:default2Z
 "D
ddr2/ldc/mem\\.w_readyddr2/ldc/mem\\.w_ready2default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2p
 "Z
!ddr2/ldc/storage_10_reg_0/ENBWREN!ddr2/ldc/storage_10_reg_0/ENBWREN2default:default2default:default2Z
 "D
ddr2/ldc/mem\\.w_readyddr2/ldc/mem\\.w_ready2default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2\
 "F
ddr2/ldc/storage_13_reg	ddr2/ldc/storage_13_reg2default:default2default:default2l
 "V
ddr2/ldc/storage_13_reg/ENARDENddr2/ldc/storage_13_reg/ENARDEN2default:default2default:default2r
 "\
"ddr2/ldc/read_r_buffer_syncfifo_re"ddr2/ldc/read_r_buffer_syncfifo_re2default:default2default:default2?
 "?
Ecdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/gen_sync[0].i_sync/reg_q_reg[1]	Ecdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/gen_sync[0].i_sync/reg_q_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2\
 "F
ddr2/ldc/storage_13_reg	ddr2/ldc/storage_13_reg2default:default2default:default2l
 "V
ddr2/ldc/storage_13_reg/ENARDENddr2/ldc/storage_13_reg/ENARDEN2default:default2default:default2r
 "\
"ddr2/ldc/read_r_buffer_syncfifo_re"ddr2/ldc/read_r_buffer_syncfifo_re2default:default2default:default2?
 "?
Ecdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/gen_sync[1].i_sync/reg_q_reg[1]	Ecdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/gen_sync[1].i_sync/reg_q_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2\
 "F
ddr2/ldc/storage_13_reg	ddr2/ldc/storage_13_reg2default:default2default:default2l
 "V
ddr2/ldc/storage_13_reg/ENARDENddr2/ldc/storage_13_reg/ENARDEN2default:default2default:default2r
 "\
"ddr2/ldc/read_r_buffer_syncfifo_re"ddr2/ldc/read_r_buffer_syncfifo_re2default:default2default:default2?
 "~
3cdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/wptr_q_reg[0]	3cdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/wptr_q_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2\
 "F
ddr2/ldc/storage_13_reg	ddr2/ldc/storage_13_reg2default:default2default:default2l
 "V
ddr2/ldc/storage_13_reg/ENARDENddr2/ldc/storage_13_reg/ENARDEN2default:default2default:default2r
 "\
"ddr2/ldc/read_r_buffer_syncfifo_re"ddr2/ldc/read_r_buffer_syncfifo_re2default:default2default:default2?
 "~
3cdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/wptr_q_reg[1]	3cdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/wptr_q_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?

?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_02default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "~
3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[0]	3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?

?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_02default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "~
3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[1]	3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?

?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_02default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "~
3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[2]	3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_02default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[10]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[10]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_02default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[16]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[16]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_02default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[17]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[17]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_02default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[19]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[19]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_02default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[1]	Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_02default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[28]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[28]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_02default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[29]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[29]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_02default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[2]	Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_02default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[30]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[30]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_02default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[31]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[31]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_02default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0/ADDRARDADDR[14]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[3]	Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_1	ddr2/ldc/storage_10_reg_12default:default2default:default2p
 "Z
!ddr2/ldc/storage_10_reg_1/ENBWREN!ddr2/ldc/storage_10_reg_1/ENBWREN2default:default2default:default2Z
 "D
ddr2/ldc/mem\\.w_readyddr2/ldc/mem\\.w_ready2default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_1	ddr2/ldc/storage_10_reg_12default:default2default:default2p
 "Z
!ddr2/ldc/storage_10_reg_1/ENBWREN!ddr2/ldc/storage_10_reg_1/ENBWREN2default:default2default:default2Z
 "D
ddr2/ldc/mem\\.w_readyddr2/ldc/mem\\.w_ready2default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?

?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "~
3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[0]	3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?

?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "~
3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[1]	3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?

?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "~
3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[2]	3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[10]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[10]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[13]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[13]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[16]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[16]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[17]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[17]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[19]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[19]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[1]	Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[28]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[28]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[29]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[29]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[2]	Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[30]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[30]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[31]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[31]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[3]	Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[7]	Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[8]	Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[8]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[9]	Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[9]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
c
DRC finished with %s
79*	vivadotcl2)
0 Errors, 43 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0322default:default2
2752.6722default:default2
0.0002default:defaultZ17-268h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 123ac9547
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.049 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0292default:default2
2752.6722default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place28
$swervolf/timer_ptc/rptc_cntr[31]_i_32default:default2
322default:default2?
?	swervolf/timer_ptc/rptc_cntr_reg[0] {FDCE}
	swervolf/timer_ptc/rptc_cntr_reg[10] {FDCE}
	swervolf/timer_ptc/rptc_cntr_reg[11] {FDCE}
	swervolf/timer_ptc/rptc_cntr_reg[12] {FDCE}
	swervolf/timer_ptc/rptc_cntr_reg[4] {FDCE}
2default:defaultZ30-568h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: bf123f04
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 1a3a3f186
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:14 ; elapsed = 00:00:18 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 1a3a3f186
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:14 ; elapsed = 00:00:18 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 1a3a3f186
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:14 ; elapsed = 00:00:18 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 113bba640
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:16 ; elapsed = 00:00:22 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
2.2.1 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
v
7Found %s candidate LUT instances to create LUTNM shape
536*physynth2
41232default:defaultZ32-1018h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
12992default:default2!
nets or cells2default:default2
202default:default2
cells2default:default2
12792default:default2
cells2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
R
.No candidate nets found for HD net replication521*physynthZ32-949h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0282default:default2
2752.6722default:default2
0.0002default:defaultZ17-268h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?
|  LUT Combining                                    |           20  |           1279  |                  1299  |           0  |           1  |  00:00:03  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |           20  |           1279  |                  1299  |           0  |           7  |  00:00:04  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
T
?Phase 2.2.1 Physical Synthesis In Placer | Checksum: 1c0da5ad6
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:02 ; elapsed = 00:01:28 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
K
6Phase 2.2 Global Placement Core | Checksum: 18c9b0a80
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:10 ; elapsed = 00:01:36 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 18c9b0a80
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:10 ; elapsed = 00:01:36 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 128ed6531
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:13 ; elapsed = 00:01:40 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1891ec76c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:16 ; elapsed = 00:01:47 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 18e8c12d8
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:17 ; elapsed = 00:01:49 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 13f7d5b1f
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:17 ; elapsed = 00:01:49 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
3.5 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.5 Fast Optimization | Checksum: 127282922
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:22 ; elapsed = 00:01:58 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.6 Small Shape Detail Placement | Checksum: 2ae106569
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:36 ; elapsed = 00:02:41 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.7 Re-assign LUT pins | Checksum: 29cfe5414
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:37 ; elapsed = 00:02:45 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 22cc19c15
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:38 ; elapsed = 00:02:45 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
3.9 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.9 Fast Optimization | Checksum: 1bd6f877a
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:43 ; elapsed = 00:03:00 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 1bd6f877a
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:44 ; elapsed = 00:03:01 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
V
APost Placement Optimization Initialization | Checksum: 1ea2ccbb1
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2,
clk_gen/o_rst_core_reg_12default:defaultZ46-33h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2,
clk_gen/o_rst_core_reg_42default:defaultZ46-33h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2$
clk_gen/rst_core2default:defaultZ46-33h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2%
ddr2/ldc/FDPE_3_02default:defaultZ46-33h px? 
?
?BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
42default:default2
02default:default2
02default:default2
42default:default2
02default:default2
02default:defaultZ46-56h px? 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 1ea2ccbb1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:54 ; elapsed = 00:03:16 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
0.5162default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 14441a160
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:08 ; elapsed = 00:03:39 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 14441a160
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:08 ; elapsed = 00:03:40 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 14441a160
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:08 ; elapsed = 00:03:40 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 14441a160
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:08 ; elapsed = 00:03:41 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0352default:default2
2752.6722default:default2
0.0002default:defaultZ17-268h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 114b29f66
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:09 ; elapsed = 00:03:41 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 114b29f66
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:09 ; elapsed = 00:03:42 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
=
(Ending Placer Task | Checksum: fc23adf4
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:09 ; elapsed = 00:03:42 . Memory (MB): peak = 2752.672 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
772default:default2
462default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:02:122default:default2
00:03:452default:default2
2752.6722default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0292default:default2
2752.6722default:default2
0.0002default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:092default:default2
00:00:062default:default2
2752.6722default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?C:/Users/jadha/OneDrive/Desktop/FPGA_Proj/Text_Editor/Text_Editor_Final_Proj/RVfpga/Vivado_Project_Files/TextEditor/TextEditor.runs/impl_1/rvfpganexys_placed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:152default:default2
00:00:182default:default2
2752.6722default:default2
0.0002default:defaultZ17-268h px? 
f
%s4*runtcl2J
6Executing : report_io -file rvfpganexys_io_placed.rpt
2default:defaulth px? 
?
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.055 . Memory (MB): peak = 2752.672 ; gain = 0.000
*commonh px? 
?
%s4*runtcl2?
nExecuting : report_utilization -file rvfpganexys_utilization_placed.rpt -pb rvfpganexys_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2g
SExecuting : report_control_sets -verbose -file rvfpganexys_control_sets_placed.rpt
2default:defaulth px? 
?
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.221 . Memory (MB): peak = 2752.672 ; gain = 0.000
*commonh px? 


End Record