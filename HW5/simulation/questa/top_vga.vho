-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "10/13/2023 16:09:15"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_vga IS
    PORT (
	sys_clk_in : IN std_logic;
	reset_n : IN std_logic;
	red : BUFFER std_logic_vector(7 DOWNTO 0);
	green : BUFFER std_logic_vector(7 DOWNTO 0);
	blue : BUFFER std_logic_vector(7 DOWNTO 0);
	pixel_clk_out : BUFFER std_logic;
	n_sync : BUFFER std_logic;
	n_blank : BUFFER std_logic;
	h_sync : BUFFER std_logic;
	v_sync : BUFFER std_logic
	);
END top_vga;

-- Design Ports Information
-- red[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_clk_out	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_sync	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_blank	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_sync	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v_sync	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_clk_in	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_vga IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sys_clk_in : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_red : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_blue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pixel_clk_out : std_logic;
SIGNAL ww_n_sync : std_logic;
SIGNAL ww_n_blank : std_logic;
SIGNAL ww_h_sync : std_logic;
SIGNAL ww_v_sync : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sys_clk_in~input_o\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \uut2|Add0~37_sumout\ : std_logic;
SIGNAL \uut2|Add0~38\ : std_logic;
SIGNAL \uut2|Add0~41_sumout\ : std_logic;
SIGNAL \uut2|Add0~42\ : std_logic;
SIGNAL \uut2|Add0~45_sumout\ : std_logic;
SIGNAL \uut2|Add0~46\ : std_logic;
SIGNAL \uut2|Add0~33_sumout\ : std_logic;
SIGNAL \uut2|Add0~34\ : std_logic;
SIGNAL \uut2|Add0~29_sumout\ : std_logic;
SIGNAL \uut2|Add0~30\ : std_logic;
SIGNAL \uut2|Add0~25_sumout\ : std_logic;
SIGNAL \uut2|Add0~26\ : std_logic;
SIGNAL \uut2|Add0~21_sumout\ : std_logic;
SIGNAL \uut2|Add0~22\ : std_logic;
SIGNAL \uut2|Add0~5_sumout\ : std_logic;
SIGNAL \uut2|Add0~6\ : std_logic;
SIGNAL \uut2|Add0~9_sumout\ : std_logic;
SIGNAL \uut2|Add0~10\ : std_logic;
SIGNAL \uut2|Add0~13_sumout\ : std_logic;
SIGNAL \uut2|Add0~14\ : std_logic;
SIGNAL \uut2|Add0~17_sumout\ : std_logic;
SIGNAL \uut2|Add0~18\ : std_logic;
SIGNAL \uut2|Add0~1_sumout\ : std_logic;
SIGNAL \uut2|LessThan0~0_combout\ : std_logic;
SIGNAL \uut2|LessThan0~1_combout\ : std_logic;
SIGNAL \uut2|LessThan0~2_combout\ : std_logic;
SIGNAL \uut2|LessThan6~1_combout\ : std_logic;
SIGNAL \uut2|column[31]~0_combout\ : std_logic;
SIGNAL \uut2|Add1~41_sumout\ : std_logic;
SIGNAL \uut2|Add1~42\ : std_logic;
SIGNAL \uut2|Add1~37_sumout\ : std_logic;
SIGNAL \uut2|Add1~38\ : std_logic;
SIGNAL \uut2|Add1~33_sumout\ : std_logic;
SIGNAL \uut2|Add1~34\ : std_logic;
SIGNAL \uut2|Add1~29_sumout\ : std_logic;
SIGNAL \uut2|Add1~30\ : std_logic;
SIGNAL \uut2|Add1~13_sumout\ : std_logic;
SIGNAL \uut2|Add1~14\ : std_logic;
SIGNAL \uut2|Add1~9_sumout\ : std_logic;
SIGNAL \uut2|Add1~10\ : std_logic;
SIGNAL \uut2|Add1~5_sumout\ : std_logic;
SIGNAL \uut2|v_count~0_combout\ : std_logic;
SIGNAL \uut2|Add1~6\ : std_logic;
SIGNAL \uut2|Add1~2\ : std_logic;
SIGNAL \uut2|Add1~17_sumout\ : std_logic;
SIGNAL \uut2|Add1~18\ : std_logic;
SIGNAL \uut2|Add1~21_sumout\ : std_logic;
SIGNAL \uut2|v_count~1_combout\ : std_logic;
SIGNAL \uut2|v_count~2_combout\ : std_logic;
SIGNAL \uut2|Add1~22\ : std_logic;
SIGNAL \uut2|Add1~25_sumout\ : std_logic;
SIGNAL \uut2|v_count~5_combout\ : std_logic;
SIGNAL \uut2|Add1~1_sumout\ : std_logic;
SIGNAL \uut2|row[7]~feeder_combout\ : std_logic;
SIGNAL \uut2|LessThan7~0_combout\ : std_logic;
SIGNAL \uut2|v_count~4_combout\ : std_logic;
SIGNAL \uut2|LessThan7~1_combout\ : std_logic;
SIGNAL \uut2|LessThan7~2_combout\ : std_logic;
SIGNAL \uut2|v_count~3_combout\ : std_logic;
SIGNAL \uut2|LessThan7~3_combout\ : std_logic;
SIGNAL \uut2|row[8]~feeder_combout\ : std_logic;
SIGNAL \uut2|row[6]~feeder_combout\ : std_logic;
SIGNAL \uut2|row[10]~feeder_combout\ : std_logic;
SIGNAL \uut2|row[2]~feeder_combout\ : std_logic;
SIGNAL \uut2|row[4]~feeder_combout\ : std_logic;
SIGNAL \uut2|row[3]~feeder_combout\ : std_logic;
SIGNAL \uut2|row[5]~feeder_combout\ : std_logic;
SIGNAL \uut2|row[1]~feeder_combout\ : std_logic;
SIGNAL \uut3|LessThan0~0_combout\ : std_logic;
SIGNAL \uut2|row[9]~feeder_combout\ : std_logic;
SIGNAL \uut3|blue[0]~0_combout\ : std_logic;
SIGNAL \uut2|LessThan6~0_combout\ : std_logic;
SIGNAL \uut2|process_0~0_combout\ : std_logic;
SIGNAL \uut2|disp_ena~q\ : std_logic;
SIGNAL \uut2|row[31]~0_combout\ : std_logic;
SIGNAL \uut3|LessThan1~0_combout\ : std_logic;
SIGNAL \uut3|LessThan1~1_combout\ : std_logic;
SIGNAL \uut3|blue[0]~1_combout\ : std_logic;
SIGNAL \uut2|process_0~1_combout\ : std_logic;
SIGNAL \uut2|LessThan3~1_combout\ : std_logic;
SIGNAL \uut2|LessThan3~0_combout\ : std_logic;
SIGNAL \uut2|process_0~2_combout\ : std_logic;
SIGNAL \uut2|h_sync~q\ : std_logic;
SIGNAL \uut2|process_0~3_combout\ : std_logic;
SIGNAL \uut2|process_0~4_combout\ : std_logic;
SIGNAL \uut2|process_0~5_combout\ : std_logic;
SIGNAL \uut2|process_0~6_combout\ : std_logic;
SIGNAL \uut2|v_sync~q\ : std_logic;
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \uut2|row\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut2|column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut2|h_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \uut2|v_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \uut1|dcm_altera_inst|altera_pll_i|outclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \uut2|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_v_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \uut2|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_h_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \uut2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \uut2|ALT_INV_column\ : std_logic_vector(31 DOWNTO 3);
SIGNAL \uut2|ALT_INV_row\ : std_logic_vector(31 DOWNTO 1);
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;
SIGNAL \uut2|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_LessThan7~2_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_v_count~4_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_v_count~3_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_v_count~2_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_v_count~1_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_v_count~0_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_h_sync~q\ : std_logic;
SIGNAL \uut3|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \uut3|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \uut3|ALT_INV_blue[0]~0_combout\ : std_logic;
SIGNAL \uut3|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \uut2|ALT_INV_disp_ena~q\ : std_logic;

BEGIN

ww_sys_clk_in <= sys_clk_in;
ww_reset_n <= reset_n;
red <= ww_red;
green <= ww_green;
blue <= ww_blue;
pixel_clk_out <= ww_pixel_clk_out;
n_sync <= ww_n_sync;
n_blank <= ww_n_blank;
h_sync <= ww_h_sync;
v_sync <= ww_v_sync;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \sys_clk_in~input_o\);

