# clk 为 50MHz
# 按键：默认高电平
# 拨码开关：上1，下0
set_property PACKAGE_PIN U18 [get_ports sys_clk]
set_property PACKAGE_PIN E19 [get_ports reset_n]
set_property PACKAGE_PIN B19 [get_ports ds]
set_property PACKAGE_PIN C20 [get_ports sh_cp]
set_property PACKAGE_PIN A20 [get_ports st_cp]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports reset_n]
set_property IOSTANDARD LVCMOS33 [get_ports ds]
set_property IOSTANDARD LVCMOS33 [get_ports sh_cp]
set_property IOSTANDARD LVCMOS33 [get_ports st_cp]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets reset_n_IBUF]
# set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
# set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
# set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
# connect_debug_port dbg_hub/clk [get_nets clk_IBUF_BUFG]
