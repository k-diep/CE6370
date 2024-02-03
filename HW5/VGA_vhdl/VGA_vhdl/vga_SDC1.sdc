create_clock -name "sys_clk_in" -period 20.000ns [get_ports {sys_clk_in}]
derive_pll_clocks
derive_clock_uncertainty