\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ <= \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(6);

\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\uut2|ALT_INV_Add1~41_sumout\ <= NOT \uut2|Add1~41_sumout\;
\uut2|ALT_INV_Add0~45_sumout\ <= NOT \uut2|Add0~45_sumout\;
\uut2|ALT_INV_Add0~41_sumout\ <= NOT \uut2|Add0~41_sumout\;
\uut2|ALT_INV_Add0~37_sumout\ <= NOT \uut2|Add0~37_sumout\;
\uut2|ALT_INV_Add0~33_sumout\ <= NOT \uut2|Add0~33_sumout\;
\uut2|ALT_INV_Add0~29_sumout\ <= NOT \uut2|Add0~29_sumout\;
\uut2|ALT_INV_Add0~25_sumout\ <= NOT \uut2|Add0~25_sumout\;
\uut2|ALT_INV_Add0~21_sumout\ <= NOT \uut2|Add0~21_sumout\;
\uut2|ALT_INV_Add1~37_sumout\ <= NOT \uut2|Add1~37_sumout\;
\uut2|ALT_INV_Add1~33_sumout\ <= NOT \uut2|Add1~33_sumout\;
\uut2|ALT_INV_Add1~29_sumout\ <= NOT \uut2|Add1~29_sumout\;
\uut2|ALT_INV_Add1~25_sumout\ <= NOT \uut2|Add1~25_sumout\;
\uut2|ALT_INV_Add1~21_sumout\ <= NOT \uut2|Add1~21_sumout\;
\uut2|ALT_INV_Add1~17_sumout\ <= NOT \uut2|Add1~17_sumout\;
\uut2|ALT_INV_Add1~13_sumout\ <= NOT \uut2|Add1~13_sumout\;
\uut2|ALT_INV_Add1~9_sumout\ <= NOT \uut2|Add1~9_sumout\;
\uut2|ALT_INV_Add1~5_sumout\ <= NOT \uut2|Add1~5_sumout\;
\uut2|ALT_INV_v_count\(5) <= NOT \uut2|v_count\(5);
\uut2|ALT_INV_v_count\(8) <= NOT \uut2|v_count\(8);
\uut2|ALT_INV_v_count\(9) <= NOT \uut2|v_count\(9);
\uut2|ALT_INV_v_count\(3) <= NOT \uut2|v_count\(3);
\uut2|ALT_INV_v_count\(4) <= NOT \uut2|v_count\(4);
\uut2|ALT_INV_v_count\(6) <= NOT \uut2|v_count\(6);
\uut2|ALT_INV_v_count\(0) <= NOT \uut2|v_count\(0);
\uut2|ALT_INV_v_count\(1) <= NOT \uut2|v_count\(1);
\uut2|ALT_INV_v_count\(2) <= NOT \uut2|v_count\(2);
\uut2|ALT_INV_Add1~1_sumout\ <= NOT \uut2|Add1~1_sumout\;
\uut2|ALT_INV_v_count\(7) <= NOT \uut2|v_count\(7);
\uut2|ALT_INV_v_count\(10) <= NOT \uut2|v_count\(10);
\uut2|ALT_INV_h_count\(5) <= NOT \uut2|h_count\(5);
\uut2|ALT_INV_h_count\(6) <= NOT \uut2|h_count\(6);
\uut2|ALT_INV_h_count\(7) <= NOT \uut2|h_count\(7);
\uut2|ALT_INV_h_count\(8) <= NOT \uut2|h_count\(8);
\uut2|ALT_INV_h_count\(0) <= NOT \uut2|h_count\(0);
\uut2|ALT_INV_h_count\(1) <= NOT \uut2|h_count\(1);
\uut2|ALT_INV_h_count\(2) <= NOT \uut2|h_count\(2);
\uut2|ALT_INV_h_count\(3) <= NOT \uut2|h_count\(3);
\uut2|ALT_INV_h_count\(4) <= NOT \uut2|h_count\(4);
\uut2|ALT_INV_h_count\(9) <= NOT \uut2|h_count\(9);
\uut2|ALT_INV_h_count\(10) <= NOT \uut2|h_count\(10);
\uut2|ALT_INV_h_count\(11) <= NOT \uut2|h_count\(11);
\uut2|ALT_INV_Add0~17_sumout\ <= NOT \uut2|Add0~17_sumout\;
\uut2|ALT_INV_Add0~13_sumout\ <= NOT \uut2|Add0~13_sumout\;
\uut2|ALT_INV_Add0~9_sumout\ <= NOT \uut2|Add0~9_sumout\;
\uut2|ALT_INV_Add0~5_sumout\ <= NOT \uut2|Add0~5_sumout\;
\uut2|ALT_INV_Add0~1_sumout\ <= NOT \uut2|Add0~1_sumout\;
\uut2|ALT_INV_column\(3) <= NOT \uut2|column\(3);
\uut2|ALT_INV_column\(4) <= NOT \uut2|column\(4);
\uut2|ALT_INV_column\(5) <= NOT \uut2|column\(5);
\uut2|ALT_INV_column\(6) <= NOT \uut2|column\(6);
\uut2|ALT_INV_column\(7) <= NOT \uut2|column\(7);
\uut2|ALT_INV_column\(8) <= NOT \uut2|column\(8);
\uut2|ALT_INV_column\(9) <= NOT \uut2|column\(9);
\uut2|ALT_INV_column\(10) <= NOT \uut2|column\(10);
\uut2|ALT_INV_column\(11) <= NOT \uut2|column\(11);
\uut2|ALT_INV_row\(1) <= NOT \uut2|row\(1);
\uut2|ALT_INV_row\(2) <= NOT \uut2|row\(2);
\uut2|ALT_INV_row\(3) <= NOT \uut2|row\(3);
\uut2|ALT_INV_row\(4) <= NOT \uut2|row\(4);
\uut2|ALT_INV_row\(5) <= NOT \uut2|row\(5);
\uut2|ALT_INV_row\(6) <= NOT \uut2|row\(6);
\uut2|ALT_INV_row\(7) <= NOT \uut2|row\(7);
\uut2|ALT_INV_row\(8) <= NOT \uut2|row\(8);
\uut2|ALT_INV_row\(9) <= NOT \uut2|row\(9);
\uut2|ALT_INV_row\(10) <= NOT \uut2|row\(10);
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
\uut2|ALT_INV_process_0~5_combout\ <= NOT \uut2|process_0~5_combout\;
\uut2|ALT_INV_process_0~4_combout\ <= NOT \uut2|process_0~4_combout\;
\uut2|ALT_INV_process_0~3_combout\ <= NOT \uut2|process_0~3_combout\;
\uut2|ALT_INV_process_0~1_combout\ <= NOT \uut2|process_0~1_combout\;
\uut2|ALT_INV_LessThan3~1_combout\ <= NOT \uut2|LessThan3~1_combout\;
\uut2|ALT_INV_LessThan3~0_combout\ <= NOT \uut2|LessThan3~0_combout\;
\uut2|ALT_INV_LessThan6~1_combout\ <= NOT \uut2|LessThan6~1_combout\;
\uut2|ALT_INV_LessThan7~2_combout\ <= NOT \uut2|LessThan7~2_combout\;
\uut2|ALT_INV_LessThan7~1_combout\ <= NOT \uut2|LessThan7~1_combout\;
\uut2|ALT_INV_LessThan7~0_combout\ <= NOT \uut2|LessThan7~0_combout\;
\uut2|ALT_INV_v_count~4_combout\ <= NOT \uut2|v_count~4_combout\;
\uut2|ALT_INV_v_count~3_combout\ <= NOT \uut2|v_count~3_combout\;
\uut2|ALT_INV_v_count~2_combout\ <= NOT \uut2|v_count~2_combout\;
\uut2|ALT_INV_v_count~1_combout\ <= NOT \uut2|v_count~1_combout\;
\uut2|ALT_INV_v_count~0_combout\ <= NOT \uut2|v_count~0_combout\;
\uut2|ALT_INV_LessThan6~0_combout\ <= NOT \uut2|LessThan6~0_combout\;
\uut2|ALT_INV_LessThan0~2_combout\ <= NOT \uut2|LessThan0~2_combout\;
\uut2|ALT_INV_LessThan0~1_combout\ <= NOT \uut2|LessThan0~1_combout\;
\uut2|ALT_INV_LessThan0~0_combout\ <= NOT \uut2|LessThan0~0_combout\;
\uut2|ALT_INV_h_sync~q\ <= NOT \uut2|h_sync~q\;
\uut3|ALT_INV_LessThan1~1_combout\ <= NOT \uut3|LessThan1~1_combout\;
\uut3|ALT_INV_LessThan1~0_combout\ <= NOT \uut3|LessThan1~0_combout\;
\uut2|ALT_INV_column\(31) <= NOT \uut2|column\(31);
\uut3|ALT_INV_blue[0]~0_combout\ <= NOT \uut3|blue[0]~0_combout\;
\uut3|ALT_INV_LessThan0~0_combout\ <= NOT \uut3|LessThan0~0_combout\;
\uut2|ALT_INV_row\(31) <= NOT \uut2|row\(31);
\uut2|ALT_INV_disp_ena~q\ <= NOT \uut2|disp_ena~q\;

-- Location: IOOBUF_X40_Y81_N53
\red[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_red(0));

-- Location: IOOBUF_X38_Y81_N2
\red[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_red(1));

-- Location: IOOBUF_X26_Y81_N59
\red[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_red(2));

-- Location: IOOBUF_X38_Y81_N19
\red[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_red(3));

-- Location: IOOBUF_X36_Y81_N36
\red[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_red(4));

-- Location: IOOBUF_X22_Y81_N19
\red[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_red(5));

-- Location: IOOBUF_X22_Y81_N2
\red[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_red(6));

-- Location: IOOBUF_X26_Y81_N42
\red[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_red(7));

-- Location: IOOBUF_X4_Y81_N19
\green[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_green(0));

-- Location: IOOBUF_X4_Y81_N2
\green[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_green(1));

-- Location: IOOBUF_X20_Y81_N19
\green[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_green(2));

-- Location: IOOBUF_X6_Y81_N2
\green[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_green(3));

-- Location: IOOBUF_X10_Y81_N59
\green[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_green(4));

-- Location: IOOBUF_X10_Y81_N42
\green[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_green(5));

-- Location: IOOBUF_X18_Y81_N42
\green[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_green(6));

-- Location: IOOBUF_X18_Y81_N59
\green[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_green(7));

-- Location: IOOBUF_X40_Y81_N36
\blue[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut3|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(0));

-- Location: IOOBUF_X28_Y81_N19
\blue[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut3|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(1));

-- Location: IOOBUF_X20_Y81_N2
\blue[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut3|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(2));

-- Location: IOOBUF_X36_Y81_N19
\blue[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut3|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(3));

-- Location: IOOBUF_X28_Y81_N2
\blue[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut3|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(4));

-- Location: IOOBUF_X36_Y81_N2
\blue[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut3|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(5));

-- Location: IOOBUF_X40_Y81_N19
\blue[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut3|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(6));

-- Location: IOOBUF_X32_Y81_N19
\blue[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut3|blue[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_blue(7));

-- Location: IOOBUF_X38_Y81_N36
\pixel_clk_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_pixel_clk_out);

-- Location: IOOBUF_X28_Y81_N36
\n_sync~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_n_sync);

-- Location: IOOBUF_X6_Y81_N19
\n_blank~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_n_blank);

-- Location: IOOBUF_X36_Y81_N53
\h_sync~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut2|ALT_INV_h_sync~q\,
	devoe => ww_devoe,
	o => ww_h_sync);

-- Location: IOOBUF_X34_Y81_N42
\v_sync~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut2|v_sync~q\,
	devoe => ww_devoe,
	o => ww_v_sync);

-- Location: IOIBUF_X32_Y0_N1
\sys_clk_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_clk_in,
	o => \sys_clk_in~input_o\);

-- Location: PLLREFCLKSELECT_X0_Y21_N0
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: IOIBUF_X36_Y0_N1
\reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FRACTIONALPLL_X0_Y15_N0
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "772.222222 mhz",
	pll_atb => 0,
	pll_bwctrl => 12000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 20,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 70,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 69,
	pll_m_cnt_odd_div_duty_en => "true",
	pll_m_cnt_ph_mux_prst => 6,
	pll_m_cnt_prst => 8,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 5,
	pll_n_cnt_lo_div => 4,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 1,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \uut1|dcm_altera_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \ALT_INV_reset_n~input_o\,
	refclkin => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \uut1|dcm_altera_inst|altera_pll_i|fboutclk_wire\(0),
	tclk => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y19_N0
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y20_N1
\uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 2,
	dprio0_cnt_lo_div => 2,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "193.055555 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 6)
-- pragma translate_on
PORT MAP (
	nen0 => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\,
	tclk0 => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \uut1|dcm_altera_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G6
\uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire\(0),
	outclk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: LABCELL_X36_Y45_N0
\uut2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add0~37_sumout\ = SUM(( \uut2|h_count\(0) ) + ( VCC ) + ( !VCC ))
-- \uut2|Add0~38\ = CARRY(( \uut2|h_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut2|ALT_INV_h_count\(0),
	cin => GND,
	sumout => \uut2|Add0~37_sumout\,
	cout => \uut2|Add0~38\);

-- Location: FF_X36_Y45_N38
\uut2|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~37_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|h_count\(0));

-- Location: LABCELL_X36_Y45_N3
\uut2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add0~41_sumout\ = SUM(( \uut2|h_count\(1) ) + ( GND ) + ( \uut2|Add0~38\ ))
-- \uut2|Add0~42\ = CARRY(( \uut2|h_count\(1) ) + ( GND ) + ( \uut2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut2|ALT_INV_h_count\(1),
	cin => \uut2|Add0~38\,
	sumout => \uut2|Add0~41_sumout\,
	cout => \uut2|Add0~42\);

-- Location: FF_X36_Y45_N44
\uut2|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~41_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|h_count\(1));

-- Location: LABCELL_X36_Y45_N6
\uut2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add0~45_sumout\ = SUM(( \uut2|h_count\(2) ) + ( GND ) + ( \uut2|Add0~42\ ))
-- \uut2|Add0~46\ = CARRY(( \uut2|h_count\(2) ) + ( GND ) + ( \uut2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut2|ALT_INV_h_count\(2),
	cin => \uut2|Add0~42\,
	sumout => \uut2|Add0~45_sumout\,
	cout => \uut2|Add0~46\);

-- Location: FF_X36_Y45_N50
\uut2|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~45_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|h_count\(2));

-- Location: LABCELL_X36_Y45_N9
\uut2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add0~33_sumout\ = SUM(( \uut2|h_count\(3) ) + ( GND ) + ( \uut2|Add0~46\ ))
-- \uut2|Add0~34\ = CARRY(( \uut2|h_count\(3) ) + ( GND ) + ( \uut2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut2|ALT_INV_h_count\(3),
	cin => \uut2|Add0~46\,
	sumout => \uut2|Add0~33_sumout\,
	cout => \uut2|Add0~34\);

-- Location: FF_X36_Y45_N47
\uut2|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~33_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|h_count\(3));

-- Location: LABCELL_X36_Y45_N12
\uut2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add0~29_sumout\ = SUM(( \uut2|h_count\(4) ) + ( GND ) + ( \uut2|Add0~34\ ))
-- \uut2|Add0~30\ = CARRY(( \uut2|h_count\(4) ) + ( GND ) + ( \uut2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut2|ALT_INV_h_count\(4),
	cin => \uut2|Add0~34\,
	sumout => \uut2|Add0~29_sumout\,
	cout => \uut2|Add0~30\);

-- Location: FF_X36_Y45_N20
\uut2|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~29_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|h_count\(4));

-- Location: LABCELL_X36_Y45_N15
\uut2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add0~25_sumout\ = SUM(( \uut2|h_count\(5) ) + ( GND ) + ( \uut2|Add0~30\ ))
-- \uut2|Add0~26\ = CARRY(( \uut2|h_count\(5) ) + ( GND ) + ( \uut2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut2|ALT_INV_h_count\(5),
	cin => \uut2|Add0~30\,
	sumout => \uut2|Add0~25_sumout\,
	cout => \uut2|Add0~26\);

-- Location: FF_X36_Y45_N56
\uut2|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~25_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|h_count\(5));

-- Location: LABCELL_X36_Y45_N18
\uut2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add0~21_sumout\ = SUM(( \uut2|h_count\(6) ) + ( GND ) + ( \uut2|Add0~26\ ))
-- \uut2|Add0~22\ = CARRY(( \uut2|h_count\(6) ) + ( GND ) + ( \uut2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut2|ALT_INV_h_count\(6),
	cin => \uut2|Add0~26\,
	sumout => \uut2|Add0~21_sumout\,
	cout => \uut2|Add0~22\);

-- Location: FF_X36_Y45_N5
\uut2|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~21_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|h_count\(6));

-- Location: LABCELL_X36_Y45_N21
\uut2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add0~5_sumout\ = SUM(( \uut2|h_count\(7) ) + ( GND ) + ( \uut2|Add0~22\ ))
-- \uut2|Add0~6\ = CARRY(( \uut2|h_count\(7) ) + ( GND ) + ( \uut2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut2|ALT_INV_h_count\(7),
	cin => \uut2|Add0~22\,
	sumout => \uut2|Add0~5_sumout\,
	cout => \uut2|Add0~6\);

-- Location: FF_X36_Y45_N23
\uut2|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|Add0~5_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|h_count\(7));

-- Location: LABCELL_X36_Y45_N24
\uut2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add0~9_sumout\ = SUM(( \uut2|h_count\(8) ) + ( GND ) + ( \uut2|Add0~6\ ))
-- \uut2|Add0~10\ = CARRY(( \uut2|h_count\(8) ) + ( GND ) + ( \uut2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut2|ALT_INV_h_count\(8),
	cin => \uut2|Add0~6\,
	sumout => \uut2|Add0~9_sumout\,
	cout => \uut2|Add0~10\);

-- Location: FF_X36_Y45_N59
\uut2|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~9_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|h_count\(8));

-- Location: LABCELL_X36_Y45_N27
\uut2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add0~13_sumout\ = SUM(( \uut2|h_count\(9) ) + ( GND ) + ( \uut2|Add0~10\ ))
-- \uut2|Add0~14\ = CARRY(( \uut2|h_count\(9) ) + ( GND ) + ( \uut2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_h_count\(9),
	cin => \uut2|Add0~10\,
	sumout => \uut2|Add0~13_sumout\,
	cout => \uut2|Add0~14\);

-- Location: FF_X36_Y45_N53
\uut2|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~13_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|h_count\(9));

-- Location: LABCELL_X36_Y45_N30
\uut2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add0~17_sumout\ = SUM(( \uut2|h_count\(10) ) + ( GND ) + ( \uut2|Add0~14\ ))
-- \uut2|Add0~18\ = CARRY(( \uut2|h_count\(10) ) + ( GND ) + ( \uut2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut2|ALT_INV_h_count\(10),
	cin => \uut2|Add0~14\,
	sumout => \uut2|Add0~17_sumout\,
	cout => \uut2|Add0~18\);

-- Location: FF_X36_Y45_N29
\uut2|h_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~17_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|h_count\(10));

-- Location: LABCELL_X36_Y45_N33
\uut2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add0~1_sumout\ = SUM(( \uut2|h_count\(11) ) + ( GND ) + ( \uut2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut2|ALT_INV_h_count\(11),
	cin => \uut2|Add0~18\,
	sumout => \uut2|Add0~1_sumout\);

-- Location: FF_X36_Y45_N17
\uut2|h_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~1_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|h_count\(11));

-- Location: LABCELL_X36_Y45_N45
\uut2|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|LessThan0~0_combout\ = ( \uut2|h_count\(3) & ( \uut2|h_count\(4) & ( (\uut2|h_count\(0) & (\uut2|h_count\(1) & \uut2|h_count\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_h_count\(0),
	datac => \uut2|ALT_INV_h_count\(1),
	datad => \uut2|ALT_INV_h_count\(2),
	datae => \uut2|ALT_INV_h_count\(3),
	dataf => \uut2|ALT_INV_h_count\(4),
	combout => \uut2|LessThan0~0_combout\);

-- Location: LABCELL_X36_Y45_N57
\uut2|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|LessThan0~1_combout\ = (!\uut2|h_count\(5) & (!\uut2|h_count\(7) & (!\uut2|h_count\(6) & !\uut2|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_h_count\(5),
	datab => \uut2|ALT_INV_h_count\(7),
	datac => \uut2|ALT_INV_h_count\(6),
	datad => \uut2|ALT_INV_h_count\(8),
	combout => \uut2|LessThan0~1_combout\);

-- Location: LABCELL_X36_Y45_N51
\uut2|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|LessThan0~2_combout\ = ( \uut2|h_count\(9) & ( \uut2|LessThan0~1_combout\ & ( (!\uut2|h_count\(11)) # ((!\uut2|h_count\(10) & !\uut2|LessThan0~0_combout\)) ) ) ) # ( !\uut2|h_count\(9) & ( \uut2|LessThan0~1_combout\ & ( (!\uut2|h_count\(10)) # 
-- (!\uut2|h_count\(11)) ) ) ) # ( \uut2|h_count\(9) & ( !\uut2|LessThan0~1_combout\ & ( !\uut2|h_count\(11) ) ) ) # ( !\uut2|h_count\(9) & ( !\uut2|LessThan0~1_combout\ & ( (!\uut2|h_count\(10)) # (!\uut2|h_count\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110110011001100110011101110111011101110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_h_count\(10),
	datab => \uut2|ALT_INV_h_count\(11),
	datac => \uut2|ALT_INV_LessThan0~0_combout\,
	datae => \uut2|ALT_INV_h_count\(9),
	dataf => \uut2|ALT_INV_LessThan0~1_combout\,
	combout => \uut2|LessThan0~2_combout\);

-- Location: LABCELL_X37_Y45_N9
\uut2|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|LessThan6~1_combout\ = ( \uut2|Add0~9_sumout\ & ( \uut2|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_Add0~5_sumout\,
	dataf => \uut2|ALT_INV_Add0~9_sumout\,
	combout => \uut2|LessThan6~1_combout\);

-- Location: LABCELL_X37_Y45_N30
\uut2|column[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|column[31]~0_combout\ = ( \uut2|column\(31) & ( \uut2|Add0~13_sumout\ & ( (\uut2|LessThan0~2_combout\ & (((\uut2|Add0~17_sumout\ & \uut2|LessThan6~1_combout\)) # (\uut2|Add0~1_sumout\))) ) ) ) # ( \uut2|column\(31) & ( !\uut2|Add0~13_sumout\ & ( 
-- (\uut2|LessThan0~2_combout\ & \uut2|Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000000000001000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_LessThan0~2_combout\,
	datab => \uut2|ALT_INV_Add0~1_sumout\,
	datac => \uut2|ALT_INV_Add0~17_sumout\,
	datad => \uut2|ALT_INV_LessThan6~1_combout\,
	datae => \uut2|ALT_INV_column\(31),
	dataf => \uut2|ALT_INV_Add0~13_sumout\,
	combout => \uut2|column[31]~0_combout\);

-- Location: FF_X37_Y45_N31
\uut2|column[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|column[31]~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|column\(31));

-- Location: MLABCELL_X34_Y45_N0
\uut2|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add1~41_sumout\ = SUM(( \uut2|v_count\(0) ) + ( VCC ) + ( !VCC ))
-- \uut2|Add1~42\ = CARRY(( \uut2|v_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut2|ALT_INV_v_count\(0),
	cin => GND,
	sumout => \uut2|Add1~41_sumout\,
	cout => \uut2|Add1~42\);

-- Location: FF_X34_Y45_N2
\uut2|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|Add1~41_sumout\,
	asdata => \uut2|v_count\(0),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|v_count\(0));

-- Location: MLABCELL_X34_Y45_N3
\uut2|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add1~37_sumout\ = SUM(( \uut2|v_count\(1) ) + ( GND ) + ( \uut2|Add1~42\ ))
-- \uut2|Add1~38\ = CARRY(( \uut2|v_count\(1) ) + ( GND ) + ( \uut2|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut2|ALT_INV_v_count\(1),
	cin => \uut2|Add1~42\,
	sumout => \uut2|Add1~37_sumout\,
	cout => \uut2|Add1~38\);

-- Location: FF_X34_Y45_N5
\uut2|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|Add1~37_sumout\,
	asdata => \uut2|v_count\(1),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|v_count\(1));

-- Location: MLABCELL_X34_Y45_N6
\uut2|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add1~33_sumout\ = SUM(( \uut2|v_count\(2) ) + ( GND ) + ( \uut2|Add1~38\ ))
-- \uut2|Add1~34\ = CARRY(( \uut2|v_count\(2) ) + ( GND ) + ( \uut2|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut2|ALT_INV_v_count\(2),
	cin => \uut2|Add1~38\,
	sumout => \uut2|Add1~33_sumout\,
	cout => \uut2|Add1~34\);

-- Location: FF_X34_Y45_N8
\uut2|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|Add1~33_sumout\,
	asdata => \uut2|v_count\(2),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|v_count\(2));

-- Location: MLABCELL_X34_Y45_N9
\uut2|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add1~29_sumout\ = SUM(( \uut2|v_count\(3) ) + ( GND ) + ( \uut2|Add1~34\ ))
-- \uut2|Add1~30\ = CARRY(( \uut2|v_count\(3) ) + ( GND ) + ( \uut2|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut2|ALT_INV_v_count\(3),
	cin => \uut2|Add1~34\,
	sumout => \uut2|Add1~29_sumout\,
	cout => \uut2|Add1~30\);

-- Location: FF_X34_Y45_N11
\uut2|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|Add1~29_sumout\,
	asdata => \uut2|v_count\(3),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|v_count\(3));

-- Location: MLABCELL_X34_Y45_N12
\uut2|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add1~13_sumout\ = SUM(( \uut2|v_count\(4) ) + ( GND ) + ( \uut2|Add1~30\ ))
-- \uut2|Add1~14\ = CARRY(( \uut2|v_count\(4) ) + ( GND ) + ( \uut2|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut2|ALT_INV_v_count\(4),
	cin => \uut2|Add1~30\,
	sumout => \uut2|Add1~13_sumout\,
	cout => \uut2|Add1~14\);

-- Location: FF_X34_Y45_N14
\uut2|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|Add1~13_sumout\,
	asdata => \uut2|v_count\(4),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|v_count\(4));

-- Location: MLABCELL_X34_Y45_N15
\uut2|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add1~9_sumout\ = SUM(( \uut2|v_count\(5) ) + ( GND ) + ( \uut2|Add1~14\ ))
-- \uut2|Add1~10\ = CARRY(( \uut2|v_count\(5) ) + ( GND ) + ( \uut2|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut2|ALT_INV_v_count\(5),
	cin => \uut2|Add1~14\,
	sumout => \uut2|Add1~9_sumout\,
	cout => \uut2|Add1~10\);

-- Location: FF_X34_Y45_N17
\uut2|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|Add1~9_sumout\,
	asdata => \uut2|v_count\(5),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|v_count\(5));

-- Location: MLABCELL_X34_Y45_N18
\uut2|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add1~5_sumout\ = SUM(( \uut2|v_count\(6) ) + ( GND ) + ( \uut2|Add1~10\ ))
-- \uut2|Add1~6\ = CARRY(( \uut2|v_count\(6) ) + ( GND ) + ( \uut2|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut2|ALT_INV_v_count\(6),
	cin => \uut2|Add1~10\,
	sumout => \uut2|Add1~5_sumout\,
	cout => \uut2|Add1~6\);

-- Location: FF_X34_Y45_N20
\uut2|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|Add1~5_sumout\,
	asdata => \uut2|v_count\(6),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|v_count\(6));

-- Location: MLABCELL_X34_Y45_N45
\uut2|v_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|v_count~0_combout\ = ( \uut2|v_count\(4) & ( (\uut2|v_count\(6) & (\uut2|v_count\(3) & \uut2|v_count\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_v_count\(6),
	datac => \uut2|ALT_INV_v_count\(3),
	datad => \uut2|ALT_INV_v_count\(7),
	dataf => \uut2|ALT_INV_v_count\(4),
	combout => \uut2|v_count~0_combout\);

-- Location: MLABCELL_X34_Y45_N21
\uut2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add1~1_sumout\ = SUM(( \uut2|v_count\(7) ) + ( GND ) + ( \uut2|Add1~6\ ))
-- \uut2|Add1~2\ = CARRY(( \uut2|v_count\(7) ) + ( GND ) + ( \uut2|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut2|ALT_INV_v_count\(7),
	cin => \uut2|Add1~6\,
	sumout => \uut2|Add1~1_sumout\,
	cout => \uut2|Add1~2\);

-- Location: MLABCELL_X34_Y45_N24
\uut2|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add1~17_sumout\ = SUM(( \uut2|v_count\(8) ) + ( GND ) + ( \uut2|Add1~2\ ))
-- \uut2|Add1~18\ = CARRY(( \uut2|v_count\(8) ) + ( GND ) + ( \uut2|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut2|ALT_INV_v_count\(8),
	cin => \uut2|Add1~2\,
	sumout => \uut2|Add1~17_sumout\,
	cout => \uut2|Add1~18\);

-- Location: FF_X34_Y45_N26
\uut2|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|Add1~17_sumout\,
	asdata => \uut2|v_count\(8),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|v_count\(8));

-- Location: MLABCELL_X34_Y45_N27
\uut2|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add1~21_sumout\ = SUM(( \uut2|v_count\(9) ) + ( GND ) + ( \uut2|Add1~18\ ))
-- \uut2|Add1~22\ = CARRY(( \uut2|v_count\(9) ) + ( GND ) + ( \uut2|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut2|ALT_INV_v_count\(9),
	cin => \uut2|Add1~18\,
	sumout => \uut2|Add1~21_sumout\,
	cout => \uut2|Add1~22\);

-- Location: FF_X34_Y45_N29
\uut2|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|Add1~21_sumout\,
	asdata => \uut2|v_count\(9),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|v_count\(9));

-- Location: MLABCELL_X34_Y45_N42
\uut2|v_count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|v_count~1_combout\ = ( !\uut2|v_count\(8) & ( (!\uut2|v_count\(9) & ((!\uut2|v_count\(6)) # ((!\uut2|v_count\(5)) # (!\uut2|v_count\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_v_count\(6),
	datab => \uut2|ALT_INV_v_count\(5),
	datac => \uut2|ALT_INV_v_count\(9),
	datad => \uut2|ALT_INV_v_count\(7),
	dataf => \uut2|ALT_INV_v_count\(8),
	combout => \uut2|v_count~1_combout\);

-- Location: MLABCELL_X34_Y45_N36
\uut2|v_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|v_count~2_combout\ = ( \uut2|v_count~1_combout\ & ( (!\uut2|v_count~0_combout\) # ((!\uut2|v_count\(1) & (!\uut2|v_count\(2) & !\uut2|v_count\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111100000001111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_v_count\(1),
	datab => \uut2|ALT_INV_v_count\(2),
	datac => \uut2|ALT_INV_v_count\(0),
	datad => \uut2|ALT_INV_v_count~0_combout\,
	dataf => \uut2|ALT_INV_v_count~1_combout\,
	combout => \uut2|v_count~2_combout\);

-- Location: MLABCELL_X34_Y45_N30
\uut2|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|Add1~25_sumout\ = SUM(( \uut2|v_count\(10) ) + ( GND ) + ( \uut2|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut2|ALT_INV_v_count\(10),
	cin => \uut2|Add1~22\,
	sumout => \uut2|Add1~25_sumout\);

-- Location: FF_X34_Y45_N32
\uut2|v_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|Add1~25_sumout\,
	asdata => \uut2|v_count\(10),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|v_count\(10));

-- Location: LABCELL_X36_Y45_N54
\uut2|v_count~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|v_count~5_combout\ = ( \uut2|v_count\(10) & ( (!\uut2|v_count~2_combout\ & !\uut2|LessThan0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut2|ALT_INV_v_count~2_combout\,
	datad => \uut2|ALT_INV_LessThan0~2_combout\,
	dataf => \uut2|ALT_INV_v_count\(10),
	combout => \uut2|v_count~5_combout\);

-- Location: FF_X34_Y45_N23
\uut2|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|Add1~1_sumout\,
	asdata => \uut2|v_count\(7),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|v_count\(7));

-- Location: LABCELL_X35_Y45_N33
\uut2|row[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|row[7]~feeder_combout\ = \uut2|Add1~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_Add1~1_sumout\,
	combout => \uut2|row[7]~feeder_combout\);

-- Location: LABCELL_X35_Y45_N0
\uut2|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|LessThan7~0_combout\ = ( \uut2|LessThan0~2_combout\ & ( (\uut2|v_count\(5) & \uut2|v_count\(4)) ) ) # ( !\uut2|LessThan0~2_combout\ & ( (\uut2|Add1~9_sumout\ & \uut2|Add1~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_v_count\(5),
	datab => \uut2|ALT_INV_Add1~9_sumout\,
	datac => \uut2|ALT_INV_v_count\(4),
	datad => \uut2|ALT_INV_Add1~13_sumout\,
	dataf => \uut2|ALT_INV_LessThan0~2_combout\,
	combout => \uut2|LessThan7~0_combout\);

-- Location: LABCELL_X35_Y45_N15
\uut2|v_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|v_count~4_combout\ = ( \uut2|v_count\(10) & ( (!\uut2|LessThan0~2_combout\ & (\uut2|v_count~2_combout\ & ((\uut2|Add1~5_sumout\)))) # (\uut2|LessThan0~2_combout\ & (((\uut2|v_count\(6))))) ) ) # ( !\uut2|v_count\(10) & ( (!\uut2|LessThan0~2_combout\ 
-- & ((\uut2|Add1~5_sumout\))) # (\uut2|LessThan0~2_combout\ & (\uut2|v_count\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000101001100110000010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_v_count~2_combout\,
	datab => \uut2|ALT_INV_v_count\(6),
	datac => \uut2|ALT_INV_Add1~5_sumout\,
	datad => \uut2|ALT_INV_LessThan0~2_combout\,
	dataf => \uut2|ALT_INV_v_count\(10),
	combout => \uut2|v_count~4_combout\);

-- Location: LABCELL_X35_Y45_N18
\uut2|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|LessThan7~1_combout\ = ( \uut2|Add1~17_sumout\ & ( (!\uut2|v_count\(9) & (!\uut2|v_count\(8) & \uut2|LessThan0~2_combout\)) ) ) # ( !\uut2|Add1~17_sumout\ & ( (!\uut2|LessThan0~2_combout\ & (((!\uut2|Add1~21_sumout\)))) # (\uut2|LessThan0~2_combout\ 
-- & (!\uut2|v_count\(9) & (!\uut2|v_count\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010001000111100001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_v_count\(9),
	datab => \uut2|ALT_INV_v_count\(8),
	datac => \uut2|ALT_INV_Add1~21_sumout\,
	datad => \uut2|ALT_INV_LessThan0~2_combout\,
	dataf => \uut2|ALT_INV_Add1~17_sumout\,
	combout => \uut2|LessThan7~1_combout\);

-- Location: LABCELL_X35_Y45_N54
\uut2|LessThan7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|LessThan7~2_combout\ = ( \uut2|Add1~25_sumout\ & ( (!\uut2|v_count\(10) & ((!\uut2|LessThan0~2_combout\))) # (\uut2|v_count\(10) & ((\uut2|LessThan0~2_combout\) # (\uut2|v_count~2_combout\))) ) ) # ( !\uut2|Add1~25_sumout\ & ( (\uut2|v_count\(10) & 
-- \uut2|LessThan0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101111010101011010111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_v_count\(10),
	datac => \uut2|ALT_INV_v_count~2_combout\,
	datad => \uut2|ALT_INV_LessThan0~2_combout\,
	dataf => \uut2|ALT_INV_Add1~25_sumout\,
	combout => \uut2|LessThan7~2_combout\);

-- Location: LABCELL_X35_Y45_N42
\uut2|v_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|v_count~3_combout\ = ( \uut2|LessThan0~2_combout\ & ( \uut2|v_count\(7) ) ) # ( !\uut2|LessThan0~2_combout\ & ( (\uut2|Add1~1_sumout\ & ((!\uut2|v_count\(10)) # (\uut2|v_count~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_v_count~2_combout\,
	datab => \uut2|ALT_INV_v_count\(10),
	datac => \uut2|ALT_INV_Add1~1_sumout\,
	datad => \uut2|ALT_INV_v_count\(7),
	dataf => \uut2|ALT_INV_LessThan0~2_combout\,
	combout => \uut2|v_count~3_combout\);

-- Location: LABCELL_X35_Y45_N36
\uut2|LessThan7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|LessThan7~3_combout\ = ( \uut2|v_count~3_combout\ & ( (!\uut2|LessThan7~2_combout\) # ((!\uut2|LessThan7~0_combout\ & (!\uut2|v_count~4_combout\ & \uut2|LessThan7~1_combout\))) ) ) # ( !\uut2|v_count~3_combout\ & ( (!\uut2|LessThan7~2_combout\) # 
-- (\uut2|LessThan7~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111000010001111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_LessThan7~0_combout\,
	datab => \uut2|ALT_INV_v_count~4_combout\,
	datac => \uut2|ALT_INV_LessThan7~1_combout\,
	datad => \uut2|ALT_INV_LessThan7~2_combout\,
	dataf => \uut2|ALT_INV_v_count~3_combout\,
	combout => \uut2|LessThan7~3_combout\);

-- Location: FF_X35_Y45_N35
\uut2|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|row[7]~feeder_combout\,
	asdata => \uut2|v_count\(7),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	ena => \uut2|LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|row\(7));

-- Location: LABCELL_X35_Y45_N48
\uut2|row[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|row[8]~feeder_combout\ = ( \uut2|Add1~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uut2|ALT_INV_Add1~17_sumout\,
	combout => \uut2|row[8]~feeder_combout\);

-- Location: FF_X35_Y45_N50
\uut2|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|row[8]~feeder_combout\,
	asdata => \uut2|v_count\(8),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	ena => \uut2|LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|row\(8));

-- Location: LABCELL_X35_Y45_N24
\uut2|row[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|row[6]~feeder_combout\ = ( \uut2|Add1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uut2|ALT_INV_Add1~5_sumout\,
	combout => \uut2|row[6]~feeder_combout\);

-- Location: FF_X35_Y45_N25
\uut2|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|row[6]~feeder_combout\,
	asdata => \uut2|v_count\(6),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	ena => \uut2|LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|row\(6));

-- Location: LABCELL_X35_Y45_N12
\uut2|row[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|row[10]~feeder_combout\ = ( \uut2|Add1~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uut2|ALT_INV_Add1~25_sumout\,
	combout => \uut2|row[10]~feeder_combout\);

-- Location: FF_X35_Y45_N14
\uut2|row[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|row[10]~feeder_combout\,
	asdata => \uut2|v_count\(10),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	ena => \uut2|LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|row\(10));

-- Location: LABCELL_X35_Y45_N3
\uut2|row[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|row[2]~feeder_combout\ = ( \uut2|Add1~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uut2|ALT_INV_Add1~33_sumout\,
	combout => \uut2|row[2]~feeder_combout\);

-- Location: FF_X35_Y45_N5
\uut2|row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|row[2]~feeder_combout\,
	asdata => \uut2|v_count\(2),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	ena => \uut2|LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|row\(2));

-- Location: LABCELL_X35_Y45_N39
\uut2|row[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|row[4]~feeder_combout\ = ( \uut2|Add1~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uut2|ALT_INV_Add1~13_sumout\,
	combout => \uut2|row[4]~feeder_combout\);

-- Location: FF_X35_Y45_N41
\uut2|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|row[4]~feeder_combout\,
	asdata => \uut2|v_count\(4),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	ena => \uut2|LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|row\(4));

-- Location: LABCELL_X35_Y45_N57
\uut2|row[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|row[3]~feeder_combout\ = ( \uut2|Add1~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uut2|ALT_INV_Add1~29_sumout\,
	combout => \uut2|row[3]~feeder_combout\);

-- Location: FF_X35_Y45_N59
\uut2|row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|row[3]~feeder_combout\,
	asdata => \uut2|v_count\(3),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	ena => \uut2|LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|row\(3));

-- Location: LABCELL_X35_Y45_N21
\uut2|row[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|row[5]~feeder_combout\ = ( \uut2|Add1~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uut2|ALT_INV_Add1~9_sumout\,
	combout => \uut2|row[5]~feeder_combout\);

-- Location: FF_X35_Y45_N23
\uut2|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|row[5]~feeder_combout\,
	asdata => \uut2|v_count\(5),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	ena => \uut2|LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|row\(5));

-- Location: LABCELL_X35_Y45_N30
\uut2|row[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|row[1]~feeder_combout\ = ( \uut2|Add1~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uut2|ALT_INV_Add1~37_sumout\,
	combout => \uut2|row[1]~feeder_combout\);

-- Location: FF_X35_Y45_N32
\uut2|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|row[1]~feeder_combout\,
	asdata => \uut2|v_count\(1),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	ena => \uut2|LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|row\(1));

-- Location: LABCELL_X35_Y45_N27
\uut3|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut3|LessThan0~0_combout\ = ( \uut2|row\(1) & ( (!\uut2|row\(5) & ((!\uut2|row\(2)) # ((!\uut2|row\(4)) # (!\uut2|row\(3))))) ) ) # ( !\uut2|row\(1) & ( !\uut2|row\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111110000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_row\(2),
	datab => \uut2|ALT_INV_row\(4),
	datac => \uut2|ALT_INV_row\(3),
	datad => \uut2|ALT_INV_row\(5),
	dataf => \uut2|ALT_INV_row\(1),
	combout => \uut3|LessThan0~0_combout\);

-- Location: LABCELL_X35_Y45_N45
\uut2|row[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|row[9]~feeder_combout\ = ( \uut2|Add1~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uut2|ALT_INV_Add1~21_sumout\,
	combout => \uut2|row[9]~feeder_combout\);

-- Location: FF_X35_Y45_N47
\uut2|row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|row[9]~feeder_combout\,
	asdata => \uut2|v_count\(9),
	clrn => \reset_n~input_o\,
	sclr => \uut2|v_count~5_combout\,
	sload => \uut2|LessThan0~2_combout\,
	ena => \uut2|LessThan7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|row\(9));

-- Location: MLABCELL_X34_Y45_N48
\uut3|blue[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut3|blue[0]~0_combout\ = ( \uut3|LessThan0~0_combout\ & ( !\uut2|row\(9) & ( !\uut2|row\(10) ) ) ) # ( !\uut3|LessThan0~0_combout\ & ( !\uut2|row\(9) & ( (!\uut2|row\(10) & ((!\uut2|row\(7)) # ((!\uut2|row\(8)) # (!\uut2|row\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_row\(7),
	datab => \uut2|ALT_INV_row\(8),
	datac => \uut2|ALT_INV_row\(6),
	datad => \uut2|ALT_INV_row\(10),
	datae => \uut3|ALT_INV_LessThan0~0_combout\,
	dataf => \uut2|ALT_INV_row\(9),
	combout => \uut3|blue[0]~0_combout\);

-- Location: LABCELL_X37_Y45_N0
\uut2|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|LessThan6~0_combout\ = ( \uut2|Add0~1_sumout\ & ( \uut2|Add0~13_sumout\ & ( !\uut2|LessThan0~2_combout\ ) ) ) # ( !\uut2|Add0~1_sumout\ & ( \uut2|Add0~13_sumout\ & ( (!\uut2|Add0~17_sumout\) # ((!\uut2|Add0~9_sumout\) # ((!\uut2|Add0~5_sumout\) # 
-- (!\uut2|LessThan0~2_combout\))) ) ) ) # ( \uut2|Add0~1_sumout\ & ( !\uut2|Add0~13_sumout\ & ( !\uut2|LessThan0~2_combout\ ) ) ) # ( !\uut2|Add0~1_sumout\ & ( !\uut2|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110000000011111111111111101111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_Add0~17_sumout\,
	datab => \uut2|ALT_INV_Add0~9_sumout\,
	datac => \uut2|ALT_INV_Add0~5_sumout\,
	datad => \uut2|ALT_INV_LessThan0~2_combout\,
	datae => \uut2|ALT_INV_Add0~1_sumout\,
	dataf => \uut2|ALT_INV_Add0~13_sumout\,
	combout => \uut2|LessThan6~0_combout\);

-- Location: LABCELL_X37_Y45_N24
\uut2|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|process_0~0_combout\ = ( \uut2|LessThan7~1_combout\ & ( \uut2|v_count~3_combout\ & ( (\uut2|LessThan6~0_combout\ & ((!\uut2|LessThan7~2_combout\) # ((!\uut2|LessThan7~0_combout\ & !\uut2|v_count~4_combout\)))) ) ) ) # ( !\uut2|LessThan7~1_combout\ & 
-- ( \uut2|v_count~3_combout\ & ( (!\uut2|LessThan7~2_combout\ & \uut2|LessThan6~0_combout\) ) ) ) # ( \uut2|LessThan7~1_combout\ & ( !\uut2|v_count~3_combout\ & ( \uut2|LessThan6~0_combout\ ) ) ) # ( !\uut2|LessThan7~1_combout\ & ( !\uut2|v_count~3_combout\ 
-- & ( (!\uut2|LessThan7~2_combout\ & \uut2|LessThan6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011110000111100001100000011000000111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_LessThan7~0_combout\,
	datab => \uut2|ALT_INV_LessThan7~2_combout\,
	datac => \uut2|ALT_INV_LessThan6~0_combout\,
	datad => \uut2|ALT_INV_v_count~4_combout\,
	datae => \uut2|ALT_INV_LessThan7~1_combout\,
	dataf => \uut2|ALT_INV_v_count~3_combout\,
	combout => \uut2|process_0~0_combout\);

-- Location: FF_X37_Y45_N26
\uut2|disp_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|process_0~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|disp_ena~q\);

-- Location: LABCELL_X35_Y45_N6
\uut2|row[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|row[31]~0_combout\ = ( \uut2|row\(31) & ( \uut2|LessThan7~1_combout\ & ( (\uut2|LessThan7~2_combout\ & (\uut2|v_count~3_combout\ & ((\uut2|LessThan7~0_combout\) # (\uut2|v_count~4_combout\)))) ) ) ) # ( \uut2|row\(31) & ( !\uut2|LessThan7~1_combout\ 
-- & ( \uut2|LessThan7~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_LessThan7~2_combout\,
	datab => \uut2|ALT_INV_v_count~4_combout\,
	datac => \uut2|ALT_INV_LessThan7~0_combout\,
	datad => \uut2|ALT_INV_v_count~3_combout\,
	datae => \uut2|ALT_INV_row\(31),
	dataf => \uut2|ALT_INV_LessThan7~1_combout\,
	combout => \uut2|row[31]~0_combout\);

-- Location: FF_X35_Y45_N7
\uut2|row[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|row[31]~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|row\(31));

-- Location: FF_X37_Y45_N46
\uut2|column[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~17_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \uut2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|column\(10));

-- Location: FF_X37_Y45_N1
\uut2|column[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~1_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \uut2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|column\(11));

-- Location: FF_X37_Y45_N5
\uut2|column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~13_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \uut2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|column\(9));

-- Location: FF_X37_Y45_N17
\uut2|column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~9_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \uut2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|column\(8));

-- Location: FF_X37_Y45_N56
\uut2|column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~5_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \uut2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|column\(7));

-- Location: FF_X37_Y45_N53
\uut2|column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~21_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \uut2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|column\(6));

-- Location: FF_X37_Y45_N59
\uut2|column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~29_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \uut2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|column\(4));

-- Location: FF_X37_Y45_N10
\uut2|column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~25_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \uut2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|column\(5));

-- Location: FF_X37_Y45_N50
\uut2|column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \uut2|Add0~33_sumout\,
	clrn => \reset_n~input_o\,
	sclr => \uut2|ALT_INV_LessThan0~2_combout\,
	sload => VCC,
	ena => \uut2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|column\(3));

-- Location: LABCELL_X37_Y45_N48
\uut3|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut3|LessThan1~0_combout\ = ( \uut2|column\(3) & ( (\uut2|column\(6) & ((\uut2|column\(5)) # (\uut2|column\(4)))) ) ) # ( !\uut2|column\(3) & ( (\uut2|column\(6) & \uut2|column\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000101010001010100000101000001010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_column\(6),
	datab => \uut2|ALT_INV_column\(4),
	datac => \uut2|ALT_INV_column\(5),
	datae => \uut2|ALT_INV_column\(3),
	combout => \uut3|LessThan1~0_combout\);

-- Location: LABCELL_X37_Y45_N54
\uut3|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut3|LessThan1~1_combout\ = ( \uut2|column\(7) & ( \uut3|LessThan1~0_combout\ & ( (!\uut2|column\(10) & (!\uut2|column\(11) & !\uut2|column\(9))) ) ) ) # ( !\uut2|column\(7) & ( \uut3|LessThan1~0_combout\ & ( (!\uut2|column\(10) & (!\uut2|column\(11) & 
-- !\uut2|column\(9))) ) ) ) # ( \uut2|column\(7) & ( !\uut3|LessThan1~0_combout\ & ( (!\uut2|column\(10) & (!\uut2|column\(11) & !\uut2|column\(9))) ) ) ) # ( !\uut2|column\(7) & ( !\uut3|LessThan1~0_combout\ & ( (!\uut2|column\(10) & (!\uut2|column\(11) & 
-- ((!\uut2|column\(9)) # (!\uut2|column\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_column\(10),
	datab => \uut2|ALT_INV_column\(11),
	datac => \uut2|ALT_INV_column\(9),
	datad => \uut2|ALT_INV_column\(8),
	datae => \uut2|ALT_INV_column\(7),
	dataf => \uut3|ALT_INV_LessThan1~0_combout\,
	combout => \uut3|LessThan1~1_combout\);

-- Location: LABCELL_X37_Y45_N12
\uut3|blue[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut3|blue[0]~1_combout\ = ( \uut3|LessThan1~1_combout\ & ( (\uut2|disp_ena~q\ & ((\uut2|row\(31)) # (\uut3|blue[0]~0_combout\))) ) ) # ( !\uut3|LessThan1~1_combout\ & ( (\uut2|column\(31) & (\uut2|disp_ena~q\ & ((\uut2|row\(31)) # 
-- (\uut3|blue[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000000110000111100000001000001010000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_column\(31),
	datab => \uut3|ALT_INV_blue[0]~0_combout\,
	datac => \uut2|ALT_INV_disp_ena~q\,
	datad => \uut2|ALT_INV_row\(31),
	datae => \uut3|ALT_INV_LessThan1~1_combout\,
	combout => \uut3|blue[0]~1_combout\);

-- Location: LABCELL_X37_Y45_N42
\uut2|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|process_0~1_combout\ = ( \uut2|h_count\(11) & ( !\uut2|Add0~9_sumout\ & ( (!\uut2|h_count\(10) & ((!\uut2|h_count\(9)) # ((\uut2|LessThan0~1_combout\ & !\uut2|LessThan0~0_combout\)))) ) ) ) # ( !\uut2|h_count\(11) & ( !\uut2|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101010100010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_h_count\(10),
	datab => \uut2|ALT_INV_LessThan0~1_combout\,
	datac => \uut2|ALT_INV_LessThan0~0_combout\,
	datad => \uut2|ALT_INV_h_count\(9),
	datae => \uut2|ALT_INV_h_count\(11),
	dataf => \uut2|ALT_INV_Add0~9_sumout\,
	combout => \uut2|process_0~1_combout\);

-- Location: LABCELL_X37_Y45_N6
\uut2|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|LessThan3~1_combout\ = (\uut2|Add0~5_sumout\ & \uut2|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_Add0~5_sumout\,
	datab => \uut2|ALT_INV_Add0~21_sumout\,
	combout => \uut2|LessThan3~1_combout\);

-- Location: LABCELL_X37_Y45_N18
\uut2|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|LessThan3~0_combout\ = ( \uut2|Add0~45_sumout\ & ( \uut2|Add0~41_sumout\ & ( (!\uut2|Add0~29_sumout\ & !\uut2|Add0~25_sumout\) ) ) ) # ( !\uut2|Add0~45_sumout\ & ( \uut2|Add0~41_sumout\ & ( (!\uut2|Add0~29_sumout\ & !\uut2|Add0~25_sumout\) ) ) ) # ( 
-- \uut2|Add0~45_sumout\ & ( !\uut2|Add0~41_sumout\ & ( (!\uut2|Add0~29_sumout\ & !\uut2|Add0~25_sumout\) ) ) ) # ( !\uut2|Add0~45_sumout\ & ( !\uut2|Add0~41_sumout\ & ( (!\uut2|Add0~25_sumout\ & ((!\uut2|Add0~29_sumout\) # ((!\uut2|Add0~33_sumout\ & 
-- !\uut2|Add0~37_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_Add0~33_sumout\,
	datab => \uut2|ALT_INV_Add0~37_sumout\,
	datac => \uut2|ALT_INV_Add0~29_sumout\,
	datad => \uut2|ALT_INV_Add0~25_sumout\,
	datae => \uut2|ALT_INV_Add0~45_sumout\,
	dataf => \uut2|ALT_INV_Add0~41_sumout\,
	combout => \uut2|LessThan3~0_combout\);

-- Location: LABCELL_X37_Y45_N36
\uut2|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|process_0~2_combout\ = ( \uut2|Add0~1_sumout\ & ( \uut2|LessThan3~0_combout\ & ( (!\uut2|Add0~17_sumout\ & (\uut2|process_0~1_combout\ & !\uut2|Add0~13_sumout\)) ) ) ) # ( \uut2|Add0~1_sumout\ & ( !\uut2|LessThan3~0_combout\ & ( 
-- (!\uut2|Add0~17_sumout\ & (\uut2|process_0~1_combout\ & (!\uut2|Add0~13_sumout\ & !\uut2|LessThan3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_Add0~17_sumout\,
	datab => \uut2|ALT_INV_process_0~1_combout\,
	datac => \uut2|ALT_INV_Add0~13_sumout\,
	datad => \uut2|ALT_INV_LessThan3~1_combout\,
	datae => \uut2|ALT_INV_Add0~1_sumout\,
	dataf => \uut2|ALT_INV_LessThan3~0_combout\,
	combout => \uut2|process_0~2_combout\);

-- Location: FF_X37_Y45_N37
\uut2|h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|process_0~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|h_sync~q\);

-- Location: LABCELL_X35_Y45_N51
\uut2|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|process_0~3_combout\ = ( \uut2|Add1~29_sumout\ & ( !\uut2|LessThan0~2_combout\ ) ) # ( !\uut2|Add1~29_sumout\ & ( (!\uut2|LessThan0~2_combout\ & (!\uut2|Add1~33_sumout\ $ (((\uut2|Add1~41_sumout\) # (\uut2|Add1~37_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000101010100000000010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_LessThan0~2_combout\,
	datab => \uut2|ALT_INV_Add1~37_sumout\,
	datac => \uut2|ALT_INV_Add1~41_sumout\,
	datad => \uut2|ALT_INV_Add1~33_sumout\,
	dataf => \uut2|ALT_INV_Add1~29_sumout\,
	combout => \uut2|process_0~3_combout\);

-- Location: MLABCELL_X34_Y45_N39
\uut2|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|process_0~4_combout\ = ( !\uut2|v_count\(3) & ( !\uut2|v_count\(2) $ (((!\uut2|v_count\(1) & !\uut2|v_count\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011011001100011001101100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_v_count\(1),
	datab => \uut2|ALT_INV_v_count\(2),
	datad => \uut2|ALT_INV_v_count\(0),
	dataf => \uut2|ALT_INV_v_count\(3),
	combout => \uut2|process_0~4_combout\);

-- Location: MLABCELL_X34_Y45_N54
\uut2|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|process_0~5_combout\ = ( \uut2|LessThan0~2_combout\ & ( \uut2|Add1~5_sumout\ & ( (!\uut2|v_count\(6) & \uut2|process_0~4_combout\) ) ) ) # ( !\uut2|LessThan0~2_combout\ & ( \uut2|Add1~5_sumout\ & ( (\uut2|v_count\(10) & !\uut2|v_count~2_combout\) ) 
-- ) ) # ( \uut2|LessThan0~2_combout\ & ( !\uut2|Add1~5_sumout\ & ( (!\uut2|v_count\(6) & \uut2|process_0~4_combout\) ) ) ) # ( !\uut2|LessThan0~2_combout\ & ( !\uut2|Add1~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000001010101000110000001100000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_v_count\(6),
	datab => \uut2|ALT_INV_v_count\(10),
	datac => \uut2|ALT_INV_v_count~2_combout\,
	datad => \uut2|ALT_INV_process_0~4_combout\,
	datae => \uut2|ALT_INV_LessThan0~2_combout\,
	dataf => \uut2|ALT_INV_Add1~5_sumout\,
	combout => \uut2|process_0~5_combout\);

-- Location: LABCELL_X36_Y45_N39
\uut2|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut2|process_0~6_combout\ = ( \uut2|v_count~3_combout\ & ( \uut2|LessThan7~1_combout\ & ( (!\uut2|process_0~3_combout\ & (\uut2|LessThan7~0_combout\ & (\uut2|process_0~5_combout\ & \uut2|LessThan7~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut2|ALT_INV_process_0~3_combout\,
	datab => \uut2|ALT_INV_LessThan7~0_combout\,
	datac => \uut2|ALT_INV_process_0~5_combout\,
	datad => \uut2|ALT_INV_LessThan7~2_combout\,
	datae => \uut2|ALT_INV_v_count~3_combout\,
	dataf => \uut2|ALT_INV_LessThan7~1_combout\,
	combout => \uut2|process_0~6_combout\);

-- Location: FF_X36_Y45_N40
\uut2|v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uut1|dcm_altera_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \uut2|process_0~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut2|v_sync~q\);

-- Location: MLABCELL_X28_Y26_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


