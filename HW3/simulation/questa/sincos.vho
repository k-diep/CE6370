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

-- DATE "10/01/2023 20:44:55"

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

ENTITY 	sincos IS
    PORT (
	a : IN std_logic_vector(9 DOWNTO 0);
	areset : IN std_logic;
	c : OUT std_logic_vector(4 DOWNTO 0);
	clk : IN std_logic;
	s : OUT std_logic_vector(4 DOWNTO 0);
	c_frac : OUT std_logic_vector(6 DOWNTO 0);
	c_int : OUT std_logic_vector(6 DOWNTO 0);
	c_sign : OUT std_logic_vector(6 DOWNTO 0);
	s_frac : OUT std_logic_vector(6 DOWNTO 0);
	s_int : OUT std_logic_vector(6 DOWNTO 0);
	s_sign : OUT std_logic_vector(6 DOWNTO 0)
	);
END sincos;

-- Design Ports Information
-- c[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[2]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[4]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_frac[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_frac[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_frac[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_frac[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_frac[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_frac[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_frac[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_int[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_int[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_int[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_int[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_int[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_int[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_int[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_sign[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_sign[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_sign[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_sign[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_sign[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_sign[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_sign[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_frac[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_frac[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_frac[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_frac[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_frac[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_frac[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_frac[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_int[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_int[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_int[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_int[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_int[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_int[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_int[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_sign[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_sign[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_sign[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_sign[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_sign[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_sign[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_sign[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- areset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sincos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_areset : std_logic;
SIGNAL ww_c : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_s : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_c_frac : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_c_int : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_c_sign : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s_frac : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s_int : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s_sign : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \cordic_0|Add1~34\ : std_logic;
SIGNAL \cordic_0|Add1~30\ : std_logic;
SIGNAL \cordic_0|Add1~2\ : std_logic;
SIGNAL \cordic_0|Add1~6\ : std_logic;
SIGNAL \cordic_0|Add1~10\ : std_logic;
SIGNAL \cordic_0|Add1~14\ : std_logic;
SIGNAL \cordic_0|Add1~18\ : std_logic;
SIGNAL \cordic_0|Add1~22\ : std_logic;
SIGNAL \cordic_0|Add1~25_sumout\ : std_logic;
SIGNAL \cordic_0|Add1~21_sumout\ : std_logic;
SIGNAL \cordic_0|Add1~17_sumout\ : std_logic;
SIGNAL \cordic_0|Add1~13_sumout\ : std_logic;
SIGNAL \cordic_0|Add1~9_sumout\ : std_logic;
SIGNAL \cordic_0|Add1~5_sumout\ : std_logic;
SIGNAL \cordic_0|Add1~1_sumout\ : std_logic;
SIGNAL \cordic_0|Add1~29_sumout\ : std_logic;
SIGNAL \cordic_0|Add1~33_sumout\ : std_logic;
SIGNAL \cordic_0|Add2~6_cout\ : std_logic;
SIGNAL \cordic_0|Add2~7\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[1]~26\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[1]~27\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[2]~2\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[2]~3\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[3]~6\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[3]~7\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[4]~10\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[4]~11\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[5]~14\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[5]~15\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[6]~18\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[6]~19\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[7]~22\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[7]~23\ : std_logic;
SIGNAL \cordic_0|Add2~2_cout\ : std_logic;
SIGNAL \cordic_0|Add2~3\ : std_logic;
SIGNAL \cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ : std_logic;
SIGNAL \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[1][0]~feeder_combout\ : std_logic;
SIGNAL \areset~input_o\ : std_logic;
SIGNAL \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[1][0]~q\ : std_logic;
SIGNAL \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~feeder_combout\ : std_logic;
SIGNAL \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[7]~21_sumout\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[6]~17_sumout\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[5]~13_sumout\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[4]~9_sumout\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[3]~5_sumout\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[2]~1_sumout\ : std_logic;
SIGNAL \cordic_0|argMPiO2_uid14_sincosTest_o[1]~25_sumout\ : std_logic;
SIGNAL \cordic_0|Add4~30\ : std_logic;
SIGNAL \cordic_0|Add4~2\ : std_logic;
SIGNAL \cordic_0|Add4~6\ : std_logic;
SIGNAL \cordic_0|Add4~10\ : std_logic;
SIGNAL \cordic_0|Add4~14\ : std_logic;
SIGNAL \cordic_0|Add4~18\ : std_logic;
SIGNAL \cordic_0|Add4~21_sumout\ : std_logic;
SIGNAL \cordic_0|Add4~17_sumout\ : std_logic;
SIGNAL \cordic_0|Add4~13_sumout\ : std_logic;
SIGNAL \cordic_0|Add4~9_sumout\ : std_logic;
SIGNAL \cordic_0|Add4~5_sumout\ : std_logic;
SIGNAL \cordic_0|Add4~1_sumout\ : std_logic;
SIGNAL \cordic_0|Add4~29_sumout\ : std_logic;
SIGNAL \cordic_0|Add6~30_cout\ : std_logic;
SIGNAL \cordic_0|Add6~31\ : std_logic;
SIGNAL \cordic_0|Add6~26_cout\ : std_logic;
SIGNAL \cordic_0|Add6~27\ : std_logic;
SIGNAL \cordic_0|Add6~22_cout\ : std_logic;
SIGNAL \cordic_0|Add6~23\ : std_logic;
SIGNAL \cordic_0|Add6~18_cout\ : std_logic;
SIGNAL \cordic_0|Add6~19\ : std_logic;
SIGNAL \cordic_0|Add6~14_cout\ : std_logic;
SIGNAL \cordic_0|Add6~15\ : std_logic;
SIGNAL \cordic_0|Add6~10_cout\ : std_logic;
SIGNAL \cordic_0|Add6~11\ : std_logic;
SIGNAL \cordic_0|Add6~6\ : std_logic;
SIGNAL \cordic_0|Add6~7\ : std_logic;
SIGNAL \cordic_0|Add6~1_sumout\ : std_logic;
SIGNAL \cordic_0|Add4~22\ : std_logic;
SIGNAL \cordic_0|Add4~25_sumout\ : std_logic;
SIGNAL \cordic_0|Add5~2_combout\ : std_logic;
SIGNAL \cordic_0|Add6~5_sumout\ : std_logic;
SIGNAL \cordic_0|absA_uid18_sincosTest_q[4]~0_combout\ : std_logic;
SIGNAL \cordic_0|Add5~1_combout\ : std_logic;
SIGNAL \cordic_0|Add5~3_combout\ : std_logic;
SIGNAL \cordic_0|absA_uid18_sincosTest_q[3]~1_combout\ : std_logic;
SIGNAL \cordic_0|absA_uid18_sincosTest_q[2]~2_combout\ : std_logic;
SIGNAL \cordic_0|absA_uid18_sincosTest_q[1]~3_combout\ : std_logic;
SIGNAL \cordic_0|Add8~42_cout\ : std_logic;
SIGNAL \cordic_0|Add8~38\ : std_logic;
SIGNAL \cordic_0|Add8~34\ : std_logic;
SIGNAL \cordic_0|Add8~30\ : std_logic;
SIGNAL \cordic_0|Add8~26\ : std_logic;
SIGNAL \cordic_0|Add8~22\ : std_logic;
SIGNAL \cordic_0|Add8~18\ : std_logic;
SIGNAL \cordic_0|Add8~14\ : std_logic;
SIGNAL \cordic_0|Add8~10\ : std_logic;
SIGNAL \cordic_0|Add8~2\ : std_logic;
SIGNAL \cordic_0|Add8~5_sumout\ : std_logic;
SIGNAL \cordic_0|Add7~42\ : std_logic;
SIGNAL \cordic_0|Add7~38\ : std_logic;
SIGNAL \cordic_0|Add7~34\ : std_logic;
SIGNAL \cordic_0|Add7~30\ : std_logic;
SIGNAL \cordic_0|Add7~26\ : std_logic;
SIGNAL \cordic_0|Add7~22\ : std_logic;
SIGNAL \cordic_0|Add7~18\ : std_logic;
SIGNAL \cordic_0|Add7~14\ : std_logic;
SIGNAL \cordic_0|Add7~10\ : std_logic;
SIGNAL \cordic_0|Add7~2\ : std_logic;
SIGNAL \cordic_0|Add7~5_sumout\ : std_logic;
SIGNAL \cordic_0|Add5~0_combout\ : std_logic;
SIGNAL \cordic_0|aip1E_4_uid92_sincosTest_a[11]~0_combout\ : std_logic;
SIGNAL \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ : std_logic;
SIGNAL \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|Add21~58\ : std_logic;
SIGNAL \cordic_0|Add21~54\ : std_logic;
SIGNAL \cordic_0|Add21~50\ : std_logic;
SIGNAL \cordic_0|Add21~46\ : std_logic;
SIGNAL \cordic_0|Add21~42\ : std_logic;
SIGNAL \cordic_0|Add21~38\ : std_logic;
SIGNAL \cordic_0|Add21~34\ : std_logic;
SIGNAL \cordic_0|Add21~30\ : std_logic;
SIGNAL \cordic_0|Add21~26\ : std_logic;
SIGNAL \cordic_0|Add21~22\ : std_logic;
SIGNAL \cordic_0|Add21~2\ : std_logic;
SIGNAL \cordic_0|Add21~5_sumout\ : std_logic;
SIGNAL \cordic_0|Add22~66_cout\ : std_logic;
SIGNAL \cordic_0|Add22~62\ : std_logic;
SIGNAL \cordic_0|Add22~58\ : std_logic;
SIGNAL \cordic_0|Add22~54\ : std_logic;
SIGNAL \cordic_0|Add22~50\ : std_logic;
SIGNAL \cordic_0|Add22~46\ : std_logic;
SIGNAL \cordic_0|Add22~42\ : std_logic;
SIGNAL \cordic_0|Add22~38\ : std_logic;
SIGNAL \cordic_0|Add22~34\ : std_logic;
SIGNAL \cordic_0|Add22~30\ : std_logic;
SIGNAL \cordic_0|Add22~26\ : std_logic;
SIGNAL \cordic_0|Add22~2\ : std_logic;
SIGNAL \cordic_0|Add22~5_sumout\ : std_logic;
SIGNAL \cordic_0|Add24~66_cout\ : std_logic;
SIGNAL \cordic_0|Add24~62\ : std_logic;
SIGNAL \cordic_0|Add24~58\ : std_logic;
SIGNAL \cordic_0|Add24~54\ : std_logic;
SIGNAL \cordic_0|Add24~50\ : std_logic;
SIGNAL \cordic_0|Add24~46\ : std_logic;
SIGNAL \cordic_0|Add24~42\ : std_logic;
SIGNAL \cordic_0|Add24~38\ : std_logic;
SIGNAL \cordic_0|Add24~34\ : std_logic;
SIGNAL \cordic_0|Add24~30\ : std_logic;
SIGNAL \cordic_0|Add24~26\ : std_logic;
SIGNAL \cordic_0|Add24~10\ : std_logic;
SIGNAL \cordic_0|Add24~14\ : std_logic;
SIGNAL \cordic_0|Add24~18\ : std_logic;
SIGNAL \cordic_0|Add24~22\ : std_logic;
SIGNAL \cordic_0|Add24~2\ : std_logic;
SIGNAL \cordic_0|Add24~5_sumout\ : std_logic;
SIGNAL \cordic_0|Add24~1_sumout\ : std_logic;
SIGNAL \cordic_0|Add21~1_sumout\ : std_logic;
SIGNAL \cordic_0|Add23~58\ : std_logic;
SIGNAL \cordic_0|Add23~54\ : std_logic;
SIGNAL \cordic_0|Add23~50\ : std_logic;
SIGNAL \cordic_0|Add23~46\ : std_logic;
SIGNAL \cordic_0|Add23~42\ : std_logic;
SIGNAL \cordic_0|Add23~38\ : std_logic;
SIGNAL \cordic_0|Add23~34\ : std_logic;
SIGNAL \cordic_0|Add23~30\ : std_logic;
SIGNAL \cordic_0|Add23~26\ : std_logic;
SIGNAL \cordic_0|Add23~22\ : std_logic;
SIGNAL \cordic_0|Add23~6\ : std_logic;
SIGNAL \cordic_0|Add23~10\ : std_logic;
SIGNAL \cordic_0|Add23~14\ : std_logic;
SIGNAL \cordic_0|Add23~18\ : std_logic;
SIGNAL \cordic_0|Add23~1_sumout\ : std_logic;
SIGNAL \cordic_0|Add22~1_sumout\ : std_logic;
SIGNAL \cordic_0|Add21~21_sumout\ : std_logic;
SIGNAL \cordic_0|Add24~21_sumout\ : std_logic;
SIGNAL \cordic_0|Add23~17_sumout\ : std_logic;
SIGNAL \cordic_0|Add22~25_sumout\ : std_logic;
SIGNAL \cordic_0|Add24~17_sumout\ : std_logic;
SIGNAL \cordic_0|Add23~13_sumout\ : std_logic;
SIGNAL \cordic_0|Add22~29_sumout\ : std_logic;
SIGNAL \cordic_0|Add21~25_sumout\ : std_logic;
SIGNAL \cordic_0|xip1E_5_uid105_sincosTest_a[8]~2_combout\ : std_logic;
SIGNAL \cordic_0|Add21~29_sumout\ : std_logic;
SIGNAL \cordic_0|Add24~13_sumout\ : std_logic;
SIGNAL \cordic_0|Add23~9_sumout\ : std_logic;
SIGNAL \cordic_0|Add22~33_sumout\ : std_logic;
SIGNAL \cordic_0|Add24~9_sumout\ : std_logic;
SIGNAL \cordic_0|Add22~37_sumout\ : std_logic;
SIGNAL \cordic_0|Add21~33_sumout\ : std_logic;
SIGNAL \cordic_0|xip1E_5_uid105_sincosTest_a[6]~6_combout\ : std_logic;
SIGNAL \cordic_0|Add23~5_sumout\ : std_logic;
SIGNAL \cordic_0|Add21~37_sumout\ : std_logic;
SIGNAL \cordic_0|Add24~25_sumout\ : std_logic;
SIGNAL \cordic_0|Add23~21_sumout\ : std_logic;
SIGNAL \cordic_0|Add22~41_sumout\ : std_logic;
SIGNAL \cordic_0|Add24~29_sumout\ : std_logic;
SIGNAL \cordic_0|Add22~45_sumout\ : std_logic;
SIGNAL \cordic_0|Add21~41_sumout\ : std_logic;
SIGNAL \cordic_0|xip1E_5_uid105_sincosTest_a[4]~9_combout\ : std_logic;
SIGNAL \cordic_0|Add23~25_sumout\ : std_logic;
SIGNAL \cordic_0|Add24~33_sumout\ : std_logic;
SIGNAL \cordic_0|Add21~45_sumout\ : std_logic;
SIGNAL \cordic_0|Add22~49_sumout\ : std_logic;
SIGNAL \cordic_0|Add23~29_sumout\ : std_logic;
SIGNAL \cordic_0|Add24~37_sumout\ : std_logic;
SIGNAL \cordic_0|Add21~49_sumout\ : std_logic;
SIGNAL \cordic_0|Add22~53_sumout\ : std_logic;
SIGNAL \cordic_0|xip1E_4_uid89_sincosTest_o[2]~1_combout\ : std_logic;
SIGNAL \cordic_0|Add23~33_sumout\ : std_logic;
SIGNAL \cordic_0|Add21~53_sumout\ : std_logic;
SIGNAL \cordic_0|Add24~41_sumout\ : std_logic;
SIGNAL \cordic_0|Add22~57_sumout\ : std_logic;
SIGNAL \cordic_0|Add23~37_sumout\ : std_logic;
SIGNAL \cordic_0|Add24~45_sumout\ : std_logic;
SIGNAL \cordic_0|Add21~57_sumout\ : std_logic;
SIGNAL \cordic_0|Add22~61_sumout\ : std_logic;
SIGNAL \cordic_0|xip1E_4_uid89_sincosTest_o[0]~3_combout\ : std_logic;
SIGNAL \cordic_0|Add23~41_sumout\ : std_logic;
SIGNAL \cordic_0|Add30~62_cout\ : std_logic;
SIGNAL \cordic_0|Add30~58_cout\ : std_logic;
SIGNAL \cordic_0|Add30~54_cout\ : std_logic;
SIGNAL \cordic_0|Add30~50_cout\ : std_logic;
SIGNAL \cordic_0|Add30~46_cout\ : std_logic;
SIGNAL \cordic_0|Add30~42_cout\ : std_logic;
SIGNAL \cordic_0|Add30~38_cout\ : std_logic;
SIGNAL \cordic_0|Add30~34_cout\ : std_logic;
SIGNAL \cordic_0|Add30~30_cout\ : std_logic;
SIGNAL \cordic_0|Add30~26_cout\ : std_logic;
SIGNAL \cordic_0|Add30~2\ : std_logic;
SIGNAL \cordic_0|Add30~5_sumout\ : std_logic;
SIGNAL \cordic_0|Add7~1_sumout\ : std_logic;
SIGNAL \cordic_0|Add8~1_sumout\ : std_logic;
SIGNAL \cordic_0|Add7~9_sumout\ : std_logic;
SIGNAL \cordic_0|Add8~9_sumout\ : std_logic;
SIGNAL \cordic_0|Add7~13_sumout\ : std_logic;
SIGNAL \cordic_0|Add8~13_sumout\ : std_logic;
SIGNAL \cordic_0|Add7~17_sumout\ : std_logic;
SIGNAL \cordic_0|Add8~17_sumout\ : std_logic;
SIGNAL \cordic_0|Add7~21_sumout\ : std_logic;
SIGNAL \cordic_0|Add8~21_sumout\ : std_logic;
SIGNAL \cordic_0|Add7~25_sumout\ : std_logic;
SIGNAL \cordic_0|Add8~25_sumout\ : std_logic;
SIGNAL \cordic_0|Add7~29_sumout\ : std_logic;
SIGNAL \cordic_0|Add8~29_sumout\ : std_logic;
SIGNAL \cordic_0|Add7~33_sumout\ : std_logic;
SIGNAL \cordic_0|Add8~33_sumout\ : std_logic;
SIGNAL \cordic_0|Add7~37_sumout\ : std_logic;
SIGNAL \cordic_0|Add8~37_sumout\ : std_logic;
SIGNAL \cordic_0|Add7~41_sumout\ : std_logic;
SIGNAL \cordic_0|aip1E_3_uid76_sincosTest_o[1]~0_combout\ : std_logic;
SIGNAL \cordic_0|Add9~42_cout\ : std_logic;
SIGNAL \cordic_0|Add9~38_cout\ : std_logic;
SIGNAL \cordic_0|Add9~34_cout\ : std_logic;
SIGNAL \cordic_0|Add9~30_cout\ : std_logic;
SIGNAL \cordic_0|Add9~26_cout\ : std_logic;
SIGNAL \cordic_0|Add9~22_cout\ : std_logic;
SIGNAL \cordic_0|Add9~18_cout\ : std_logic;
SIGNAL \cordic_0|Add9~14_cout\ : std_logic;
SIGNAL \cordic_0|Add9~10_cout\ : std_logic;
SIGNAL \cordic_0|Add9~6_cout\ : std_logic;
SIGNAL \cordic_0|Add9~1_sumout\ : std_logic;
SIGNAL \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|xip1E_5_uid105_sincosTest_a[9]~0_combout\ : std_logic;
SIGNAL \cordic_0|xip1E_5_uid105_sincosTest_a[7]~4_combout\ : std_logic;
SIGNAL \cordic_0|xip1E_5_uid105_sincosTest_a[5]~8_combout\ : std_logic;
SIGNAL \cordic_0|xip1E_4_uid89_sincosTest_o[3]~0_combout\ : std_logic;
SIGNAL \cordic_0|xip1E_4_uid89_sincosTest_o[1]~2_combout\ : std_logic;
SIGNAL \cordic_0|Add31~66_cout\ : std_logic;
SIGNAL \cordic_0|Add31~62_cout\ : std_logic;
SIGNAL \cordic_0|Add31~58_cout\ : std_logic;
SIGNAL \cordic_0|Add31~54_cout\ : std_logic;
SIGNAL \cordic_0|Add31~50_cout\ : std_logic;
SIGNAL \cordic_0|Add31~46_cout\ : std_logic;
SIGNAL \cordic_0|Add31~42_cout\ : std_logic;
SIGNAL \cordic_0|Add31~38_cout\ : std_logic;
SIGNAL \cordic_0|Add31~34_cout\ : std_logic;
SIGNAL \cordic_0|Add31~30_cout\ : std_logic;
SIGNAL \cordic_0|Add31~26_cout\ : std_logic;
SIGNAL \cordic_0|Add31~2\ : std_logic;
SIGNAL \cordic_0|Add31~5_sumout\ : std_logic;
SIGNAL \cordic_0|Add30~1_sumout\ : std_logic;
SIGNAL \cordic_0|Add31~1_sumout\ : std_logic;
SIGNAL \cordic_0|Add32~0_combout\ : std_logic;
SIGNAL \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|Add22~6\ : std_logic;
SIGNAL \cordic_0|Add22~18\ : std_logic;
SIGNAL \cordic_0|Add22~22\ : std_logic;
SIGNAL \cordic_0|Add22~10\ : std_logic;
SIGNAL \cordic_0|Add22~13_sumout\ : std_logic;
SIGNAL \cordic_0|Add21~6\ : std_logic;
SIGNAL \cordic_0|Add21~14\ : std_logic;
SIGNAL \cordic_0|Add21~18\ : std_logic;
SIGNAL \cordic_0|Add21~9_sumout\ : std_logic;
SIGNAL \cordic_0|Add22~9_sumout\ : std_logic;
SIGNAL \cordic_0|Add21~17_sumout\ : std_logic;
SIGNAL \cordic_0|Add22~21_sumout\ : std_logic;
SIGNAL \cordic_0|Add21~13_sumout\ : std_logic;
SIGNAL \cordic_0|Add22~17_sumout\ : std_logic;
SIGNAL \cordic_0|xip1E_5_uid105_sincosTest_a[12]~3_combout\ : std_logic;
SIGNAL \cordic_0|xip1E_5_uid105_sincosTest_a[10]~7_combout\ : std_logic;
SIGNAL \cordic_0|Add24~49_sumout\ : std_logic;
SIGNAL \cordic_0|Add23~45_sumout\ : std_logic;
SIGNAL \cordic_0|Add23~49_sumout\ : std_logic;
SIGNAL \cordic_0|Add24~53_sumout\ : std_logic;
SIGNAL \cordic_0|yip1E_4_uid90_sincosTest_o[2]~1_combout\ : std_logic;
SIGNAL \cordic_0|Add24~57_sumout\ : std_logic;
SIGNAL \cordic_0|Add23~53_sumout\ : std_logic;
SIGNAL \cordic_0|Add23~57_sumout\ : std_logic;
SIGNAL \cordic_0|Add24~61_sumout\ : std_logic;
SIGNAL \cordic_0|yip1E_4_uid90_sincosTest_o[0]~3_combout\ : std_logic;
SIGNAL \cordic_0|Add25~62_cout\ : std_logic;
SIGNAL \cordic_0|Add25~58_cout\ : std_logic;
SIGNAL \cordic_0|Add25~54_cout\ : std_logic;
SIGNAL \cordic_0|Add25~50_cout\ : std_logic;
SIGNAL \cordic_0|Add25~46_cout\ : std_logic;
SIGNAL \cordic_0|Add25~42_cout\ : std_logic;
SIGNAL \cordic_0|Add25~38_cout\ : std_logic;
SIGNAL \cordic_0|Add25~34_cout\ : std_logic;
SIGNAL \cordic_0|Add25~30_cout\ : std_logic;
SIGNAL \cordic_0|Add25~26_cout\ : std_logic;
SIGNAL \cordic_0|Add25~2\ : std_logic;
SIGNAL \cordic_0|Add25~5_sumout\ : std_logic;
SIGNAL \cordic_0|Add25~1_sumout\ : std_logic;
SIGNAL \cordic_0|xip1E_5_uid105_sincosTest_a[13]~1_combout\ : std_logic;
SIGNAL \cordic_0|xip1E_5_uid105_sincosTest_a[11]~5_combout\ : std_logic;
SIGNAL \cordic_0|yip1E_4_uid90_sincosTest_o[3]~0_combout\ : std_logic;
SIGNAL \cordic_0|yip1E_4_uid90_sincosTest_o[1]~2_combout\ : std_logic;
SIGNAL \cordic_0|Add26~66_cout\ : std_logic;
SIGNAL \cordic_0|Add26~62_cout\ : std_logic;
SIGNAL \cordic_0|Add26~58_cout\ : std_logic;
SIGNAL \cordic_0|Add26~54_cout\ : std_logic;
SIGNAL \cordic_0|Add26~50_cout\ : std_logic;
SIGNAL \cordic_0|Add26~46_cout\ : std_logic;
SIGNAL \cordic_0|Add26~42_cout\ : std_logic;
SIGNAL \cordic_0|Add26~38_cout\ : std_logic;
SIGNAL \cordic_0|Add26~34_cout\ : std_logic;
SIGNAL \cordic_0|Add26~30_cout\ : std_logic;
SIGNAL \cordic_0|Add26~26_cout\ : std_logic;
SIGNAL \cordic_0|Add26~1_sumout\ : std_logic;
SIGNAL \cordic_0|Add26~2\ : std_logic;
SIGNAL \cordic_0|Add26~5_sumout\ : std_logic;
SIGNAL \cordic_0|Add27~0_combout\ : std_logic;
SIGNAL \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~DUPLICATE_q\ : std_logic;
SIGNAL \cordic_0|c[0]~0_combout\ : std_logic;
SIGNAL \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[1][0]~0_combout\ : std_logic;
SIGNAL \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[1][0]~q\ : std_logic;
SIGNAL \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[1][0]~q\ : std_logic;
SIGNAL \cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|Add25~6\ : std_logic;
SIGNAL \cordic_0|Add25~9_sumout\ : std_logic;
SIGNAL \cordic_0|Add26~6\ : std_logic;
SIGNAL \cordic_0|Add26~9_sumout\ : std_logic;
SIGNAL \cordic_0|Add27~10_combout\ : std_logic;
SIGNAL \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q\ : std_logic;
SIGNAL \cordic_0|Add30~6\ : std_logic;
SIGNAL \cordic_0|Add30~9_sumout\ : std_logic;
SIGNAL \cordic_0|Add31~6\ : std_logic;
SIGNAL \cordic_0|Add31~9_sumout\ : std_logic;
SIGNAL \cordic_0|Add32~5_combout\ : std_logic;
SIGNAL \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q\ : std_logic;
SIGNAL \cordic_0|c[1]~1_combout\ : std_logic;
SIGNAL \cordic_0|Add30~10\ : std_logic;
SIGNAL \cordic_0|Add30~13_sumout\ : std_logic;
SIGNAL \cordic_0|Add31~10\ : std_logic;
SIGNAL \cordic_0|Add31~13_sumout\ : std_logic;
SIGNAL \cordic_0|Add32~1_combout\ : std_logic;
SIGNAL \cordic_0|Add32~2_combout\ : std_logic;
SIGNAL \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]~q\ : std_logic;
SIGNAL \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|Add25~10\ : std_logic;
SIGNAL \cordic_0|Add25~13_sumout\ : std_logic;
SIGNAL \cordic_0|Add26~10\ : std_logic;
SIGNAL \cordic_0|Add26~13_sumout\ : std_logic;
SIGNAL \cordic_0|Add27~1_combout\ : std_logic;
SIGNAL \cordic_0|Add27~2_combout\ : std_logic;
SIGNAL \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][2]~q\ : std_logic;
SIGNAL \cordic_0|Add29~0_combout\ : std_logic;
SIGNAL \cordic_0|c[2]~2_combout\ : std_logic;
SIGNAL \cordic_0|Add29~2_combout\ : std_logic;
SIGNAL \cordic_0|Add26~14\ : std_logic;
SIGNAL \cordic_0|Add26~17_sumout\ : std_logic;
SIGNAL \cordic_0|Add25~14\ : std_logic;
SIGNAL \cordic_0|Add25~17_sumout\ : std_logic;
SIGNAL \cordic_0|yip1E_5_uid106_sincosTest_o[13]~0_combout\ : std_logic;
SIGNAL \cordic_0|Add27~6_combout\ : std_logic;
SIGNAL \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][3]~q\ : std_logic;
SIGNAL \cordic_0|Add29~1_combout\ : std_logic;
SIGNAL \cordic_0|Add30~14\ : std_logic;
SIGNAL \cordic_0|Add30~17_sumout\ : std_logic;
SIGNAL \cordic_0|xip1E_5_uid105_sincosTest_o[12]~0_combout\ : std_logic;
SIGNAL \cordic_0|Add31~14\ : std_logic;
SIGNAL \cordic_0|Add31~17_sumout\ : std_logic;
SIGNAL \cordic_0|xip1E_5_uid105_sincosTest_o[13]~1_combout\ : std_logic;
SIGNAL \cordic_0|Add32~3_combout\ : std_logic;
SIGNAL \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][3]~q\ : std_logic;
SIGNAL \cordic_0|c[3]~3_combout\ : std_logic;
SIGNAL \cordic_0|Add26~18\ : std_logic;
SIGNAL \cordic_0|Add26~21_sumout\ : std_logic;
SIGNAL \cordic_0|Add25~18\ : std_logic;
SIGNAL \cordic_0|Add25~21_sumout\ : std_logic;
SIGNAL \cordic_0|Add27~4_combout\ : std_logic;
SIGNAL \cordic_0|Add27~5_combout\ : std_logic;
SIGNAL \cordic_0|Add27~3_combout\ : std_logic;
SIGNAL \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][4]~q\ : std_logic;
SIGNAL \cordic_0|Add29~3_combout\ : std_logic;
SIGNAL \cordic_0|Add31~18\ : std_logic;
SIGNAL \cordic_0|Add31~21_sumout\ : std_logic;
SIGNAL \cordic_0|Add30~18\ : std_logic;
SIGNAL \cordic_0|Add30~21_sumout\ : std_logic;
SIGNAL \cordic_0|xip1E_5_uid105_sincosTest_o[15]~3_combout\ : std_logic;
SIGNAL \cordic_0|xip1E_5_uid105_sincosTest_o[14]~2_combout\ : std_logic;
SIGNAL \cordic_0|Add32~4_combout\ : std_logic;
SIGNAL \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][4]~q\ : std_logic;
SIGNAL \cordic_0|c[4]~4_combout\ : std_logic;
SIGNAL \cordic_0|s[0]~0_combout\ : std_logic;
SIGNAL \cordic_0|s[1]~1_combout\ : std_logic;
SIGNAL \cordic_0|s[2]~2_combout\ : std_logic;
SIGNAL \cordic_0|s[3]~3_combout\ : std_logic;
SIGNAL \cordic_0|s[3]~4_combout\ : std_logic;
SIGNAL \cordic_0|Add34~0_combout\ : std_logic;
SIGNAL \cordic_0|s[4]~5_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \c_2~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \s_2~0_combout\ : std_logic;
SIGNAL \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_areset~input_o\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add27~5_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add27~4_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_yip1E_4_uid90_sincosTest_o[0]~3_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_4_uid89_sincosTest_o[0]~3_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_o[1]~0_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_yip1E_4_uid90_sincosTest_o[1]~2_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_4_uid89_sincosTest_o[1]~2_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_yip1E_4_uid90_sincosTest_o[2]~1_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_4_uid89_sincosTest_o[2]~1_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_yip1E_4_uid90_sincosTest_o[3]~0_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_4_uid89_sincosTest_o[3]~0_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[4]~9_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[5]~8_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_absA_uid18_sincosTest_q[1]~3_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[10]~7_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[6]~6_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_absA_uid18_sincosTest_q[2]~2_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[11]~5_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[7]~4_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_absA_uid18_sincosTest_q[3]~1_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add5~3_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[12]~3_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[8]~2_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add5~2_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add5~1_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_absA_uid18_sincosTest_q[4]~0_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[13]~1_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[9]~0_combout\ : std_logic;
SIGNAL \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_a[12]~0_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add5~0_combout\ : std_logic;
SIGNAL \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_o[15]~3_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_o[14]~2_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_o[13]~1_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_o[12]~0_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_yip1E_5_uid106_sincosTest_o[13]~0_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add32~1_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add27~1_combout\ : std_logic;
SIGNAL \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[1][0]~q\ : std_logic;
SIGNAL \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add34~0_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_s[3]~4_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_s[3]~3_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_s[2]~2_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_s[1]~1_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_s[0]~0_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_c[4]~4_combout\ : std_logic;
SIGNAL \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][4]~q\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add29~3_combout\ : std_logic;
SIGNAL \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][4]~q\ : std_logic;
SIGNAL \cordic_0|ALT_INV_c[3]~3_combout\ : std_logic;
SIGNAL \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][3]~q\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add29~2_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add29~1_combout\ : std_logic;
SIGNAL \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][3]~q\ : std_logic;
SIGNAL \cordic_0|ALT_INV_c[2]~2_combout\ : std_logic;
SIGNAL \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][2]~q\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add29~0_combout\ : std_logic;
SIGNAL \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][2]~q\ : std_logic;
SIGNAL \cordic_0|ALT_INV_c[1]~1_combout\ : std_logic;
SIGNAL \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][1]~q\ : std_logic;
SIGNAL \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|ALT_INV_delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|redist8_signA_uid7_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][1]~q\ : std_logic;
SIGNAL \cordic_0|ALT_INV_c[0]~0_combout\ : std_logic;
SIGNAL \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\ : std_logic;
SIGNAL \cordic_0|ALT_INV_s[4]~5_combout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add23~57_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~61_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~61_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add21~57_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add7~41_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add23~53_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~57_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~57_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add21~53_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add8~37_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add7~37_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add23~49_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~53_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~53_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add21~49_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add8~33_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add7~33_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add23~45_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~49_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~49_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add21~45_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add8~29_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add23~41_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~45_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~45_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add21~41_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add23~37_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~41_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~41_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add21~37_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add8~21_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add23~33_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~37_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~37_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add21~33_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add23~29_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~33_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~33_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add21~29_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[1]~25_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add23~25_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~29_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~29_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add21~25_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[7]~21_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[6]~17_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[5]~13_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[4]~9_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[3]~5_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[2]~1_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add23~21_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~25_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~25_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add21~21_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~21_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add21~17_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add23~17_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~21_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~17_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add21~13_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add23~13_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~17_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add23~9_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~13_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~13_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add23~5_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~9_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~9_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add21~9_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~5_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~5_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add21~5_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add23~1_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add22~1_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add24~1_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add21~1_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add31~21_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add30~21_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add25~21_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add26~21_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add31~17_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add30~17_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add25~17_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add26~17_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add31~13_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add30~13_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add25~13_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add26~13_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add31~9_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add30~9_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add25~9_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add26~9_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add25~5_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add26~5_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add25~1_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add26~1_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add31~5_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add30~5_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add31~1_sumout\ : std_logic;
SIGNAL \cordic_0|ALT_INV_Add30~1_sumout\ : std_logic;

BEGIN

ww_a <= a;
ww_areset <= areset;
c <= ww_c;
ww_clk <= clk;
s <= ww_s;
c_frac <= ww_c_frac;
c_int <= ww_c_int;
c_sign <= ww_c_sign;
s_frac <= ww_s_frac;
s_int <= ww_s_int;
s_sign <= ww_s_sign;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][0]~DUPLICATE_q\ <= NOT \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~DUPLICATE_q\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_a[8]~input_o\ <= NOT \a[8]~input_o\;
\ALT_INV_a[7]~input_o\ <= NOT \a[7]~input_o\;
\ALT_INV_a[6]~input_o\ <= NOT \a[6]~input_o\;
\ALT_INV_a[5]~input_o\ <= NOT \a[5]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_a[9]~input_o\ <= NOT \a[9]~input_o\;
\ALT_INV_areset~input_o\ <= NOT \areset~input_o\;
\cordic_0|ALT_INV_Add27~5_combout\ <= NOT \cordic_0|Add27~5_combout\;
\cordic_0|ALT_INV_Add27~4_combout\ <= NOT \cordic_0|Add27~4_combout\;
\cordic_0|ALT_INV_yip1E_4_uid90_sincosTest_o[0]~3_combout\ <= NOT \cordic_0|yip1E_4_uid90_sincosTest_o[0]~3_combout\;
\cordic_0|ALT_INV_xip1E_4_uid89_sincosTest_o[0]~3_combout\ <= NOT \cordic_0|xip1E_4_uid89_sincosTest_o[0]~3_combout\;
\cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_o[1]~0_combout\ <= NOT \cordic_0|aip1E_3_uid76_sincosTest_o[1]~0_combout\;
\cordic_0|ALT_INV_yip1E_4_uid90_sincosTest_o[1]~2_combout\ <= NOT \cordic_0|yip1E_4_uid90_sincosTest_o[1]~2_combout\;
\cordic_0|ALT_INV_xip1E_4_uid89_sincosTest_o[1]~2_combout\ <= NOT \cordic_0|xip1E_4_uid89_sincosTest_o[1]~2_combout\;
\cordic_0|ALT_INV_yip1E_4_uid90_sincosTest_o[2]~1_combout\ <= NOT \cordic_0|yip1E_4_uid90_sincosTest_o[2]~1_combout\;
\cordic_0|ALT_INV_xip1E_4_uid89_sincosTest_o[2]~1_combout\ <= NOT \cordic_0|xip1E_4_uid89_sincosTest_o[2]~1_combout\;
\cordic_0|ALT_INV_yip1E_4_uid90_sincosTest_o[3]~0_combout\ <= NOT \cordic_0|yip1E_4_uid90_sincosTest_o[3]~0_combout\;
\cordic_0|ALT_INV_xip1E_4_uid89_sincosTest_o[3]~0_combout\ <= NOT \cordic_0|xip1E_4_uid89_sincosTest_o[3]~0_combout\;
\cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[4]~9_combout\ <= NOT \cordic_0|xip1E_5_uid105_sincosTest_a[4]~9_combout\;
\cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[5]~8_combout\ <= NOT \cordic_0|xip1E_5_uid105_sincosTest_a[5]~8_combout\;
\cordic_0|ALT_INV_absA_uid18_sincosTest_q[1]~3_combout\ <= NOT \cordic_0|absA_uid18_sincosTest_q[1]~3_combout\;
\cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[10]~7_combout\ <= NOT \cordic_0|xip1E_5_uid105_sincosTest_a[10]~7_combout\;
\cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[6]~6_combout\ <= NOT \cordic_0|xip1E_5_uid105_sincosTest_a[6]~6_combout\;
\cordic_0|ALT_INV_absA_uid18_sincosTest_q[2]~2_combout\ <= NOT \cordic_0|absA_uid18_sincosTest_q[2]~2_combout\;
\cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[11]~5_combout\ <= NOT \cordic_0|xip1E_5_uid105_sincosTest_a[11]~5_combout\;
\cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[7]~4_combout\ <= NOT \cordic_0|xip1E_5_uid105_sincosTest_a[7]~4_combout\;
\cordic_0|ALT_INV_absA_uid18_sincosTest_q[3]~1_combout\ <= NOT \cordic_0|absA_uid18_sincosTest_q[3]~1_combout\;
\cordic_0|ALT_INV_Add5~3_combout\ <= NOT \cordic_0|Add5~3_combout\;
\cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[12]~3_combout\ <= NOT \cordic_0|xip1E_5_uid105_sincosTest_a[12]~3_combout\;
\cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[8]~2_combout\ <= NOT \cordic_0|xip1E_5_uid105_sincosTest_a[8]~2_combout\;
\cordic_0|ALT_INV_Add5~2_combout\ <= NOT \cordic_0|Add5~2_combout\;
\cordic_0|ALT_INV_Add5~1_combout\ <= NOT \cordic_0|Add5~1_combout\;
\cordic_0|ALT_INV_absA_uid18_sincosTest_q[4]~0_combout\ <= NOT \cordic_0|absA_uid18_sincosTest_q[4]~0_combout\;
\cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[13]~1_combout\ <= NOT \cordic_0|xip1E_5_uid105_sincosTest_a[13]~1_combout\;
\cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[9]~0_combout\ <= NOT \cordic_0|xip1E_5_uid105_sincosTest_a[9]~0_combout\;
\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\ <= NOT \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\;
\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\ <= NOT \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\;
\cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_a[12]~0_combout\ <= NOT \cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\;
\cordic_0|ALT_INV_Add5~0_combout\ <= NOT \cordic_0|Add5~0_combout\;
\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\ <= NOT \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\;
\cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_o[15]~3_combout\ <= NOT \cordic_0|xip1E_5_uid105_sincosTest_o[15]~3_combout\;
\cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_o[14]~2_combout\ <= NOT \cordic_0|xip1E_5_uid105_sincosTest_o[14]~2_combout\;
\cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_o[13]~1_combout\ <= NOT \cordic_0|xip1E_5_uid105_sincosTest_o[13]~1_combout\;
\cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_o[12]~0_combout\ <= NOT \cordic_0|xip1E_5_uid105_sincosTest_o[12]~0_combout\;
\cordic_0|ALT_INV_yip1E_5_uid106_sincosTest_o[13]~0_combout\ <= NOT \cordic_0|yip1E_5_uid106_sincosTest_o[13]~0_combout\;
\cordic_0|ALT_INV_Add32~1_combout\ <= NOT \cordic_0|Add32~1_combout\;
\cordic_0|ALT_INV_Add27~1_combout\ <= NOT \cordic_0|Add27~1_combout\;
\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[1][0]~q\ <= NOT \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[1][0]~q\;
\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\ <= NOT \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\cordic_0|ALT_INV_Add34~0_combout\ <= NOT \cordic_0|Add34~0_combout\;
\cordic_0|ALT_INV_s[3]~4_combout\ <= NOT \cordic_0|s[3]~4_combout\;
\cordic_0|ALT_INV_s[3]~3_combout\ <= NOT \cordic_0|s[3]~3_combout\;
\cordic_0|ALT_INV_s[2]~2_combout\ <= NOT \cordic_0|s[2]~2_combout\;
\cordic_0|ALT_INV_s[1]~1_combout\ <= NOT \cordic_0|s[1]~1_combout\;
\cordic_0|ALT_INV_s[0]~0_combout\ <= NOT \cordic_0|s[0]~0_combout\;
\cordic_0|ALT_INV_c[4]~4_combout\ <= NOT \cordic_0|c[4]~4_combout\;
\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][4]~q\ <= NOT \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][4]~q\;
\cordic_0|ALT_INV_Add29~3_combout\ <= NOT \cordic_0|Add29~3_combout\;
\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][4]~q\ <= NOT \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][4]~q\;
\cordic_0|ALT_INV_c[3]~3_combout\ <= NOT \cordic_0|c[3]~3_combout\;
\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][3]~q\ <= NOT \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][3]~q\;
\cordic_0|ALT_INV_Add29~2_combout\ <= NOT \cordic_0|Add29~2_combout\;
\cordic_0|ALT_INV_Add29~1_combout\ <= NOT \cordic_0|Add29~1_combout\;
\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][3]~q\ <= NOT \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][3]~q\;
\cordic_0|ALT_INV_c[2]~2_combout\ <= NOT \cordic_0|c[2]~2_combout\;
\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][2]~q\ <= NOT \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]~q\;
\cordic_0|ALT_INV_Add29~0_combout\ <= NOT \cordic_0|Add29~0_combout\;
\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][2]~q\ <= NOT \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][2]~q\;
\cordic_0|ALT_INV_c[1]~1_combout\ <= NOT \cordic_0|c[1]~1_combout\;
\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][1]~q\ <= NOT \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q\;
\cordic_0|redist7_invSignA_uid8_sincosTest_q_2|ALT_INV_delay_signals[0][0]~q\ <= NOT \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q\;
\cordic_0|redist8_signA_uid7_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\ <= NOT \cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\;
\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][1]~q\ <= NOT \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q\;
\cordic_0|ALT_INV_c[0]~0_combout\ <= NOT \cordic_0|c[0]~0_combout\;
\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\ <= NOT \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q\;
\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\ <= NOT \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\;
\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\ <= NOT \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q\;
\cordic_0|ALT_INV_s[4]~5_combout\ <= NOT \cordic_0|s[4]~5_combout\;
\cordic_0|ALT_INV_Add23~57_sumout\ <= NOT \cordic_0|Add23~57_sumout\;
\cordic_0|ALT_INV_Add24~61_sumout\ <= NOT \cordic_0|Add24~61_sumout\;
\cordic_0|ALT_INV_Add22~61_sumout\ <= NOT \cordic_0|Add22~61_sumout\;
\cordic_0|ALT_INV_Add21~57_sumout\ <= NOT \cordic_0|Add21~57_sumout\;
\cordic_0|ALT_INV_Add7~41_sumout\ <= NOT \cordic_0|Add7~41_sumout\;
\cordic_0|ALT_INV_Add23~53_sumout\ <= NOT \cordic_0|Add23~53_sumout\;
\cordic_0|ALT_INV_Add24~57_sumout\ <= NOT \cordic_0|Add24~57_sumout\;
\cordic_0|ALT_INV_Add22~57_sumout\ <= NOT \cordic_0|Add22~57_sumout\;
\cordic_0|ALT_INV_Add21~53_sumout\ <= NOT \cordic_0|Add21~53_sumout\;
\cordic_0|ALT_INV_Add8~37_sumout\ <= NOT \cordic_0|Add8~37_sumout\;
\cordic_0|ALT_INV_Add7~37_sumout\ <= NOT \cordic_0|Add7~37_sumout\;
\cordic_0|ALT_INV_Add23~49_sumout\ <= NOT \cordic_0|Add23~49_sumout\;
\cordic_0|ALT_INV_Add24~53_sumout\ <= NOT \cordic_0|Add24~53_sumout\;
\cordic_0|ALT_INV_Add22~53_sumout\ <= NOT \cordic_0|Add22~53_sumout\;
\cordic_0|ALT_INV_Add21~49_sumout\ <= NOT \cordic_0|Add21~49_sumout\;
\cordic_0|ALT_INV_Add8~33_sumout\ <= NOT \cordic_0|Add8~33_sumout\;
\cordic_0|ALT_INV_Add7~33_sumout\ <= NOT \cordic_0|Add7~33_sumout\;
\cordic_0|ALT_INV_Add23~45_sumout\ <= NOT \cordic_0|Add23~45_sumout\;
\cordic_0|ALT_INV_Add24~49_sumout\ <= NOT \cordic_0|Add24~49_sumout\;
\cordic_0|ALT_INV_Add22~49_sumout\ <= NOT \cordic_0|Add22~49_sumout\;
\cordic_0|ALT_INV_Add21~45_sumout\ <= NOT \cordic_0|Add21~45_sumout\;
\cordic_0|ALT_INV_Add8~29_sumout\ <= NOT \cordic_0|Add8~29_sumout\;
\cordic_0|ALT_INV_Add7~29_sumout\ <= NOT \cordic_0|Add7~29_sumout\;
\cordic_0|ALT_INV_Add23~41_sumout\ <= NOT \cordic_0|Add23~41_sumout\;
\cordic_0|ALT_INV_Add24~45_sumout\ <= NOT \cordic_0|Add24~45_sumout\;
\cordic_0|ALT_INV_Add22~45_sumout\ <= NOT \cordic_0|Add22~45_sumout\;
\cordic_0|ALT_INV_Add21~41_sumout\ <= NOT \cordic_0|Add21~41_sumout\;
\cordic_0|ALT_INV_Add8~25_sumout\ <= NOT \cordic_0|Add8~25_sumout\;
\cordic_0|ALT_INV_Add7~25_sumout\ <= NOT \cordic_0|Add7~25_sumout\;
\cordic_0|ALT_INV_Add23~37_sumout\ <= NOT \cordic_0|Add23~37_sumout\;
\cordic_0|ALT_INV_Add24~41_sumout\ <= NOT \cordic_0|Add24~41_sumout\;
\cordic_0|ALT_INV_Add22~41_sumout\ <= NOT \cordic_0|Add22~41_sumout\;
\cordic_0|ALT_INV_Add21~37_sumout\ <= NOT \cordic_0|Add21~37_sumout\;
\cordic_0|ALT_INV_Add8~21_sumout\ <= NOT \cordic_0|Add8~21_sumout\;
\cordic_0|ALT_INV_Add7~21_sumout\ <= NOT \cordic_0|Add7~21_sumout\;
\cordic_0|ALT_INV_Add23~33_sumout\ <= NOT \cordic_0|Add23~33_sumout\;
\cordic_0|ALT_INV_Add24~37_sumout\ <= NOT \cordic_0|Add24~37_sumout\;
\cordic_0|ALT_INV_Add22~37_sumout\ <= NOT \cordic_0|Add22~37_sumout\;
\cordic_0|ALT_INV_Add21~33_sumout\ <= NOT \cordic_0|Add21~33_sumout\;
\cordic_0|ALT_INV_Add8~17_sumout\ <= NOT \cordic_0|Add8~17_sumout\;
\cordic_0|ALT_INV_Add7~17_sumout\ <= NOT \cordic_0|Add7~17_sumout\;
\cordic_0|ALT_INV_Add1~33_sumout\ <= NOT \cordic_0|Add1~33_sumout\;
\cordic_0|ALT_INV_Add23~29_sumout\ <= NOT \cordic_0|Add23~29_sumout\;
\cordic_0|ALT_INV_Add24~33_sumout\ <= NOT \cordic_0|Add24~33_sumout\;
\cordic_0|ALT_INV_Add22~33_sumout\ <= NOT \cordic_0|Add22~33_sumout\;
\cordic_0|ALT_INV_Add21~29_sumout\ <= NOT \cordic_0|Add21~29_sumout\;
\cordic_0|ALT_INV_Add8~13_sumout\ <= NOT \cordic_0|Add8~13_sumout\;
\cordic_0|ALT_INV_Add7~13_sumout\ <= NOT \cordic_0|Add7~13_sumout\;
\cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[1]~25_sumout\ <= NOT \cordic_0|argMPiO2_uid14_sincosTest_o[1]~25_sumout\;
\cordic_0|ALT_INV_Add1~29_sumout\ <= NOT \cordic_0|Add1~29_sumout\;
\cordic_0|ALT_INV_Add23~25_sumout\ <= NOT \cordic_0|Add23~25_sumout\;
\cordic_0|ALT_INV_Add24~29_sumout\ <= NOT \cordic_0|Add24~29_sumout\;
\cordic_0|ALT_INV_Add1~25_sumout\ <= NOT \cordic_0|Add1~25_sumout\;
\cordic_0|ALT_INV_Add22~29_sumout\ <= NOT \cordic_0|Add22~29_sumout\;
\cordic_0|ALT_INV_Add21~25_sumout\ <= NOT \cordic_0|Add21~25_sumout\;
\cordic_0|ALT_INV_Add8~9_sumout\ <= NOT \cordic_0|Add8~9_sumout\;
\cordic_0|ALT_INV_Add7~9_sumout\ <= NOT \cordic_0|Add7~9_sumout\;
\cordic_0|ALT_INV_Add6~5_sumout\ <= NOT \cordic_0|Add6~5_sumout\;
\cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[7]~21_sumout\ <= NOT \cordic_0|argMPiO2_uid14_sincosTest_o[7]~21_sumout\;
\cordic_0|ALT_INV_Add1~21_sumout\ <= NOT \cordic_0|Add1~21_sumout\;
\cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[6]~17_sumout\ <= NOT \cordic_0|argMPiO2_uid14_sincosTest_o[6]~17_sumout\;
\cordic_0|ALT_INV_Add1~17_sumout\ <= NOT \cordic_0|Add1~17_sumout\;
\cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[5]~13_sumout\ <= NOT \cordic_0|argMPiO2_uid14_sincosTest_o[5]~13_sumout\;
\cordic_0|ALT_INV_Add1~13_sumout\ <= NOT \cordic_0|Add1~13_sumout\;
\cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[4]~9_sumout\ <= NOT \cordic_0|argMPiO2_uid14_sincosTest_o[4]~9_sumout\;
\cordic_0|ALT_INV_Add1~9_sumout\ <= NOT \cordic_0|Add1~9_sumout\;
\cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[3]~5_sumout\ <= NOT \cordic_0|argMPiO2_uid14_sincosTest_o[3]~5_sumout\;
\cordic_0|ALT_INV_Add1~5_sumout\ <= NOT \cordic_0|Add1~5_sumout\;
\cordic_0|ALT_INV_Add4~29_sumout\ <= NOT \cordic_0|Add4~29_sumout\;
\cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[2]~1_sumout\ <= NOT \cordic_0|argMPiO2_uid14_sincosTest_o[2]~1_sumout\;
\cordic_0|ALT_INV_Add1~1_sumout\ <= NOT \cordic_0|Add1~1_sumout\;
\cordic_0|ALT_INV_Add23~21_sumout\ <= NOT \cordic_0|Add23~21_sumout\;
\cordic_0|ALT_INV_Add24~25_sumout\ <= NOT \cordic_0|Add24~25_sumout\;
\cordic_0|ALT_INV_Add22~25_sumout\ <= NOT \cordic_0|Add22~25_sumout\;
\cordic_0|ALT_INV_Add21~21_sumout\ <= NOT \cordic_0|Add21~21_sumout\;
\cordic_0|ALT_INV_Add8~5_sumout\ <= NOT \cordic_0|Add8~5_sumout\;
\cordic_0|ALT_INV_Add8~1_sumout\ <= NOT \cordic_0|Add8~1_sumout\;
\cordic_0|ALT_INV_Add7~5_sumout\ <= NOT \cordic_0|Add7~5_sumout\;
\cordic_0|ALT_INV_Add7~1_sumout\ <= NOT \cordic_0|Add7~1_sumout\;
\cordic_0|ALT_INV_Add6~1_sumout\ <= NOT \cordic_0|Add6~1_sumout\;
\cordic_0|ALT_INV_Add4~25_sumout\ <= NOT \cordic_0|Add4~25_sumout\;
\cordic_0|ALT_INV_Add4~21_sumout\ <= NOT \cordic_0|Add4~21_sumout\;
\cordic_0|ALT_INV_Add4~17_sumout\ <= NOT \cordic_0|Add4~17_sumout\;
\cordic_0|ALT_INV_Add4~13_sumout\ <= NOT \cordic_0|Add4~13_sumout\;
\cordic_0|ALT_INV_Add4~9_sumout\ <= NOT \cordic_0|Add4~9_sumout\;
\cordic_0|ALT_INV_Add4~5_sumout\ <= NOT \cordic_0|Add4~5_sumout\;
\cordic_0|ALT_INV_Add4~1_sumout\ <= NOT \cordic_0|Add4~1_sumout\;
\cordic_0|ALT_INV_Add22~21_sumout\ <= NOT \cordic_0|Add22~21_sumout\;
\cordic_0|ALT_INV_Add21~17_sumout\ <= NOT \cordic_0|Add21~17_sumout\;
\cordic_0|ALT_INV_Add23~17_sumout\ <= NOT \cordic_0|Add23~17_sumout\;
\cordic_0|ALT_INV_Add24~21_sumout\ <= NOT \cordic_0|Add24~21_sumout\;
\cordic_0|ALT_INV_Add22~17_sumout\ <= NOT \cordic_0|Add22~17_sumout\;
\cordic_0|ALT_INV_Add21~13_sumout\ <= NOT \cordic_0|Add21~13_sumout\;
\cordic_0|ALT_INV_Add23~13_sumout\ <= NOT \cordic_0|Add23~13_sumout\;
\cordic_0|ALT_INV_Add24~17_sumout\ <= NOT \cordic_0|Add24~17_sumout\;
\cordic_0|ALT_INV_Add23~9_sumout\ <= NOT \cordic_0|Add23~9_sumout\;
\cordic_0|ALT_INV_Add22~13_sumout\ <= NOT \cordic_0|Add22~13_sumout\;
\cordic_0|ALT_INV_Add24~13_sumout\ <= NOT \cordic_0|Add24~13_sumout\;
\cordic_0|ALT_INV_Add23~5_sumout\ <= NOT \cordic_0|Add23~5_sumout\;
\cordic_0|ALT_INV_Add22~9_sumout\ <= NOT \cordic_0|Add22~9_sumout\;
\cordic_0|ALT_INV_Add24~9_sumout\ <= NOT \cordic_0|Add24~9_sumout\;
\cordic_0|ALT_INV_Add21~9_sumout\ <= NOT \cordic_0|Add21~9_sumout\;
\cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ <= NOT \cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\;
\cordic_0|ALT_INV_Add22~5_sumout\ <= NOT \cordic_0|Add22~5_sumout\;
\cordic_0|ALT_INV_Add24~5_sumout\ <= NOT \cordic_0|Add24~5_sumout\;
\cordic_0|ALT_INV_Add21~5_sumout\ <= NOT \cordic_0|Add21~5_sumout\;
\cordic_0|ALT_INV_Add23~1_sumout\ <= NOT \cordic_0|Add23~1_sumout\;
\cordic_0|ALT_INV_Add22~1_sumout\ <= NOT \cordic_0|Add22~1_sumout\;
\cordic_0|ALT_INV_Add24~1_sumout\ <= NOT \cordic_0|Add24~1_sumout\;
\cordic_0|ALT_INV_Add21~1_sumout\ <= NOT \cordic_0|Add21~1_sumout\;
\cordic_0|ALT_INV_Add31~21_sumout\ <= NOT \cordic_0|Add31~21_sumout\;
\cordic_0|ALT_INV_Add30~21_sumout\ <= NOT \cordic_0|Add30~21_sumout\;
\cordic_0|ALT_INV_Add25~21_sumout\ <= NOT \cordic_0|Add25~21_sumout\;
\cordic_0|ALT_INV_Add26~21_sumout\ <= NOT \cordic_0|Add26~21_sumout\;
\cordic_0|ALT_INV_Add31~17_sumout\ <= NOT \cordic_0|Add31~17_sumout\;
\cordic_0|ALT_INV_Add30~17_sumout\ <= NOT \cordic_0|Add30~17_sumout\;
\cordic_0|ALT_INV_Add25~17_sumout\ <= NOT \cordic_0|Add25~17_sumout\;
\cordic_0|ALT_INV_Add26~17_sumout\ <= NOT \cordic_0|Add26~17_sumout\;
\cordic_0|ALT_INV_Add31~13_sumout\ <= NOT \cordic_0|Add31~13_sumout\;
\cordic_0|ALT_INV_Add30~13_sumout\ <= NOT \cordic_0|Add30~13_sumout\;
\cordic_0|ALT_INV_Add25~13_sumout\ <= NOT \cordic_0|Add25~13_sumout\;
\cordic_0|ALT_INV_Add26~13_sumout\ <= NOT \cordic_0|Add26~13_sumout\;
\cordic_0|ALT_INV_Add31~9_sumout\ <= NOT \cordic_0|Add31~9_sumout\;
\cordic_0|ALT_INV_Add30~9_sumout\ <= NOT \cordic_0|Add30~9_sumout\;
\cordic_0|ALT_INV_Add25~9_sumout\ <= NOT \cordic_0|Add25~9_sumout\;
\cordic_0|ALT_INV_Add26~9_sumout\ <= NOT \cordic_0|Add26~9_sumout\;
\cordic_0|ALT_INV_Add25~5_sumout\ <= NOT \cordic_0|Add25~5_sumout\;
\cordic_0|ALT_INV_Add26~5_sumout\ <= NOT \cordic_0|Add26~5_sumout\;
\cordic_0|ALT_INV_Add25~1_sumout\ <= NOT \cordic_0|Add25~1_sumout\;
\cordic_0|ALT_INV_Add26~1_sumout\ <= NOT \cordic_0|Add26~1_sumout\;
\cordic_0|ALT_INV_Add31~5_sumout\ <= NOT \cordic_0|Add31~5_sumout\;
\cordic_0|ALT_INV_Add30~5_sumout\ <= NOT \cordic_0|Add30~5_sumout\;
\cordic_0|ALT_INV_Add31~1_sumout\ <= NOT \cordic_0|Add31~1_sumout\;
\cordic_0|ALT_INV_Add30~1_sumout\ <= NOT \cordic_0|Add30~1_sumout\;

-- Location: IOOBUF_X80_Y0_N19
\c[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cordic_0|c[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_c(0));

-- Location: IOOBUF_X84_Y0_N2
\c[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cordic_0|c[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_c(1));

-- Location: IOOBUF_X89_Y6_N5
\c[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cordic_0|ALT_INV_c[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_c(2));

-- Location: IOOBUF_X89_Y8_N5
\c[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cordic_0|c[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_c(3));

-- Location: IOOBUF_X89_Y6_N22
\c[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cordic_0|c[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_c(4));

-- Location: IOOBUF_X52_Y0_N2
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cordic_0|s[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X52_Y0_N19
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cordic_0|s[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X60_Y0_N2
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cordic_0|ALT_INV_s[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X80_Y0_N2
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cordic_0|s[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X60_Y0_N19
\s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cordic_0|s[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_s(4));

-- Location: IOOBUF_X89_Y16_N5
\c_frac[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_c_frac(0));

-- Location: IOOBUF_X89_Y16_N22
\c_frac[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_c_frac(1));

-- Location: IOOBUF_X89_Y4_N45
\c_frac[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_c_frac(2));

-- Location: IOOBUF_X89_Y4_N62
\c_frac[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_c_frac(3));

-- Location: IOOBUF_X89_Y21_N39
\c_frac[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_c_frac(4));

-- Location: IOOBUF_X89_Y11_N62
\c_frac[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_c_frac(5));

-- Location: IOOBUF_X89_Y9_N5
\c_frac[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_c_frac(6));

-- Location: IOOBUF_X89_Y11_N45
\c_int[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_2~0_combout\,
	devoe => ww_devoe,
	o => ww_c_int(0));

-- Location: IOOBUF_X89_Y13_N5
\c_int[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_c_int(1));

-- Location: IOOBUF_X89_Y13_N22
\c_int[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_c_int(2));

-- Location: IOOBUF_X89_Y8_N22
\c_int[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_2~0_combout\,
	devoe => ww_devoe,
	o => ww_c_int(3));

-- Location: IOOBUF_X89_Y15_N22
\c_int[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_2~0_combout\,
	devoe => ww_devoe,
	o => ww_c_int(4));

-- Location: IOOBUF_X89_Y15_N5
\c_int[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_2~0_combout\,
	devoe => ww_devoe,
	o => ww_c_int(5));

-- Location: IOOBUF_X89_Y20_N45
\c_int[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_c_int(6));

-- Location: IOOBUF_X89_Y20_N62
\c_sign[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_c_sign(0));

-- Location: IOOBUF_X89_Y21_N56
\c_sign[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_c_sign(1));

-- Location: IOOBUF_X89_Y25_N22
\c_sign[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_c_sign(2));

-- Location: IOOBUF_X89_Y23_N22
\c_sign[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_c_sign(3));

-- Location: IOOBUF_X89_Y9_N56
\c_sign[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_c_sign(4));

-- Location: IOOBUF_X89_Y23_N5
\c_sign[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_c_sign(5));

-- Location: IOOBUF_X89_Y9_N39
\c_sign[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cordic_0|ALT_INV_c[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_c_sign(6));

-- Location: IOOBUF_X89_Y8_N39
\s_frac[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_s_frac(0));

-- Location: IOOBUF_X89_Y11_N79
\s_frac[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_s_frac(1));

-- Location: IOOBUF_X89_Y11_N96
\s_frac[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_s_frac(2));

-- Location: IOOBUF_X89_Y4_N79
\s_frac[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_s_frac(3));

-- Location: IOOBUF_X89_Y13_N56
\s_frac[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_s_frac(4));

-- Location: IOOBUF_X89_Y13_N39
\s_frac[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_s_frac(5));

-- Location: IOOBUF_X89_Y4_N96
\s_frac[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_s_frac(6));

-- Location: IOOBUF_X89_Y6_N39
\s_int[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s_2~0_combout\,
	devoe => ww_devoe,
	o => ww_s_int(0));

-- Location: IOOBUF_X89_Y6_N56
\s_int[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s_int(1));

-- Location: IOOBUF_X89_Y16_N39
\s_int[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s_int(2));

-- Location: IOOBUF_X89_Y16_N56
\s_int[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s_2~0_combout\,
	devoe => ww_devoe,
	o => ww_s_int(3));

-- Location: IOOBUF_X89_Y15_N39
\s_int[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s_2~0_combout\,
	devoe => ww_devoe,
	o => ww_s_int(4));

-- Location: IOOBUF_X89_Y15_N56
\s_int[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s_2~0_combout\,
	devoe => ww_devoe,
	o => ww_s_int(5));

-- Location: IOOBUF_X89_Y8_N56
\s_int[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_s_int(6));

-- Location: IOOBUF_X89_Y9_N22
\s_sign[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_s_sign(0));

-- Location: IOOBUF_X89_Y23_N39
\s_sign[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_s_sign(1));

-- Location: IOOBUF_X89_Y23_N56
\s_sign[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_s_sign(2));

-- Location: IOOBUF_X89_Y20_N79
\s_sign[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_s_sign(3));

-- Location: IOOBUF_X89_Y25_N39
\s_sign[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_s_sign(4));

-- Location: IOOBUF_X89_Y20_N96
\s_sign[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_s_sign(5));

-- Location: IOOBUF_X89_Y25_N56
\s_sign[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cordic_0|ALT_INV_s[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_s_sign(6));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X2_Y0_N58
\a[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\a[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: MLABCELL_X34_Y4_N30
\cordic_0|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add1~33_sumout\ = SUM(( !\a[9]~input_o\ $ (!\a[0]~input_o\) ) + ( \a[9]~input_o\ ) + ( !VCC ))
-- \cordic_0|Add1~34\ = CARRY(( !\a[9]~input_o\ $ (!\a[0]~input_o\) ) + ( \a[9]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[9]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	cin => GND,
	sumout => \cordic_0|Add1~33_sumout\,
	cout => \cordic_0|Add1~34\);

-- Location: MLABCELL_X34_Y4_N33
\cordic_0|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add1~29_sumout\ = SUM(( !\a[9]~input_o\ $ (!\a[1]~input_o\) ) + ( GND ) + ( \cordic_0|Add1~34\ ))
-- \cordic_0|Add1~30\ = CARRY(( !\a[9]~input_o\ $ (!\a[1]~input_o\) ) + ( GND ) + ( \cordic_0|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[9]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	cin => \cordic_0|Add1~34\,
	sumout => \cordic_0|Add1~29_sumout\,
	cout => \cordic_0|Add1~30\);

-- Location: MLABCELL_X34_Y4_N36
\cordic_0|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add1~1_sumout\ = SUM(( GND ) + ( !\a[9]~input_o\ $ (!\a[2]~input_o\) ) + ( \cordic_0|Add1~30\ ))
-- \cordic_0|Add1~2\ = CARRY(( GND ) + ( !\a[9]~input_o\ $ (!\a[2]~input_o\) ) + ( \cordic_0|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[9]~input_o\,
	dataf => \ALT_INV_a[2]~input_o\,
	cin => \cordic_0|Add1~30\,
	sumout => \cordic_0|Add1~1_sumout\,
	cout => \cordic_0|Add1~2\);

-- Location: MLABCELL_X34_Y4_N39
\cordic_0|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add1~5_sumout\ = SUM(( !\a[9]~input_o\ $ (!\a[3]~input_o\) ) + ( GND ) + ( \cordic_0|Add1~2\ ))
-- \cordic_0|Add1~6\ = CARRY(( !\a[9]~input_o\ $ (!\a[3]~input_o\) ) + ( GND ) + ( \cordic_0|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[9]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	cin => \cordic_0|Add1~2\,
	sumout => \cordic_0|Add1~5_sumout\,
	cout => \cordic_0|Add1~6\);

-- Location: MLABCELL_X34_Y4_N42
\cordic_0|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add1~9_sumout\ = SUM(( !\a[9]~input_o\ $ (!\a[4]~input_o\) ) + ( GND ) + ( \cordic_0|Add1~6\ ))
-- \cordic_0|Add1~10\ = CARRY(( !\a[9]~input_o\ $ (!\a[4]~input_o\) ) + ( GND ) + ( \cordic_0|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[9]~input_o\,
	datac => \ALT_INV_a[4]~input_o\,
	cin => \cordic_0|Add1~6\,
	sumout => \cordic_0|Add1~9_sumout\,
	cout => \cordic_0|Add1~10\);

-- Location: MLABCELL_X34_Y4_N45
\cordic_0|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add1~13_sumout\ = SUM(( !\a[9]~input_o\ $ (!\a[5]~input_o\) ) + ( GND ) + ( \cordic_0|Add1~10\ ))
-- \cordic_0|Add1~14\ = CARRY(( !\a[9]~input_o\ $ (!\a[5]~input_o\) ) + ( GND ) + ( \cordic_0|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[9]~input_o\,
	datac => \ALT_INV_a[5]~input_o\,
	cin => \cordic_0|Add1~10\,
	sumout => \cordic_0|Add1~13_sumout\,
	cout => \cordic_0|Add1~14\);

-- Location: MLABCELL_X34_Y4_N48
\cordic_0|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add1~17_sumout\ = SUM(( !\a[9]~input_o\ $ (!\a[6]~input_o\) ) + ( GND ) + ( \cordic_0|Add1~14\ ))
-- \cordic_0|Add1~18\ = CARRY(( !\a[9]~input_o\ $ (!\a[6]~input_o\) ) + ( GND ) + ( \cordic_0|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[9]~input_o\,
	datac => \ALT_INV_a[6]~input_o\,
	cin => \cordic_0|Add1~14\,
	sumout => \cordic_0|Add1~17_sumout\,
	cout => \cordic_0|Add1~18\);

-- Location: MLABCELL_X34_Y4_N51
\cordic_0|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add1~21_sumout\ = SUM(( !\a[9]~input_o\ $ (!\a[7]~input_o\) ) + ( GND ) + ( \cordic_0|Add1~18\ ))
-- \cordic_0|Add1~22\ = CARRY(( !\a[9]~input_o\ $ (!\a[7]~input_o\) ) + ( GND ) + ( \cordic_0|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[9]~input_o\,
	datac => \ALT_INV_a[7]~input_o\,
	cin => \cordic_0|Add1~18\,
	sumout => \cordic_0|Add1~21_sumout\,
	cout => \cordic_0|Add1~22\);

-- Location: MLABCELL_X34_Y4_N54
\cordic_0|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add1~25_sumout\ = SUM(( !\a[9]~input_o\ $ (!\a[8]~input_o\) ) + ( GND ) + ( \cordic_0|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[9]~input_o\,
	datac => \ALT_INV_a[8]~input_o\,
	cin => \cordic_0|Add1~22\,
	sumout => \cordic_0|Add1~25_sumout\);

-- Location: MLABCELL_X34_Y4_N0
\cordic_0|Add2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add2~6_cout\ = CARRY(( \cordic_0|Add1~33_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \cordic_0|Add2~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|ALT_INV_Add1~33_sumout\,
	cin => GND,
	sharein => GND,
	cout => \cordic_0|Add2~6_cout\,
	shareout => \cordic_0|Add2~7\);

-- Location: MLABCELL_X34_Y4_N3
\cordic_0|argMPiO2_uid14_sincosTest_o[1]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|argMPiO2_uid14_sincosTest_o[1]~25_sumout\ = SUM(( \cordic_0|Add1~29_sumout\ ) + ( \cordic_0|Add2~7\ ) + ( \cordic_0|Add2~6_cout\ ))
-- \cordic_0|argMPiO2_uid14_sincosTest_o[1]~26\ = CARRY(( \cordic_0|Add1~29_sumout\ ) + ( \cordic_0|Add2~7\ ) + ( \cordic_0|Add2~6_cout\ ))
-- \cordic_0|argMPiO2_uid14_sincosTest_o[1]~27\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add1~29_sumout\,
	cin => \cordic_0|Add2~6_cout\,
	sharein => \cordic_0|Add2~7\,
	sumout => \cordic_0|argMPiO2_uid14_sincosTest_o[1]~25_sumout\,
	cout => \cordic_0|argMPiO2_uid14_sincosTest_o[1]~26\,
	shareout => \cordic_0|argMPiO2_uid14_sincosTest_o[1]~27\);

-- Location: MLABCELL_X34_Y4_N6
\cordic_0|argMPiO2_uid14_sincosTest_o[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|argMPiO2_uid14_sincosTest_o[2]~1_sumout\ = SUM(( !\cordic_0|Add1~1_sumout\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[1]~27\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[1]~26\ ))
-- \cordic_0|argMPiO2_uid14_sincosTest_o[2]~2\ = CARRY(( !\cordic_0|Add1~1_sumout\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[1]~27\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[1]~26\ ))
-- \cordic_0|argMPiO2_uid14_sincosTest_o[2]~3\ = SHARE(\cordic_0|Add1~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|ALT_INV_Add1~1_sumout\,
	cin => \cordic_0|argMPiO2_uid14_sincosTest_o[1]~26\,
	sharein => \cordic_0|argMPiO2_uid14_sincosTest_o[1]~27\,
	sumout => \cordic_0|argMPiO2_uid14_sincosTest_o[2]~1_sumout\,
	cout => \cordic_0|argMPiO2_uid14_sincosTest_o[2]~2\,
	shareout => \cordic_0|argMPiO2_uid14_sincosTest_o[2]~3\);

-- Location: MLABCELL_X34_Y4_N9
\cordic_0|argMPiO2_uid14_sincosTest_o[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|argMPiO2_uid14_sincosTest_o[3]~5_sumout\ = SUM(( \cordic_0|Add1~5_sumout\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[2]~3\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[2]~2\ ))
-- \cordic_0|argMPiO2_uid14_sincosTest_o[3]~6\ = CARRY(( \cordic_0|Add1~5_sumout\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[2]~3\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[2]~2\ ))
-- \cordic_0|argMPiO2_uid14_sincosTest_o[3]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|ALT_INV_Add1~5_sumout\,
	cin => \cordic_0|argMPiO2_uid14_sincosTest_o[2]~2\,
	sharein => \cordic_0|argMPiO2_uid14_sincosTest_o[2]~3\,
	sumout => \cordic_0|argMPiO2_uid14_sincosTest_o[3]~5_sumout\,
	cout => \cordic_0|argMPiO2_uid14_sincosTest_o[3]~6\,
	shareout => \cordic_0|argMPiO2_uid14_sincosTest_o[3]~7\);

-- Location: MLABCELL_X34_Y4_N12
\cordic_0|argMPiO2_uid14_sincosTest_o[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|argMPiO2_uid14_sincosTest_o[4]~9_sumout\ = SUM(( !\cordic_0|Add1~9_sumout\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[3]~7\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[3]~6\ ))
-- \cordic_0|argMPiO2_uid14_sincosTest_o[4]~10\ = CARRY(( !\cordic_0|Add1~9_sumout\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[3]~7\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[3]~6\ ))
-- \cordic_0|argMPiO2_uid14_sincosTest_o[4]~11\ = SHARE(\cordic_0|Add1~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|ALT_INV_Add1~9_sumout\,
	cin => \cordic_0|argMPiO2_uid14_sincosTest_o[3]~6\,
	sharein => \cordic_0|argMPiO2_uid14_sincosTest_o[3]~7\,
	sumout => \cordic_0|argMPiO2_uid14_sincosTest_o[4]~9_sumout\,
	cout => \cordic_0|argMPiO2_uid14_sincosTest_o[4]~10\,
	shareout => \cordic_0|argMPiO2_uid14_sincosTest_o[4]~11\);

-- Location: MLABCELL_X34_Y4_N15
\cordic_0|argMPiO2_uid14_sincosTest_o[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|argMPiO2_uid14_sincosTest_o[5]~13_sumout\ = SUM(( !\cordic_0|Add1~13_sumout\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[4]~11\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[4]~10\ ))
-- \cordic_0|argMPiO2_uid14_sincosTest_o[5]~14\ = CARRY(( !\cordic_0|Add1~13_sumout\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[4]~11\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[4]~10\ ))
-- \cordic_0|argMPiO2_uid14_sincosTest_o[5]~15\ = SHARE(\cordic_0|Add1~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|ALT_INV_Add1~13_sumout\,
	cin => \cordic_0|argMPiO2_uid14_sincosTest_o[4]~10\,
	sharein => \cordic_0|argMPiO2_uid14_sincosTest_o[4]~11\,
	sumout => \cordic_0|argMPiO2_uid14_sincosTest_o[5]~13_sumout\,
	cout => \cordic_0|argMPiO2_uid14_sincosTest_o[5]~14\,
	shareout => \cordic_0|argMPiO2_uid14_sincosTest_o[5]~15\);

-- Location: MLABCELL_X34_Y4_N18
\cordic_0|argMPiO2_uid14_sincosTest_o[6]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|argMPiO2_uid14_sincosTest_o[6]~17_sumout\ = SUM(( \cordic_0|Add1~17_sumout\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[5]~15\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[5]~14\ ))
-- \cordic_0|argMPiO2_uid14_sincosTest_o[6]~18\ = CARRY(( \cordic_0|Add1~17_sumout\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[5]~15\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[5]~14\ ))
-- \cordic_0|argMPiO2_uid14_sincosTest_o[6]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|ALT_INV_Add1~17_sumout\,
	cin => \cordic_0|argMPiO2_uid14_sincosTest_o[5]~14\,
	sharein => \cordic_0|argMPiO2_uid14_sincosTest_o[5]~15\,
	sumout => \cordic_0|argMPiO2_uid14_sincosTest_o[6]~17_sumout\,
	cout => \cordic_0|argMPiO2_uid14_sincosTest_o[6]~18\,
	shareout => \cordic_0|argMPiO2_uid14_sincosTest_o[6]~19\);

-- Location: MLABCELL_X34_Y4_N21
\cordic_0|argMPiO2_uid14_sincosTest_o[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|argMPiO2_uid14_sincosTest_o[7]~21_sumout\ = SUM(( \cordic_0|Add1~21_sumout\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[6]~19\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[6]~18\ ))
-- \cordic_0|argMPiO2_uid14_sincosTest_o[7]~22\ = CARRY(( \cordic_0|Add1~21_sumout\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[6]~19\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[6]~18\ ))
-- \cordic_0|argMPiO2_uid14_sincosTest_o[7]~23\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add1~21_sumout\,
	cin => \cordic_0|argMPiO2_uid14_sincosTest_o[6]~18\,
	sharein => \cordic_0|argMPiO2_uid14_sincosTest_o[6]~19\,
	sumout => \cordic_0|argMPiO2_uid14_sincosTest_o[7]~21_sumout\,
	cout => \cordic_0|argMPiO2_uid14_sincosTest_o[7]~22\,
	shareout => \cordic_0|argMPiO2_uid14_sincosTest_o[7]~23\);

-- Location: MLABCELL_X34_Y4_N24
\cordic_0|Add2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add2~2_cout\ = CARRY(( !\cordic_0|Add1~25_sumout\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[7]~23\ ) + ( \cordic_0|argMPiO2_uid14_sincosTest_o[7]~22\ ))
-- \cordic_0|Add2~3\ = SHARE(\cordic_0|Add1~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|ALT_INV_Add1~25_sumout\,
	cin => \cordic_0|argMPiO2_uid14_sincosTest_o[7]~22\,
	sharein => \cordic_0|argMPiO2_uid14_sincosTest_o[7]~23\,
	cout => \cordic_0|Add2~2_cout\,
	shareout => \cordic_0|Add2~3\);

-- Location: MLABCELL_X34_Y4_N27
\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ = SUM(( VCC ) + ( \cordic_0|Add2~3\ ) + ( \cordic_0|Add2~2_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \cordic_0|Add2~2_cout\,
	sharein => \cordic_0|Add2~3\,
	sumout => \cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\);

-- Location: LABCELL_X37_Y4_N57
\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[1][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[1][0]~feeder_combout\ = ( \cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\,
	combout => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[1][0]~feeder_combout\);

-- Location: IOIBUF_X36_Y0_N1
\areset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_areset,
	o => \areset~input_o\);

-- Location: FF_X37_Y4_N58
\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[1][0]~feeder_combout\,
	clrn => \ALT_INV_areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[1][0]~q\);

-- Location: LABCELL_X37_Y4_N48
\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~feeder_combout\ = ( \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[1][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[1][0]~q\,
	combout => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~feeder_combout\);

-- Location: FF_X37_Y4_N50
\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~feeder_combout\,
	clrn => \ALT_INV_areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\);

-- Location: LABCELL_X35_Y4_N0
\cordic_0|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add4~29_sumout\ = SUM(( VCC ) + ( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((\cordic_0|argMPiO2_uid14_sincosTest_o[1]~25_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & (\cordic_0|Add1~29_sumout\)) ) + 
-- ( !VCC ))
-- \cordic_0|Add4~30\ = CARRY(( VCC ) + ( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((\cordic_0|argMPiO2_uid14_sincosTest_o[1]~25_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & (\cordic_0|Add1~29_sumout\)) ) + ( 
-- !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\,
	datab => \cordic_0|ALT_INV_Add1~29_sumout\,
	dataf => \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[1]~25_sumout\,
	cin => GND,
	sumout => \cordic_0|Add4~29_sumout\,
	cout => \cordic_0|Add4~30\);

-- Location: LABCELL_X35_Y4_N3
\cordic_0|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add4~1_sumout\ = SUM(( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((\cordic_0|argMPiO2_uid14_sincosTest_o[2]~1_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & (\cordic_0|Add1~1_sumout\)) ) + ( GND ) + ( 
-- \cordic_0|Add4~30\ ))
-- \cordic_0|Add4~2\ = CARRY(( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((\cordic_0|argMPiO2_uid14_sincosTest_o[2]~1_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & (\cordic_0|Add1~1_sumout\)) ) + ( GND ) + ( 
-- \cordic_0|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\,
	datac => \cordic_0|ALT_INV_Add1~1_sumout\,
	datad => \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[2]~1_sumout\,
	cin => \cordic_0|Add4~30\,
	sumout => \cordic_0|Add4~1_sumout\,
	cout => \cordic_0|Add4~2\);

-- Location: LABCELL_X35_Y4_N6
\cordic_0|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add4~5_sumout\ = SUM(( VCC ) + ( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((\cordic_0|argMPiO2_uid14_sincosTest_o[3]~5_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & (\cordic_0|Add1~5_sumout\)) ) + ( 
-- \cordic_0|Add4~2\ ))
-- \cordic_0|Add4~6\ = CARRY(( VCC ) + ( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((\cordic_0|argMPiO2_uid14_sincosTest_o[3]~5_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & (\cordic_0|Add1~5_sumout\)) ) + ( 
-- \cordic_0|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\,
	datac => \cordic_0|ALT_INV_Add1~5_sumout\,
	dataf => \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[3]~5_sumout\,
	cin => \cordic_0|Add4~2\,
	sumout => \cordic_0|Add4~5_sumout\,
	cout => \cordic_0|Add4~6\);

-- Location: LABCELL_X35_Y4_N9
\cordic_0|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add4~9_sumout\ = SUM(( VCC ) + ( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((\cordic_0|argMPiO2_uid14_sincosTest_o[4]~9_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & (\cordic_0|Add1~9_sumout\)) ) + ( 
-- \cordic_0|Add4~6\ ))
-- \cordic_0|Add4~10\ = CARRY(( VCC ) + ( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((\cordic_0|argMPiO2_uid14_sincosTest_o[4]~9_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & (\cordic_0|Add1~9_sumout\)) ) + ( 
-- \cordic_0|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\,
	datac => \cordic_0|ALT_INV_Add1~9_sumout\,
	dataf => \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[4]~9_sumout\,
	cin => \cordic_0|Add4~6\,
	sumout => \cordic_0|Add4~9_sumout\,
	cout => \cordic_0|Add4~10\);

-- Location: LABCELL_X35_Y4_N12
\cordic_0|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add4~13_sumout\ = SUM(( GND ) + ( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((\cordic_0|argMPiO2_uid14_sincosTest_o[5]~13_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & (\cordic_0|Add1~13_sumout\)) ) + 
-- ( \cordic_0|Add4~10\ ))
-- \cordic_0|Add4~14\ = CARRY(( GND ) + ( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((\cordic_0|argMPiO2_uid14_sincosTest_o[5]~13_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & (\cordic_0|Add1~13_sumout\)) ) + ( 
-- \cordic_0|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\,
	datac => \cordic_0|ALT_INV_Add1~13_sumout\,
	dataf => \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[5]~13_sumout\,
	cin => \cordic_0|Add4~10\,
	sumout => \cordic_0|Add4~13_sumout\,
	cout => \cordic_0|Add4~14\);

-- Location: LABCELL_X35_Y4_N15
\cordic_0|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add4~17_sumout\ = SUM(( GND ) + ( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((\cordic_0|argMPiO2_uid14_sincosTest_o[6]~17_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & (\cordic_0|Add1~17_sumout\)) ) + 
-- ( \cordic_0|Add4~14\ ))
-- \cordic_0|Add4~18\ = CARRY(( GND ) + ( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((\cordic_0|argMPiO2_uid14_sincosTest_o[6]~17_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & (\cordic_0|Add1~17_sumout\)) ) + ( 
-- \cordic_0|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\,
	datac => \cordic_0|ALT_INV_Add1~17_sumout\,
	dataf => \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[6]~17_sumout\,
	cin => \cordic_0|Add4~14\,
	sumout => \cordic_0|Add4~17_sumout\,
	cout => \cordic_0|Add4~18\);

-- Location: LABCELL_X35_Y4_N18
\cordic_0|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add4~21_sumout\ = SUM(( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((\cordic_0|argMPiO2_uid14_sincosTest_o[7]~21_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & (\cordic_0|Add1~21_sumout\)) ) + ( VCC ) + 
-- ( \cordic_0|Add4~18\ ))
-- \cordic_0|Add4~22\ = CARRY(( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((\cordic_0|argMPiO2_uid14_sincosTest_o[7]~21_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & (\cordic_0|Add1~21_sumout\)) ) + ( VCC ) + ( 
-- \cordic_0|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\,
	datac => \cordic_0|ALT_INV_Add1~21_sumout\,
	datad => \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[7]~21_sumout\,
	cin => \cordic_0|Add4~18\,
	sumout => \cordic_0|Add4~21_sumout\,
	cout => \cordic_0|Add4~22\);

-- Location: LABCELL_X36_Y5_N0
\cordic_0|Add6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add6~30_cout\ = CARRY(( VCC ) + ( !VCC ) + ( !VCC ))
-- \cordic_0|Add6~31\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => GND,
	sharein => GND,
	cout => \cordic_0|Add6~30_cout\,
	shareout => \cordic_0|Add6~31\);

-- Location: LABCELL_X36_Y5_N3
\cordic_0|Add6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add6~26_cout\ = CARRY(( \cordic_0|Add4~29_sumout\ ) + ( \cordic_0|Add6~31\ ) + ( \cordic_0|Add6~30_cout\ ))
-- \cordic_0|Add6~27\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|ALT_INV_Add4~29_sumout\,
	cin => \cordic_0|Add6~30_cout\,
	sharein => \cordic_0|Add6~31\,
	cout => \cordic_0|Add6~26_cout\,
	shareout => \cordic_0|Add6~27\);

-- Location: LABCELL_X36_Y5_N6
\cordic_0|Add6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add6~22_cout\ = CARRY(( !\cordic_0|Add4~1_sumout\ ) + ( \cordic_0|Add6~27\ ) + ( \cordic_0|Add6~26_cout\ ))
-- \cordic_0|Add6~23\ = SHARE(\cordic_0|Add4~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|ALT_INV_Add4~1_sumout\,
	cin => \cordic_0|Add6~26_cout\,
	sharein => \cordic_0|Add6~27\,
	cout => \cordic_0|Add6~22_cout\,
	shareout => \cordic_0|Add6~23\);

-- Location: LABCELL_X36_Y5_N9
\cordic_0|Add6~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add6~18_cout\ = CARRY(( \cordic_0|Add4~5_sumout\ ) + ( \cordic_0|Add6~23\ ) + ( \cordic_0|Add6~22_cout\ ))
-- \cordic_0|Add6~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~5_sumout\,
	cin => \cordic_0|Add6~22_cout\,
	sharein => \cordic_0|Add6~23\,
	cout => \cordic_0|Add6~18_cout\,
	shareout => \cordic_0|Add6~19\);

-- Location: LABCELL_X36_Y5_N12
\cordic_0|Add6~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add6~14_cout\ = CARRY(( \cordic_0|Add4~9_sumout\ ) + ( \cordic_0|Add6~19\ ) + ( \cordic_0|Add6~18_cout\ ))
-- \cordic_0|Add6~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|ALT_INV_Add4~9_sumout\,
	cin => \cordic_0|Add6~18_cout\,
	sharein => \cordic_0|Add6~19\,
	cout => \cordic_0|Add6~14_cout\,
	shareout => \cordic_0|Add6~15\);

-- Location: LABCELL_X36_Y5_N15
\cordic_0|Add6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add6~10_cout\ = CARRY(( \cordic_0|Add4~13_sumout\ ) + ( \cordic_0|Add6~15\ ) + ( \cordic_0|Add6~14_cout\ ))
-- \cordic_0|Add6~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|ALT_INV_Add4~13_sumout\,
	cin => \cordic_0|Add6~14_cout\,
	sharein => \cordic_0|Add6~15\,
	cout => \cordic_0|Add6~10_cout\,
	shareout => \cordic_0|Add6~11\);

-- Location: LABCELL_X36_Y5_N18
\cordic_0|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add6~5_sumout\ = SUM(( !\cordic_0|Add4~17_sumout\ ) + ( \cordic_0|Add6~11\ ) + ( \cordic_0|Add6~10_cout\ ))
-- \cordic_0|Add6~6\ = CARRY(( !\cordic_0|Add4~17_sumout\ ) + ( \cordic_0|Add6~11\ ) + ( \cordic_0|Add6~10_cout\ ))
-- \cordic_0|Add6~7\ = SHARE(\cordic_0|Add4~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|ALT_INV_Add4~17_sumout\,
	cin => \cordic_0|Add6~10_cout\,
	sharein => \cordic_0|Add6~11\,
	sumout => \cordic_0|Add6~5_sumout\,
	cout => \cordic_0|Add6~6\,
	shareout => \cordic_0|Add6~7\);

-- Location: LABCELL_X36_Y5_N21
\cordic_0|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add6~1_sumout\ = SUM(( !\cordic_0|Add4~21_sumout\ ) + ( \cordic_0|Add6~7\ ) + ( \cordic_0|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~21_sumout\,
	cin => \cordic_0|Add6~6\,
	sharein => \cordic_0|Add6~7\,
	sumout => \cordic_0|Add6~1_sumout\);

-- Location: LABCELL_X35_Y4_N21
\cordic_0|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add4~25_sumout\ = SUM(( VCC ) + ( GND ) + ( \cordic_0|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \cordic_0|Add4~22\,
	sumout => \cordic_0|Add4~25_sumout\);

-- Location: LABCELL_X36_Y4_N48
\cordic_0|Add5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add5~2_combout\ = ( \cordic_0|Add4~9_sumout\ ) # ( !\cordic_0|Add4~9_sumout\ & ( ((\cordic_0|Add4~13_sumout\) # (\cordic_0|Add4~1_sumout\)) # (\cordic_0|Add4~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~5_sumout\,
	datab => \cordic_0|ALT_INV_Add4~1_sumout\,
	datac => \cordic_0|ALT_INV_Add4~13_sumout\,
	dataf => \cordic_0|ALT_INV_Add4~9_sumout\,
	combout => \cordic_0|Add5~2_combout\);

-- Location: LABCELL_X36_Y4_N57
\cordic_0|absA_uid18_sincosTest_q[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|absA_uid18_sincosTest_q[4]~0_combout\ = ( \cordic_0|argMPiO2_uid14_sincosTest_o[5]~13_sumout\ & ( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\) # (\cordic_0|Add1~13_sumout\) ) ) # ( 
-- !\cordic_0|argMPiO2_uid14_sincosTest_o[5]~13_sumout\ & ( (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & \cordic_0|Add1~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\,
	datac => \cordic_0|ALT_INV_Add1~13_sumout\,
	dataf => \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[5]~13_sumout\,
	combout => \cordic_0|absA_uid18_sincosTest_q[4]~0_combout\);

-- Location: LABCELL_X36_Y4_N39
\cordic_0|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add5~1_combout\ = ( \cordic_0|Add4~9_sumout\ & ( !\cordic_0|Add4~13_sumout\ ) ) # ( !\cordic_0|Add4~9_sumout\ & ( !\cordic_0|Add4~13_sumout\ $ (((!\cordic_0|Add4~5_sumout\ & !\cordic_0|Add4~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~5_sumout\,
	datac => \cordic_0|ALT_INV_Add4~1_sumout\,
	datad => \cordic_0|ALT_INV_Add4~13_sumout\,
	dataf => \cordic_0|ALT_INV_Add4~9_sumout\,
	combout => \cordic_0|Add5~1_combout\);

-- Location: LABCELL_X36_Y4_N51
\cordic_0|Add5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add5~3_combout\ = (\cordic_0|Add4~1_sumout\) # (\cordic_0|Add4~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~5_sumout\,
	datab => \cordic_0|ALT_INV_Add4~1_sumout\,
	combout => \cordic_0|Add5~3_combout\);

-- Location: LABCELL_X36_Y4_N42
\cordic_0|absA_uid18_sincosTest_q[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|absA_uid18_sincosTest_q[3]~1_combout\ = ( \cordic_0|argMPiO2_uid14_sincosTest_o[4]~9_sumout\ & ( (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\) # (\cordic_0|Add1~9_sumout\) ) ) # ( !\cordic_0|argMPiO2_uid14_sincosTest_o[4]~9_sumout\ 
-- & ( (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & \cordic_0|Add1~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\,
	datac => \cordic_0|ALT_INV_Add1~9_sumout\,
	dataf => \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[4]~9_sumout\,
	combout => \cordic_0|absA_uid18_sincosTest_q[3]~1_combout\);

-- Location: LABCELL_X36_Y4_N54
\cordic_0|absA_uid18_sincosTest_q[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|absA_uid18_sincosTest_q[2]~2_combout\ = ( \cordic_0|Add1~5_sumout\ & ( (\cordic_0|argMPiO2_uid14_sincosTest_o[3]~5_sumout\) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\) ) ) # ( !\cordic_0|Add1~5_sumout\ & ( 
-- (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & \cordic_0|argMPiO2_uid14_sincosTest_o[3]~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\,
	datac => \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[3]~5_sumout\,
	dataf => \cordic_0|ALT_INV_Add1~5_sumout\,
	combout => \cordic_0|absA_uid18_sincosTest_q[2]~2_combout\);

-- Location: LABCELL_X36_Y4_N45
\cordic_0|absA_uid18_sincosTest_q[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|absA_uid18_sincosTest_q[1]~3_combout\ = (!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((\cordic_0|argMPiO2_uid14_sincosTest_o[2]~1_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & (\cordic_0|Add1~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\,
	datac => \cordic_0|ALT_INV_Add1~1_sumout\,
	datad => \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[2]~1_sumout\,
	combout => \cordic_0|absA_uid18_sincosTest_q[1]~3_combout\);

-- Location: LABCELL_X35_Y4_N24
\cordic_0|Add8~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add8~42_cout\ = CARRY(( GND ) + ( GND ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \cordic_0|Add8~42_cout\);

-- Location: LABCELL_X35_Y4_N27
\cordic_0|Add8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add8~37_sumout\ = SUM(( !\cordic_0|Add4~25_sumout\ ) + ( VCC ) + ( \cordic_0|Add8~42_cout\ ))
-- \cordic_0|Add8~38\ = CARRY(( !\cordic_0|Add4~25_sumout\ ) + ( VCC ) + ( \cordic_0|Add8~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	cin => \cordic_0|Add8~42_cout\,
	sumout => \cordic_0|Add8~37_sumout\,
	cout => \cordic_0|Add8~38\);

-- Location: LABCELL_X35_Y4_N30
\cordic_0|Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add8~33_sumout\ = SUM(( \cordic_0|Add4~25_sumout\ ) + ( GND ) + ( \cordic_0|Add8~38\ ))
-- \cordic_0|Add8~34\ = CARRY(( \cordic_0|Add4~25_sumout\ ) + ( GND ) + ( \cordic_0|Add8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	cin => \cordic_0|Add8~38\,
	sumout => \cordic_0|Add8~33_sumout\,
	cout => \cordic_0|Add8~34\);

-- Location: LABCELL_X35_Y4_N33
\cordic_0|Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add8~29_sumout\ = SUM(( \cordic_0|Add4~25_sumout\ ) + ( VCC ) + ( \cordic_0|Add8~34\ ))
-- \cordic_0|Add8~30\ = CARRY(( \cordic_0|Add4~25_sumout\ ) + ( VCC ) + ( \cordic_0|Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	cin => \cordic_0|Add8~34\,
	sumout => \cordic_0|Add8~29_sumout\,
	cout => \cordic_0|Add8~30\);

-- Location: LABCELL_X35_Y4_N36
\cordic_0|Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add8~25_sumout\ = SUM(( GND ) + ( GND ) + ( \cordic_0|Add8~30\ ))
-- \cordic_0|Add8~26\ = CARRY(( GND ) + ( GND ) + ( \cordic_0|Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \cordic_0|Add8~30\,
	sumout => \cordic_0|Add8~25_sumout\,
	cout => \cordic_0|Add8~26\);

-- Location: LABCELL_X35_Y4_N39
\cordic_0|Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add8~21_sumout\ = SUM(( GND ) + ( !\cordic_0|Add4~25_sumout\ $ (((!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((!\cordic_0|argMPiO2_uid14_sincosTest_o[1]~25_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & 
-- (!\cordic_0|Add1~29_sumout\)))) ) + ( \cordic_0|Add8~26\ ))
-- \cordic_0|Add8~22\ = CARRY(( GND ) + ( !\cordic_0|Add4~25_sumout\ $ (((!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((!\cordic_0|argMPiO2_uid14_sincosTest_o[1]~25_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & 
-- (!\cordic_0|Add1~29_sumout\)))) ) + ( \cordic_0|Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010101100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	datab => \cordic_0|ALT_INV_Add1~29_sumout\,
	datac => \cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\,
	dataf => \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[1]~25_sumout\,
	cin => \cordic_0|Add8~26\,
	sumout => \cordic_0|Add8~21_sumout\,
	cout => \cordic_0|Add8~22\);

-- Location: LABCELL_X35_Y4_N42
\cordic_0|Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add8~17_sumout\ = SUM(( GND ) + ( (!\cordic_0|Add4~25_sumout\ & ((\cordic_0|absA_uid18_sincosTest_q[1]~3_combout\))) # (\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add4~1_sumout\)) ) + ( \cordic_0|Add8~22\ ))
-- \cordic_0|Add8~18\ = CARRY(( GND ) + ( (!\cordic_0|Add4~25_sumout\ & ((\cordic_0|absA_uid18_sincosTest_q[1]~3_combout\))) # (\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add4~1_sumout\)) ) + ( \cordic_0|Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|ALT_INV_Add4~1_sumout\,
	datac => \cordic_0|ALT_INV_Add4~25_sumout\,
	dataf => \cordic_0|ALT_INV_absA_uid18_sincosTest_q[1]~3_combout\,
	cin => \cordic_0|Add8~22\,
	sumout => \cordic_0|Add8~17_sumout\,
	cout => \cordic_0|Add8~18\);

-- Location: LABCELL_X35_Y4_N45
\cordic_0|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add8~13_sumout\ = SUM(( (!\cordic_0|Add4~25_sumout\ & (((\cordic_0|absA_uid18_sincosTest_q[2]~2_combout\)))) # (\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add4~1_sumout\ $ ((\cordic_0|Add4~5_sumout\)))) ) + ( GND ) + ( \cordic_0|Add8~18\ ))
-- \cordic_0|Add8~14\ = CARRY(( (!\cordic_0|Add4~25_sumout\ & (((\cordic_0|absA_uid18_sincosTest_q[2]~2_combout\)))) # (\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add4~1_sumout\ $ ((\cordic_0|Add4~5_sumout\)))) ) + ( GND ) + ( \cordic_0|Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100000111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	datab => \cordic_0|ALT_INV_Add4~1_sumout\,
	datac => \cordic_0|ALT_INV_Add4~5_sumout\,
	datad => \cordic_0|ALT_INV_absA_uid18_sincosTest_q[2]~2_combout\,
	cin => \cordic_0|Add8~18\,
	sumout => \cordic_0|Add8~13_sumout\,
	cout => \cordic_0|Add8~14\);

-- Location: LABCELL_X35_Y4_N48
\cordic_0|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add8~9_sumout\ = SUM(( (!\cordic_0|Add4~25_sumout\ & (((\cordic_0|absA_uid18_sincosTest_q[3]~1_combout\)))) # (\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add4~9_sumout\ $ ((\cordic_0|Add5~3_combout\)))) ) + ( GND ) + ( \cordic_0|Add8~14\ ))
-- \cordic_0|Add8~10\ = CARRY(( (!\cordic_0|Add4~25_sumout\ & (((\cordic_0|absA_uid18_sincosTest_q[3]~1_combout\)))) # (\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add4~9_sumout\ $ ((\cordic_0|Add5~3_combout\)))) ) + ( GND ) + ( \cordic_0|Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100000111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	datab => \cordic_0|ALT_INV_Add4~9_sumout\,
	datac => \cordic_0|ALT_INV_Add5~3_combout\,
	datad => \cordic_0|ALT_INV_absA_uid18_sincosTest_q[3]~1_combout\,
	cin => \cordic_0|Add8~14\,
	sumout => \cordic_0|Add8~9_sumout\,
	cout => \cordic_0|Add8~10\);

-- Location: LABCELL_X35_Y4_N51
\cordic_0|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add8~1_sumout\ = SUM(( VCC ) + ( (!\cordic_0|Add4~25_sumout\ & (!\cordic_0|absA_uid18_sincosTest_q[4]~0_combout\)) # (\cordic_0|Add4~25_sumout\ & ((!\cordic_0|Add5~1_combout\))) ) + ( \cordic_0|Add8~10\ ))
-- \cordic_0|Add8~2\ = CARRY(( VCC ) + ( (!\cordic_0|Add4~25_sumout\ & (!\cordic_0|absA_uid18_sincosTest_q[4]~0_combout\)) # (\cordic_0|Add4~25_sumout\ & ((!\cordic_0|Add5~1_combout\))) ) + ( \cordic_0|Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100101111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	datac => \cordic_0|ALT_INV_absA_uid18_sincosTest_q[4]~0_combout\,
	dataf => \cordic_0|ALT_INV_Add5~1_combout\,
	cin => \cordic_0|Add8~10\,
	sumout => \cordic_0|Add8~1_sumout\,
	cout => \cordic_0|Add8~2\);

-- Location: LABCELL_X35_Y4_N54
\cordic_0|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add8~5_sumout\ = SUM(( (!\cordic_0|Add4~25_sumout\ & (((\cordic_0|Add6~5_sumout\)))) # (\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add4~17_sumout\ $ ((!\cordic_0|Add5~2_combout\)))) ) + ( VCC ) + ( \cordic_0|Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001010010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	datab => \cordic_0|ALT_INV_Add4~17_sumout\,
	datac => \cordic_0|ALT_INV_Add5~2_combout\,
	datad => \cordic_0|ALT_INV_Add6~5_sumout\,
	cin => \cordic_0|Add8~2\,
	sumout => \cordic_0|Add8~5_sumout\);

-- Location: LABCELL_X36_Y4_N0
\cordic_0|Add7~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add7~41_sumout\ = SUM(( \cordic_0|Add4~25_sumout\ ) + ( VCC ) + ( !VCC ))
-- \cordic_0|Add7~42\ = CARRY(( \cordic_0|Add4~25_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	cin => GND,
	sumout => \cordic_0|Add7~41_sumout\,
	cout => \cordic_0|Add7~42\);

-- Location: LABCELL_X36_Y4_N3
\cordic_0|Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add7~37_sumout\ = SUM(( !\cordic_0|Add4~25_sumout\ ) + ( GND ) + ( \cordic_0|Add7~42\ ))
-- \cordic_0|Add7~38\ = CARRY(( !\cordic_0|Add4~25_sumout\ ) + ( GND ) + ( \cordic_0|Add7~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	cin => \cordic_0|Add7~42\,
	sumout => \cordic_0|Add7~37_sumout\,
	cout => \cordic_0|Add7~38\);

-- Location: LABCELL_X36_Y4_N6
\cordic_0|Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add7~33_sumout\ = SUM(( \cordic_0|Add4~25_sumout\ ) + ( VCC ) + ( \cordic_0|Add7~38\ ))
-- \cordic_0|Add7~34\ = CARRY(( \cordic_0|Add4~25_sumout\ ) + ( VCC ) + ( \cordic_0|Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	cin => \cordic_0|Add7~38\,
	sumout => \cordic_0|Add7~33_sumout\,
	cout => \cordic_0|Add7~34\);

-- Location: LABCELL_X36_Y4_N9
\cordic_0|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add7~29_sumout\ = SUM(( \cordic_0|Add4~25_sumout\ ) + ( GND ) + ( \cordic_0|Add7~34\ ))
-- \cordic_0|Add7~30\ = CARRY(( \cordic_0|Add4~25_sumout\ ) + ( GND ) + ( \cordic_0|Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	cin => \cordic_0|Add7~34\,
	sumout => \cordic_0|Add7~29_sumout\,
	cout => \cordic_0|Add7~30\);

-- Location: LABCELL_X36_Y4_N12
\cordic_0|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add7~25_sumout\ = SUM(( VCC ) + ( GND ) + ( \cordic_0|Add7~30\ ))
-- \cordic_0|Add7~26\ = CARRY(( VCC ) + ( GND ) + ( \cordic_0|Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \cordic_0|Add7~30\,
	sumout => \cordic_0|Add7~25_sumout\,
	cout => \cordic_0|Add7~26\);

-- Location: LABCELL_X36_Y4_N15
\cordic_0|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add7~21_sumout\ = SUM(( VCC ) + ( !\cordic_0|Add4~25_sumout\ $ (((!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((!\cordic_0|argMPiO2_uid14_sincosTest_o[1]~25_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & 
-- (!\cordic_0|Add1~29_sumout\)))) ) + ( \cordic_0|Add7~26\ ))
-- \cordic_0|Add7~22\ = CARRY(( VCC ) + ( !\cordic_0|Add4~25_sumout\ $ (((!\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & ((!\cordic_0|argMPiO2_uid14_sincosTest_o[1]~25_sumout\))) # (\cordic_0|firstQuadrant_uid15_sincosTest_b[0]~1_sumout\ & 
-- (!\cordic_0|Add1~29_sumout\)))) ) + ( \cordic_0|Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010010101100100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	datab => \cordic_0|ALT_INV_Add1~29_sumout\,
	datac => \cordic_0|ALT_INV_firstQuadrant_uid15_sincosTest_b[0]~1_sumout\,
	dataf => \cordic_0|ALT_INV_argMPiO2_uid14_sincosTest_o[1]~25_sumout\,
	cin => \cordic_0|Add7~26\,
	sumout => \cordic_0|Add7~21_sumout\,
	cout => \cordic_0|Add7~22\);

-- Location: LABCELL_X36_Y4_N18
\cordic_0|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add7~17_sumout\ = SUM(( (!\cordic_0|Add4~25_sumout\ & ((\cordic_0|absA_uid18_sincosTest_q[1]~3_combout\))) # (\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add4~1_sumout\)) ) + ( VCC ) + ( \cordic_0|Add7~22\ ))
-- \cordic_0|Add7~18\ = CARRY(( (!\cordic_0|Add4~25_sumout\ & ((\cordic_0|absA_uid18_sincosTest_q[1]~3_combout\))) # (\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add4~1_sumout\)) ) + ( VCC ) + ( \cordic_0|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100010011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	datab => \cordic_0|ALT_INV_Add4~1_sumout\,
	datad => \cordic_0|ALT_INV_absA_uid18_sincosTest_q[1]~3_combout\,
	cin => \cordic_0|Add7~22\,
	sumout => \cordic_0|Add7~17_sumout\,
	cout => \cordic_0|Add7~18\);

-- Location: LABCELL_X36_Y4_N21
\cordic_0|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add7~13_sumout\ = SUM(( (!\cordic_0|Add4~25_sumout\ & (((\cordic_0|absA_uid18_sincosTest_q[2]~2_combout\)))) # (\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add4~1_sumout\ $ ((\cordic_0|Add4~5_sumout\)))) ) + ( VCC ) + ( \cordic_0|Add7~18\ ))
-- \cordic_0|Add7~14\ = CARRY(( (!\cordic_0|Add4~25_sumout\ & (((\cordic_0|absA_uid18_sincosTest_q[2]~2_combout\)))) # (\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add4~1_sumout\ $ ((\cordic_0|Add4~5_sumout\)))) ) + ( VCC ) + ( \cordic_0|Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	datab => \cordic_0|ALT_INV_Add4~1_sumout\,
	datac => \cordic_0|ALT_INV_Add4~5_sumout\,
	datad => \cordic_0|ALT_INV_absA_uid18_sincosTest_q[2]~2_combout\,
	cin => \cordic_0|Add7~18\,
	sumout => \cordic_0|Add7~13_sumout\,
	cout => \cordic_0|Add7~14\);

-- Location: LABCELL_X36_Y4_N24
\cordic_0|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add7~9_sumout\ = SUM(( VCC ) + ( (!\cordic_0|Add4~25_sumout\ & (((\cordic_0|absA_uid18_sincosTest_q[3]~1_combout\)))) # (\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add4~9_sumout\ $ ((\cordic_0|Add5~3_combout\)))) ) + ( \cordic_0|Add7~14\ ))
-- \cordic_0|Add7~10\ = CARRY(( VCC ) + ( (!\cordic_0|Add4~25_sumout\ & (((\cordic_0|absA_uid18_sincosTest_q[3]~1_combout\)))) # (\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add4~9_sumout\ $ ((\cordic_0|Add5~3_combout\)))) ) + ( \cordic_0|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111100001010000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	datab => \cordic_0|ALT_INV_Add4~9_sumout\,
	datac => \cordic_0|ALT_INV_Add5~3_combout\,
	dataf => \cordic_0|ALT_INV_absA_uid18_sincosTest_q[3]~1_combout\,
	cin => \cordic_0|Add7~14\,
	sumout => \cordic_0|Add7~9_sumout\,
	cout => \cordic_0|Add7~10\);

-- Location: LABCELL_X36_Y4_N27
\cordic_0|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add7~1_sumout\ = SUM(( GND ) + ( (!\cordic_0|Add4~25_sumout\ & (!\cordic_0|absA_uid18_sincosTest_q[4]~0_combout\)) # (\cordic_0|Add4~25_sumout\ & ((!\cordic_0|Add5~1_combout\))) ) + ( \cordic_0|Add7~10\ ))
-- \cordic_0|Add7~2\ = CARRY(( GND ) + ( (!\cordic_0|Add4~25_sumout\ & (!\cordic_0|absA_uid18_sincosTest_q[4]~0_combout\)) # (\cordic_0|Add4~25_sumout\ & ((!\cordic_0|Add5~1_combout\))) ) + ( \cordic_0|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	datac => \cordic_0|ALT_INV_absA_uid18_sincosTest_q[4]~0_combout\,
	dataf => \cordic_0|ALT_INV_Add5~1_combout\,
	cin => \cordic_0|Add7~10\,
	sumout => \cordic_0|Add7~1_sumout\,
	cout => \cordic_0|Add7~2\);

-- Location: LABCELL_X36_Y4_N30
\cordic_0|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add7~5_sumout\ = SUM(( GND ) + ( (!\cordic_0|Add4~25_sumout\ & (((\cordic_0|Add6~5_sumout\)))) # (\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add4~17_sumout\ $ ((!\cordic_0|Add5~2_combout\)))) ) + ( \cordic_0|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010110100000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~25_sumout\,
	datab => \cordic_0|ALT_INV_Add4~17_sumout\,
	datac => \cordic_0|ALT_INV_Add5~2_combout\,
	dataf => \cordic_0|ALT_INV_Add6~5_sumout\,
	cin => \cordic_0|Add7~2\,
	sumout => \cordic_0|Add7~5_sumout\);

-- Location: LABCELL_X36_Y4_N36
\cordic_0|Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add5~0_combout\ = ( \cordic_0|Add4~17_sumout\ & ( (((\cordic_0|Add4~13_sumout\) # (\cordic_0|Add4~1_sumout\)) # (\cordic_0|Add4~9_sumout\)) # (\cordic_0|Add4~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add4~5_sumout\,
	datab => \cordic_0|ALT_INV_Add4~9_sumout\,
	datac => \cordic_0|ALT_INV_Add4~1_sumout\,
	datad => \cordic_0|ALT_INV_Add4~13_sumout\,
	dataf => \cordic_0|ALT_INV_Add4~17_sumout\,
	combout => \cordic_0|Add5~0_combout\);

-- Location: MLABCELL_X34_Y7_N48
\cordic_0|aip1E_4_uid92_sincosTest_a[11]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|aip1E_4_uid92_sincosTest_a[11]~0_combout\ = ( \cordic_0|Add7~5_sumout\ & ( \cordic_0|Add5~0_combout\ & ( ((!\cordic_0|Add4~25_sumout\ & (\cordic_0|Add6~1_sumout\)) # (\cordic_0|Add4~25_sumout\ & ((!\cordic_0|Add4~21_sumout\)))) # 
-- (\cordic_0|Add8~5_sumout\) ) ) ) # ( !\cordic_0|Add7~5_sumout\ & ( \cordic_0|Add5~0_combout\ & ( (\cordic_0|Add8~5_sumout\ & ((!\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add6~1_sumout\)) # (\cordic_0|Add4~25_sumout\ & ((\cordic_0|Add4~21_sumout\))))) ) ) ) 
-- # ( \cordic_0|Add7~5_sumout\ & ( !\cordic_0|Add5~0_combout\ & ( ((!\cordic_0|Add4~25_sumout\ & (\cordic_0|Add6~1_sumout\)) # (\cordic_0|Add4~25_sumout\ & ((\cordic_0|Add4~21_sumout\)))) # (\cordic_0|Add8~5_sumout\) ) ) ) # ( !\cordic_0|Add7~5_sumout\ & ( 
-- !\cordic_0|Add5~0_combout\ & ( (\cordic_0|Add8~5_sumout\ & ((!\cordic_0|Add4~25_sumout\ & (!\cordic_0|Add6~1_sumout\)) # (\cordic_0|Add4~25_sumout\ & ((!\cordic_0|Add4~21_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101100010100111111111100000000101000110101110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add6~1_sumout\,
	datab => \cordic_0|ALT_INV_Add4~21_sumout\,
	datac => \cordic_0|ALT_INV_Add4~25_sumout\,
	datad => \cordic_0|ALT_INV_Add8~5_sumout\,
	datae => \cordic_0|ALT_INV_Add7~5_sumout\,
	dataf => \cordic_0|ALT_INV_Add5~0_combout\,
	combout => \cordic_0|aip1E_4_uid92_sincosTest_a[11]~0_combout\);

-- Location: FF_X34_Y7_N50
\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cordic_0|aip1E_4_uid92_sincosTest_a[11]~0_combout\,
	clrn => \ALT_INV_areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\);

-- Location: MLABCELL_X34_Y7_N27
\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ = ( \cordic_0|Add6~1_sumout\ & ( \cordic_0|Add4~25_sumout\ & ( !\cordic_0|Add5~0_combout\ $ (!\cordic_0|Add4~21_sumout\) ) ) ) # ( !\cordic_0|Add6~1_sumout\ & ( \cordic_0|Add4~25_sumout\ & ( 
-- !\cordic_0|Add5~0_combout\ $ (!\cordic_0|Add4~21_sumout\) ) ) ) # ( \cordic_0|Add6~1_sumout\ & ( !\cordic_0|Add4~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|ALT_INV_Add5~0_combout\,
	datac => \cordic_0|ALT_INV_Add4~21_sumout\,
	datae => \cordic_0|ALT_INV_Add6~1_sumout\,
	dataf => \cordic_0|ALT_INV_Add4~25_sumout\,
	combout => \cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\);

-- Location: FF_X36_Y7_N5
\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\,
	clrn => \ALT_INV_areset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\);

-- Location: FF_X36_Y7_N2
\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cordic_0|Add4~25_sumout\,
	clrn => \ALT_INV_areset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\);

-- Location: LABCELL_X37_Y7_N0
\cordic_0|Add21~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add21~57_sumout\ = SUM(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- !VCC ))
-- \cordic_0|Add21~58\ = CARRY(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => GND,
	sumout => \cordic_0|Add21~57_sumout\,
	cout => \cordic_0|Add21~58\);

-- Location: LABCELL_X37_Y7_N3
\cordic_0|Add21~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add21~53_sumout\ = SUM(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add21~58\ ))
-- \cordic_0|Add21~54\ = CARRY(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add21~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add21~58\,
	sumout => \cordic_0|Add21~53_sumout\,
	cout => \cordic_0|Add21~54\);

-- Location: LABCELL_X37_Y7_N6
\cordic_0|Add21~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add21~49_sumout\ = SUM(( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ $ (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add21~54\ ))
-- \cordic_0|Add21~50\ = CARRY(( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ $ (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add21~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add21~54\,
	sumout => \cordic_0|Add21~49_sumout\,
	cout => \cordic_0|Add21~50\);

-- Location: LABCELL_X37_Y7_N9
\cordic_0|Add21~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add21~45_sumout\ = SUM(( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add21~50\ ))
-- \cordic_0|Add21~46\ = CARRY(( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add21~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add21~50\,
	sumout => \cordic_0|Add21~45_sumout\,
	cout => \cordic_0|Add21~46\);

-- Location: LABCELL_X37_Y7_N12
\cordic_0|Add21~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add21~41_sumout\ = SUM(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add21~46\ ))
-- \cordic_0|Add21~42\ = CARRY(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add21~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add21~46\,
	sumout => \cordic_0|Add21~41_sumout\,
	cout => \cordic_0|Add21~42\);

-- Location: LABCELL_X37_Y7_N15
\cordic_0|Add21~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add21~37_sumout\ = SUM(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add21~42\ ))
-- \cordic_0|Add21~38\ = CARRY(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add21~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add21~42\,
	sumout => \cordic_0|Add21~37_sumout\,
	cout => \cordic_0|Add21~38\);

-- Location: LABCELL_X37_Y7_N18
\cordic_0|Add21~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add21~33_sumout\ = SUM(( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add21~38\ ))
-- \cordic_0|Add21~34\ = CARRY(( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add21~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add21~38\,
	sumout => \cordic_0|Add21~33_sumout\,
	cout => \cordic_0|Add21~34\);

-- Location: LABCELL_X37_Y7_N21
\cordic_0|Add21~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add21~29_sumout\ = SUM(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add21~34\ ))
-- \cordic_0|Add21~30\ = CARRY(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add21~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000000000000001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add21~34\,
	sumout => \cordic_0|Add21~29_sumout\,
	cout => \cordic_0|Add21~30\);

-- Location: LABCELL_X37_Y7_N24
\cordic_0|Add21~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add21~25_sumout\ = SUM(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( 
-- \cordic_0|Add21~30\ ))
-- \cordic_0|Add21~26\ = CARRY(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( 
-- \cordic_0|Add21~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add21~30\,
	sumout => \cordic_0|Add21~25_sumout\,
	cout => \cordic_0|Add21~26\);

-- Location: LABCELL_X37_Y7_N27
\cordic_0|Add21~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add21~21_sumout\ = SUM(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add21~26\ ))
-- \cordic_0|Add21~22\ = CARRY(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add21~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add21~26\,
	sumout => \cordic_0|Add21~21_sumout\,
	cout => \cordic_0|Add21~22\);

-- Location: LABCELL_X37_Y7_N30
\cordic_0|Add21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add21~1_sumout\ = SUM(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # 
-- (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add21~22\ ))
-- \cordic_0|Add21~2\ = CARRY(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # 
-- (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add21~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000001110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add21~22\,
	sumout => \cordic_0|Add21~1_sumout\,
	cout => \cordic_0|Add21~2\);

-- Location: LABCELL_X37_Y7_N33
\cordic_0|Add21~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add21~5_sumout\ = SUM(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( GND ) + ( \cordic_0|Add21~2\ ))
-- \cordic_0|Add21~6\ = CARRY(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( GND ) + ( \cordic_0|Add21~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add21~2\,
	sumout => \cordic_0|Add21~5_sumout\,
	cout => \cordic_0|Add21~6\);

-- Location: LABCELL_X36_Y7_N6
\cordic_0|Add22~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~66_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \cordic_0|Add22~66_cout\);

-- Location: LABCELL_X36_Y7_N9
\cordic_0|Add22~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~61_sumout\ = SUM(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + 
-- ( \cordic_0|Add22~66_cout\ ))
-- \cordic_0|Add22~62\ = CARRY(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add22~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add22~66_cout\,
	sumout => \cordic_0|Add22~61_sumout\,
	cout => \cordic_0|Add22~62\);

-- Location: LABCELL_X36_Y7_N12
\cordic_0|Add22~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~57_sumout\ = SUM(( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add22~62\ ))
-- \cordic_0|Add22~58\ = CARRY(( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add22~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add22~62\,
	sumout => \cordic_0|Add22~57_sumout\,
	cout => \cordic_0|Add22~58\);

-- Location: LABCELL_X36_Y7_N15
\cordic_0|Add22~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~53_sumout\ = SUM(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ $ (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add22~58\ ))
-- \cordic_0|Add22~54\ = CARRY(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ $ (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add22~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add22~58\,
	sumout => \cordic_0|Add22~53_sumout\,
	cout => \cordic_0|Add22~54\);

-- Location: LABCELL_X36_Y7_N18
\cordic_0|Add22~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~49_sumout\ = SUM(( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add22~54\ ))
-- \cordic_0|Add22~50\ = CARRY(( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add22~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add22~54\,
	sumout => \cordic_0|Add22~49_sumout\,
	cout => \cordic_0|Add22~50\);

-- Location: LABCELL_X36_Y7_N21
\cordic_0|Add22~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~45_sumout\ = SUM(( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + 
-- ( \cordic_0|Add22~50\ ))
-- \cordic_0|Add22~46\ = CARRY(( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add22~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add22~50\,
	sumout => \cordic_0|Add22~45_sumout\,
	cout => \cordic_0|Add22~46\);

-- Location: LABCELL_X36_Y7_N24
\cordic_0|Add22~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~41_sumout\ = SUM(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add22~46\ ))
-- \cordic_0|Add22~42\ = CARRY(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add22~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add22~46\,
	sumout => \cordic_0|Add22~41_sumout\,
	cout => \cordic_0|Add22~42\);

-- Location: LABCELL_X36_Y7_N27
\cordic_0|Add22~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~37_sumout\ = SUM(( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add22~42\ ))
-- \cordic_0|Add22~38\ = CARRY(( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add22~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add22~42\,
	sumout => \cordic_0|Add22~37_sumout\,
	cout => \cordic_0|Add22~38\);

-- Location: LABCELL_X36_Y7_N30
\cordic_0|Add22~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~33_sumout\ = SUM(( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add22~38\ ))
-- \cordic_0|Add22~34\ = CARRY(( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add22~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111100000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add22~38\,
	sumout => \cordic_0|Add22~33_sumout\,
	cout => \cordic_0|Add22~34\);

-- Location: LABCELL_X36_Y7_N33
\cordic_0|Add22~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~29_sumout\ = SUM(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( 
-- \cordic_0|Add22~34\ ))
-- \cordic_0|Add22~30\ = CARRY(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( 
-- \cordic_0|Add22~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add22~34\,
	sumout => \cordic_0|Add22~29_sumout\,
	cout => \cordic_0|Add22~30\);

-- Location: LABCELL_X36_Y7_N36
\cordic_0|Add22~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~25_sumout\ = SUM(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add22~30\ ))
-- \cordic_0|Add22~26\ = CARRY(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add22~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add22~30\,
	sumout => \cordic_0|Add22~25_sumout\,
	cout => \cordic_0|Add22~26\);

-- Location: LABCELL_X36_Y7_N39
\cordic_0|Add22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~1_sumout\ = SUM(( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # 
-- (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add22~26\ ))
-- \cordic_0|Add22~2\ = CARRY(( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # 
-- (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add22~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add22~26\,
	sumout => \cordic_0|Add22~1_sumout\,
	cout => \cordic_0|Add22~2\);

-- Location: LABCELL_X36_Y7_N42
\cordic_0|Add22~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~5_sumout\ = SUM(( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( VCC ) + ( \cordic_0|Add22~2\ ))
-- \cordic_0|Add22~6\ = CARRY(( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( VCC ) + ( \cordic_0|Add22~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add22~2\,
	sumout => \cordic_0|Add22~5_sumout\,
	cout => \cordic_0|Add22~6\);

-- Location: LABCELL_X35_Y7_N0
\cordic_0|Add24~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~66_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \cordic_0|Add24~66_cout\);

-- Location: LABCELL_X35_Y7_N3
\cordic_0|Add24~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~61_sumout\ = SUM(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add24~66_cout\ ))
-- \cordic_0|Add24~62\ = CARRY(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add24~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add24~66_cout\,
	sumout => \cordic_0|Add24~61_sumout\,
	cout => \cordic_0|Add24~62\);

-- Location: LABCELL_X35_Y7_N6
\cordic_0|Add24~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~57_sumout\ = SUM(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add24~62\ ))
-- \cordic_0|Add24~58\ = CARRY(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add24~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add24~62\,
	sumout => \cordic_0|Add24~57_sumout\,
	cout => \cordic_0|Add24~58\);

-- Location: LABCELL_X35_Y7_N9
\cordic_0|Add24~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~53_sumout\ = SUM(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ $ (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add24~58\ ))
-- \cordic_0|Add24~54\ = CARRY(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ $ (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add24~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add24~58\,
	sumout => \cordic_0|Add24~53_sumout\,
	cout => \cordic_0|Add24~54\);

-- Location: LABCELL_X35_Y7_N12
\cordic_0|Add24~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~49_sumout\ = SUM(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add24~54\ ))
-- \cordic_0|Add24~50\ = CARRY(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add24~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add24~54\,
	sumout => \cordic_0|Add24~49_sumout\,
	cout => \cordic_0|Add24~50\);

-- Location: LABCELL_X35_Y7_N15
\cordic_0|Add24~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~45_sumout\ = SUM(( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add24~50\ ))
-- \cordic_0|Add24~46\ = CARRY(( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add24~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add24~50\,
	sumout => \cordic_0|Add24~45_sumout\,
	cout => \cordic_0|Add24~46\);

-- Location: LABCELL_X35_Y7_N18
\cordic_0|Add24~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~41_sumout\ = SUM(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add24~46\ ))
-- \cordic_0|Add24~42\ = CARRY(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add24~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add24~46\,
	sumout => \cordic_0|Add24~41_sumout\,
	cout => \cordic_0|Add24~42\);

-- Location: LABCELL_X35_Y7_N21
\cordic_0|Add24~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~37_sumout\ = SUM(( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add24~42\ ))
-- \cordic_0|Add24~38\ = CARRY(( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add24~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add24~42\,
	sumout => \cordic_0|Add24~37_sumout\,
	cout => \cordic_0|Add24~38\);

-- Location: LABCELL_X35_Y7_N24
\cordic_0|Add24~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~33_sumout\ = SUM(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add24~38\ ))
-- \cordic_0|Add24~34\ = CARRY(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add24~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add24~38\,
	sumout => \cordic_0|Add24~33_sumout\,
	cout => \cordic_0|Add24~34\);

-- Location: LABCELL_X35_Y7_N27
\cordic_0|Add24~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~29_sumout\ = SUM(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + 
-- ( \cordic_0|Add24~34\ ))
-- \cordic_0|Add24~30\ = CARRY(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( 
-- \cordic_0|Add24~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add24~34\,
	sumout => \cordic_0|Add24~29_sumout\,
	cout => \cordic_0|Add24~30\);

-- Location: LABCELL_X35_Y7_N30
\cordic_0|Add24~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~25_sumout\ = SUM(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add24~30\ ))
-- \cordic_0|Add24~26\ = CARRY(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add24~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add24~30\,
	sumout => \cordic_0|Add24~25_sumout\,
	cout => \cordic_0|Add24~26\);

-- Location: LABCELL_X35_Y7_N33
\cordic_0|Add24~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~9_sumout\ = SUM(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add24~26\ ))
-- \cordic_0|Add24~10\ = CARRY(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add24~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111100000000000000001010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add24~26\,
	sumout => \cordic_0|Add24~9_sumout\,
	cout => \cordic_0|Add24~10\);

-- Location: LABCELL_X35_Y7_N36
\cordic_0|Add24~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~13_sumout\ = SUM(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( VCC ) + ( \cordic_0|Add24~10\ ))
-- \cordic_0|Add24~14\ = CARRY(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( VCC ) + ( \cordic_0|Add24~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add24~10\,
	sumout => \cordic_0|Add24~13_sumout\,
	cout => \cordic_0|Add24~14\);

-- Location: LABCELL_X35_Y7_N39
\cordic_0|Add24~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~17_sumout\ = SUM(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( VCC ) + ( \cordic_0|Add24~14\ ))
-- \cordic_0|Add24~18\ = CARRY(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( VCC ) + ( \cordic_0|Add24~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add24~14\,
	sumout => \cordic_0|Add24~17_sumout\,
	cout => \cordic_0|Add24~18\);

-- Location: LABCELL_X35_Y7_N42
\cordic_0|Add24~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~21_sumout\ = SUM(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( VCC ) + ( \cordic_0|Add24~18\ ))
-- \cordic_0|Add24~22\ = CARRY(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( VCC ) + ( \cordic_0|Add24~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add24~18\,
	sumout => \cordic_0|Add24~21_sumout\,
	cout => \cordic_0|Add24~22\);

-- Location: LABCELL_X35_Y7_N45
\cordic_0|Add24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \cordic_0|Add24~22\ ))
-- \cordic_0|Add24~2\ = CARRY(( VCC ) + ( GND ) + ( \cordic_0|Add24~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \cordic_0|Add24~22\,
	sumout => \cordic_0|Add24~1_sumout\,
	cout => \cordic_0|Add24~2\);

-- Location: LABCELL_X35_Y7_N48
\cordic_0|Add24~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add24~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \cordic_0|Add24~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \cordic_0|Add24~2\,
	sumout => \cordic_0|Add24~5_sumout\);

-- Location: LABCELL_X35_Y6_N0
\cordic_0|Add23~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add23~57_sumout\ = SUM(( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- !VCC ))
-- \cordic_0|Add23~58\ = CARRY(( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( !VCC 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => GND,
	sumout => \cordic_0|Add23~57_sumout\,
	cout => \cordic_0|Add23~58\);

-- Location: LABCELL_X35_Y6_N3
\cordic_0|Add23~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add23~53_sumout\ = SUM(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add23~58\ ))
-- \cordic_0|Add23~54\ = CARRY(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add23~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add23~58\,
	sumout => \cordic_0|Add23~53_sumout\,
	cout => \cordic_0|Add23~54\);

-- Location: LABCELL_X35_Y6_N6
\cordic_0|Add23~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add23~49_sumout\ = SUM(( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ $ (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add23~54\ ))
-- \cordic_0|Add23~50\ = CARRY(( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ $ (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add23~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add23~54\,
	sumout => \cordic_0|Add23~49_sumout\,
	cout => \cordic_0|Add23~50\);

-- Location: LABCELL_X35_Y6_N9
\cordic_0|Add23~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add23~45_sumout\ = SUM(( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add23~50\ ))
-- \cordic_0|Add23~46\ = CARRY(( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add23~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add23~50\,
	sumout => \cordic_0|Add23~45_sumout\,
	cout => \cordic_0|Add23~46\);

-- Location: LABCELL_X35_Y6_N12
\cordic_0|Add23~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add23~41_sumout\ = SUM(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add23~46\ ))
-- \cordic_0|Add23~42\ = CARRY(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add23~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add23~46\,
	sumout => \cordic_0|Add23~41_sumout\,
	cout => \cordic_0|Add23~42\);

-- Location: LABCELL_X35_Y6_N15
\cordic_0|Add23~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add23~37_sumout\ = SUM(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add23~42\ ))
-- \cordic_0|Add23~38\ = CARRY(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add23~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add23~42\,
	sumout => \cordic_0|Add23~37_sumout\,
	cout => \cordic_0|Add23~38\);

-- Location: LABCELL_X35_Y6_N18
\cordic_0|Add23~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add23~33_sumout\ = SUM(( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add23~38\ ))
-- \cordic_0|Add23~34\ = CARRY(( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add23~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add23~38\,
	sumout => \cordic_0|Add23~33_sumout\,
	cout => \cordic_0|Add23~34\);

-- Location: LABCELL_X35_Y6_N21
\cordic_0|Add23~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add23~29_sumout\ = SUM(( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add23~34\ ))
-- \cordic_0|Add23~30\ = CARRY(( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add23~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000001010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add23~34\,
	sumout => \cordic_0|Add23~29_sumout\,
	cout => \cordic_0|Add23~30\);

-- Location: LABCELL_X35_Y6_N24
\cordic_0|Add23~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add23~25_sumout\ = SUM(( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add23~30\ ))
-- \cordic_0|Add23~26\ = CARRY(( (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( 
-- \cordic_0|Add23~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add23~30\,
	sumout => \cordic_0|Add23~25_sumout\,
	cout => \cordic_0|Add23~26\);

-- Location: LABCELL_X35_Y6_N27
\cordic_0|Add23~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add23~21_sumout\ = SUM(( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add23~26\ ))
-- \cordic_0|Add23~22\ = CARRY(( !\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( \cordic_0|Add23~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add23~26\,
	sumout => \cordic_0|Add23~21_sumout\,
	cout => \cordic_0|Add23~22\);

-- Location: LABCELL_X35_Y6_N30
\cordic_0|Add23~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add23~5_sumout\ = SUM(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # 
-- (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add23~22\ ))
-- \cordic_0|Add23~6\ = CARRY(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # 
-- (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add23~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000001010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add23~22\,
	sumout => \cordic_0|Add23~5_sumout\,
	cout => \cordic_0|Add23~6\);

-- Location: LABCELL_X35_Y6_N33
\cordic_0|Add23~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add23~9_sumout\ = SUM(( GND ) + ( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add23~6\ ))
-- \cordic_0|Add23~10\ = CARRY(( GND ) + ( (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\ & !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add23~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add23~6\,
	sumout => \cordic_0|Add23~9_sumout\,
	cout => \cordic_0|Add23~10\);

-- Location: LABCELL_X35_Y6_N36
\cordic_0|Add23~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add23~13_sumout\ = SUM(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( GND ) + ( \cordic_0|Add23~10\ ))
-- \cordic_0|Add23~14\ = CARRY(( !\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( GND ) + ( \cordic_0|Add23~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add23~10\,
	sumout => \cordic_0|Add23~13_sumout\,
	cout => \cordic_0|Add23~14\);

-- Location: LABCELL_X35_Y6_N39
\cordic_0|Add23~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add23~17_sumout\ = SUM(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( GND ) + ( \cordic_0|Add23~14\ ))
-- \cordic_0|Add23~18\ = CARRY(( (!\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( GND ) + ( \cordic_0|Add23~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add23~14\,
	sumout => \cordic_0|Add23~17_sumout\,
	cout => \cordic_0|Add23~18\);

-- Location: LABCELL_X35_Y6_N42
\cordic_0|Add23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add23~1_sumout\ = SUM(( GND ) + ( GND ) + ( \cordic_0|Add23~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \cordic_0|Add23~18\,
	sumout => \cordic_0|Add23~1_sumout\);

-- Location: LABCELL_X37_Y7_N48
\cordic_0|xip1E_5_uid105_sincosTest_a[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_5_uid105_sincosTest_a[8]~2_combout\ = ( \cordic_0|Add21~25_sumout\ & ( (\cordic_0|Add22~29_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) ) # ( !\cordic_0|Add21~25_sumout\ & ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|ALT_INV_Add22~29_sumout\,
	dataf => \cordic_0|ALT_INV_Add21~25_sumout\,
	combout => \cordic_0|xip1E_5_uid105_sincosTest_a[8]~2_combout\);

-- Location: MLABCELL_X34_Y6_N27
\cordic_0|xip1E_5_uid105_sincosTest_a[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_5_uid105_sincosTest_a[6]~6_combout\ = ( \cordic_0|Add22~37_sumout\ & ( \cordic_0|Add21~33_sumout\ ) ) # ( !\cordic_0|Add22~37_sumout\ & ( \cordic_0|Add21~33_sumout\ & ( \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) 
-- ) # ( \cordic_0|Add22~37_sumout\ & ( !\cordic_0|Add21~33_sumout\ & ( !\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datae => \cordic_0|ALT_INV_Add22~37_sumout\,
	dataf => \cordic_0|ALT_INV_Add21~33_sumout\,
	combout => \cordic_0|xip1E_5_uid105_sincosTest_a[6]~6_combout\);

-- Location: LABCELL_X35_Y6_N57
\cordic_0|xip1E_5_uid105_sincosTest_a[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_5_uid105_sincosTest_a[4]~9_combout\ = ( \cordic_0|Add22~45_sumout\ & ( \cordic_0|Add21~41_sumout\ ) ) # ( !\cordic_0|Add22~45_sumout\ & ( \cordic_0|Add21~41_sumout\ & ( \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) 
-- ) # ( \cordic_0|Add22~45_sumout\ & ( !\cordic_0|Add21~41_sumout\ & ( !\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datae => \cordic_0|ALT_INV_Add22~45_sumout\,
	dataf => \cordic_0|ALT_INV_Add21~41_sumout\,
	combout => \cordic_0|xip1E_5_uid105_sincosTest_a[4]~9_combout\);

-- Location: MLABCELL_X34_Y6_N0
\cordic_0|xip1E_4_uid89_sincosTest_o[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_4_uid89_sincosTest_o[2]~1_combout\ = ( \cordic_0|Add21~49_sumout\ & ( \cordic_0|Add22~53_sumout\ ) ) # ( !\cordic_0|Add21~49_sumout\ & ( \cordic_0|Add22~53_sumout\ & ( !\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) 
-- ) # ( \cordic_0|Add21~49_sumout\ & ( !\cordic_0|Add22~53_sumout\ & ( \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datae => \cordic_0|ALT_INV_Add21~49_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~53_sumout\,
	combout => \cordic_0|xip1E_4_uid89_sincosTest_o[2]~1_combout\);

-- Location: MLABCELL_X34_Y6_N6
\cordic_0|xip1E_4_uid89_sincosTest_o[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_4_uid89_sincosTest_o[0]~3_combout\ = ( \cordic_0|Add21~57_sumout\ & ( \cordic_0|Add22~61_sumout\ ) ) # ( !\cordic_0|Add21~57_sumout\ & ( \cordic_0|Add22~61_sumout\ & ( !\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) 
-- ) # ( \cordic_0|Add21~57_sumout\ & ( !\cordic_0|Add22~61_sumout\ & ( \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datae => \cordic_0|ALT_INV_Add21~57_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~61_sumout\,
	combout => \cordic_0|xip1E_4_uid89_sincosTest_o[0]~3_combout\);

-- Location: MLABCELL_X34_Y6_N30
\cordic_0|Add30~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~62_cout\ = CARRY(( \cordic_0|xip1E_4_uid89_sincosTest_o[0]~3_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~41_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~45_sumout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~45_sumout\,
	datad => \cordic_0|ALT_INV_xip1E_4_uid89_sincosTest_o[0]~3_combout\,
	dataf => \cordic_0|ALT_INV_Add23~41_sumout\,
	cin => GND,
	cout => \cordic_0|Add30~62_cout\);

-- Location: MLABCELL_X34_Y6_N33
\cordic_0|Add30~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~58_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~57_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~53_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~37_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~41_sumout\)) ) + ( \cordic_0|Add30~62_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add21~53_sumout\,
	datac => \cordic_0|ALT_INV_Add24~41_sumout\,
	datad => \cordic_0|ALT_INV_Add22~57_sumout\,
	dataf => \cordic_0|ALT_INV_Add23~37_sumout\,
	cin => \cordic_0|Add30~62_cout\,
	cout => \cordic_0|Add30~58_cout\);

-- Location: MLABCELL_X34_Y6_N36
\cordic_0|Add30~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~54_cout\ = CARRY(( \cordic_0|xip1E_4_uid89_sincosTest_o[2]~1_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~33_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~37_sumout\)) ) + ( \cordic_0|Add30~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~37_sumout\,
	datad => \cordic_0|ALT_INV_xip1E_4_uid89_sincosTest_o[2]~1_combout\,
	dataf => \cordic_0|ALT_INV_Add23~33_sumout\,
	cin => \cordic_0|Add30~58_cout\,
	cout => \cordic_0|Add30~54_cout\);

-- Location: MLABCELL_X34_Y6_N39
\cordic_0|Add30~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~50_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~49_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~45_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~29_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~33_sumout\)) ) + ( \cordic_0|Add30~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add24~33_sumout\,
	datac => \cordic_0|ALT_INV_Add21~45_sumout\,
	datad => \cordic_0|ALT_INV_Add22~49_sumout\,
	dataf => \cordic_0|ALT_INV_Add23~29_sumout\,
	cin => \cordic_0|Add30~54_cout\,
	cout => \cordic_0|Add30~50_cout\);

-- Location: MLABCELL_X34_Y6_N42
\cordic_0|Add30~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~46_cout\ = CARRY(( \cordic_0|xip1E_5_uid105_sincosTest_a[4]~9_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~25_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~29_sumout\)) ) + ( \cordic_0|Add30~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~29_sumout\,
	datad => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[4]~9_combout\,
	dataf => \cordic_0|ALT_INV_Add23~25_sumout\,
	cin => \cordic_0|Add30~50_cout\,
	cout => \cordic_0|Add30~46_cout\);

-- Location: MLABCELL_X34_Y6_N45
\cordic_0|Add30~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~42_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~21_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~25_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~41_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~37_sumout\)) ) + ( \cordic_0|Add30~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add21~37_sumout\,
	datac => \cordic_0|ALT_INV_Add24~25_sumout\,
	datad => \cordic_0|ALT_INV_Add23~21_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~41_sumout\,
	cin => \cordic_0|Add30~46_cout\,
	cout => \cordic_0|Add30~42_cout\);

-- Location: MLABCELL_X34_Y6_N48
\cordic_0|Add30~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~38_cout\ = CARRY(( \cordic_0|xip1E_5_uid105_sincosTest_a[6]~6_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~5_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~9_sumout\)) ) + ( \cordic_0|Add30~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~9_sumout\,
	datad => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[6]~6_combout\,
	dataf => \cordic_0|ALT_INV_Add23~5_sumout\,
	cin => \cordic_0|Add30~42_cout\,
	cout => \cordic_0|Add30~38_cout\);

-- Location: MLABCELL_X34_Y6_N51
\cordic_0|Add30~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~34_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~9_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~13_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~33_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~29_sumout\)) ) + ( \cordic_0|Add30~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add21~29_sumout\,
	datac => \cordic_0|ALT_INV_Add24~13_sumout\,
	datad => \cordic_0|ALT_INV_Add23~9_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~33_sumout\,
	cin => \cordic_0|Add30~38_cout\,
	cout => \cordic_0|Add30~34_cout\);

-- Location: MLABCELL_X34_Y6_N54
\cordic_0|Add30~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~30_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~13_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~17_sumout\)) ) + ( 
-- \cordic_0|xip1E_5_uid105_sincosTest_a[8]~2_combout\ ) + ( \cordic_0|Add30~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~17_sumout\,
	datad => \cordic_0|ALT_INV_Add23~13_sumout\,
	dataf => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[8]~2_combout\,
	cin => \cordic_0|Add30~34_cout\,
	cout => \cordic_0|Add30~30_cout\);

-- Location: MLABCELL_X34_Y6_N57
\cordic_0|Add30~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~26_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~17_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~21_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~25_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~21_sumout\)) ) + ( \cordic_0|Add30~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add21~21_sumout\,
	datac => \cordic_0|ALT_INV_Add24~21_sumout\,
	datad => \cordic_0|ALT_INV_Add23~17_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~25_sumout\,
	cin => \cordic_0|Add30~30_cout\,
	cout => \cordic_0|Add30~26_cout\);

-- Location: MLABCELL_X34_Y5_N0
\cordic_0|Add30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~1_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~1_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~1_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~1_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~1_sumout\)) ) + ( \cordic_0|Add30~26_cout\ ))
-- \cordic_0|Add30~2\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~1_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~1_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~1_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~1_sumout\)) ) + ( \cordic_0|Add30~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add24~1_sumout\,
	datac => \cordic_0|ALT_INV_Add21~1_sumout\,
	datad => \cordic_0|ALT_INV_Add23~1_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~1_sumout\,
	cin => \cordic_0|Add30~26_cout\,
	sumout => \cordic_0|Add30~1_sumout\,
	cout => \cordic_0|Add30~2\);

-- Location: MLABCELL_X34_Y5_N3
\cordic_0|Add30~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~5_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~5_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~5_sumout\)) ) + ( 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add24~5_sumout\) ) + ( \cordic_0|Add30~2\ ))
-- \cordic_0|Add30~6\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~5_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~5_sumout\)) ) + ( 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add24~5_sumout\) ) + ( \cordic_0|Add30~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add21~5_sumout\,
	datad => \cordic_0|ALT_INV_Add22~5_sumout\,
	dataf => \cordic_0|ALT_INV_Add24~5_sumout\,
	cin => \cordic_0|Add30~2\,
	sumout => \cordic_0|Add30~5_sumout\,
	cout => \cordic_0|Add30~6\);

-- Location: MLABCELL_X34_Y7_N6
\cordic_0|aip1E_3_uid76_sincosTest_o[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|aip1E_3_uid76_sincosTest_o[1]~0_combout\ = ( \cordic_0|Add7~41_sumout\ & ( \cordic_0|Add4~21_sumout\ & ( (\cordic_0|Add4~25_sumout\) # (\cordic_0|Add6~1_sumout\) ) ) ) # ( !\cordic_0|Add7~41_sumout\ & ( \cordic_0|Add4~21_sumout\ & ( 
-- (\cordic_0|Add5~0_combout\ & \cordic_0|Add4~25_sumout\) ) ) ) # ( \cordic_0|Add7~41_sumout\ & ( !\cordic_0|Add4~21_sumout\ & ( (\cordic_0|Add4~25_sumout\) # (\cordic_0|Add6~1_sumout\) ) ) ) # ( !\cordic_0|Add7~41_sumout\ & ( !\cordic_0|Add4~21_sumout\ & ( 
-- (!\cordic_0|Add5~0_combout\ & \cordic_0|Add4~25_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010111110101111100000011000000110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add6~1_sumout\,
	datab => \cordic_0|ALT_INV_Add5~0_combout\,
	datac => \cordic_0|ALT_INV_Add4~25_sumout\,
	datae => \cordic_0|ALT_INV_Add7~41_sumout\,
	dataf => \cordic_0|ALT_INV_Add4~21_sumout\,
	combout => \cordic_0|aip1E_3_uid76_sincosTest_o[1]~0_combout\);

-- Location: LABCELL_X37_Y4_N0
\cordic_0|Add9~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add9~42_cout\ = CARRY(( VCC ) + ( (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((!\cordic_0|Add8~5_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (!\cordic_0|Add7~5_sumout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011101110100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add7~5_sumout\,
	datab => \cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_a[12]~0_combout\,
	dataf => \cordic_0|ALT_INV_Add8~5_sumout\,
	cin => GND,
	cout => \cordic_0|Add9~42_cout\);

-- Location: LABCELL_X37_Y4_N3
\cordic_0|Add9~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add9~38_cout\ = CARRY(( ((!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~5_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~5_sumout\))) # 
-- (\cordic_0|aip1E_3_uid76_sincosTest_o[1]~0_combout\) ) + ( ((!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((!\cordic_0|Add8~5_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (!\cordic_0|Add7~5_sumout\))) # 
-- (\cordic_0|aip1E_3_uid76_sincosTest_o[1]~0_combout\) ) + ( \cordic_0|Add9~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111010000000000000000000000000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add7~5_sumout\,
	datab => \cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_a[12]~0_combout\,
	datac => \cordic_0|ALT_INV_Add8~5_sumout\,
	datad => \cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_o[1]~0_combout\,
	dataf => \cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_o[1]~0_combout\,
	cin => \cordic_0|Add9~42_cout\,
	cout => \cordic_0|Add9~38_cout\);

-- Location: LABCELL_X37_Y4_N6
\cordic_0|Add9~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add9~34_cout\ = CARRY(( (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~37_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~37_sumout\)) ) + ( 
-- (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~5_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~5_sumout\)) ) + ( \cordic_0|Add9~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add7~5_sumout\,
	datab => \cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_a[12]~0_combout\,
	datac => \cordic_0|ALT_INV_Add7~37_sumout\,
	datad => \cordic_0|ALT_INV_Add8~37_sumout\,
	dataf => \cordic_0|ALT_INV_Add8~5_sumout\,
	cin => \cordic_0|Add9~38_cout\,
	cout => \cordic_0|Add9~34_cout\);

-- Location: LABCELL_X37_Y4_N9
\cordic_0|Add9~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add9~30_cout\ = CARRY(( (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~33_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~33_sumout\)) ) + ( 
-- (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~5_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~5_sumout\)) ) + ( \cordic_0|Add9~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add7~5_sumout\,
	datab => \cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_a[12]~0_combout\,
	datac => \cordic_0|ALT_INV_Add7~33_sumout\,
	datad => \cordic_0|ALT_INV_Add8~33_sumout\,
	dataf => \cordic_0|ALT_INV_Add8~5_sumout\,
	cin => \cordic_0|Add9~34_cout\,
	cout => \cordic_0|Add9~30_cout\);

-- Location: LABCELL_X37_Y4_N12
\cordic_0|Add9~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add9~26_cout\ = CARRY(( (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~5_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~5_sumout\)) ) + ( 
-- (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~29_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~29_sumout\)) ) + ( \cordic_0|Add9~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add7~5_sumout\,
	datab => \cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_a[12]~0_combout\,
	datac => \cordic_0|ALT_INV_Add7~29_sumout\,
	datad => \cordic_0|ALT_INV_Add8~5_sumout\,
	dataf => \cordic_0|ALT_INV_Add8~29_sumout\,
	cin => \cordic_0|Add9~30_cout\,
	cout => \cordic_0|Add9~26_cout\);

-- Location: LABCELL_X37_Y4_N15
\cordic_0|Add9~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add9~22_cout\ = CARRY(( (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~25_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~25_sumout\)) ) + ( 
-- (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~5_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~5_sumout\)) ) + ( \cordic_0|Add9~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add7~5_sumout\,
	datab => \cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_a[12]~0_combout\,
	datac => \cordic_0|ALT_INV_Add7~25_sumout\,
	datad => \cordic_0|ALT_INV_Add8~25_sumout\,
	dataf => \cordic_0|ALT_INV_Add8~5_sumout\,
	cin => \cordic_0|Add9~26_cout\,
	cout => \cordic_0|Add9~22_cout\);

-- Location: LABCELL_X37_Y4_N18
\cordic_0|Add9~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add9~18_cout\ = CARRY(( (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~21_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~21_sumout\)) ) + ( 
-- (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~5_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~5_sumout\)) ) + ( \cordic_0|Add9~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add7~5_sumout\,
	datab => \cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_a[12]~0_combout\,
	datac => \cordic_0|ALT_INV_Add7~21_sumout\,
	datad => \cordic_0|ALT_INV_Add8~21_sumout\,
	dataf => \cordic_0|ALT_INV_Add8~5_sumout\,
	cin => \cordic_0|Add9~22_cout\,
	cout => \cordic_0|Add9~18_cout\);

-- Location: LABCELL_X37_Y4_N21
\cordic_0|Add9~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add9~14_cout\ = CARRY(( (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~17_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~17_sumout\)) ) + ( 
-- (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~5_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~5_sumout\)) ) + ( \cordic_0|Add9~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add7~5_sumout\,
	datab => \cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_a[12]~0_combout\,
	datac => \cordic_0|ALT_INV_Add7~17_sumout\,
	datad => \cordic_0|ALT_INV_Add8~17_sumout\,
	dataf => \cordic_0|ALT_INV_Add8~5_sumout\,
	cin => \cordic_0|Add9~18_cout\,
	cout => \cordic_0|Add9~14_cout\);

-- Location: LABCELL_X37_Y4_N24
\cordic_0|Add9~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add9~10_cout\ = CARRY(( (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~13_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~13_sumout\)) ) + ( 
-- (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~5_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~5_sumout\)) ) + ( \cordic_0|Add9~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add7~5_sumout\,
	datab => \cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_a[12]~0_combout\,
	datac => \cordic_0|ALT_INV_Add7~13_sumout\,
	datad => \cordic_0|ALT_INV_Add8~13_sumout\,
	dataf => \cordic_0|ALT_INV_Add8~5_sumout\,
	cin => \cordic_0|Add9~14_cout\,
	cout => \cordic_0|Add9~10_cout\);

-- Location: LABCELL_X37_Y4_N27
\cordic_0|Add9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add9~6_cout\ = CARRY(( (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~9_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~9_sumout\)) ) + ( 
-- (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((!\cordic_0|Add8~5_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (!\cordic_0|Add7~5_sumout\)) ) + ( \cordic_0|Add9~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011101110100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add7~5_sumout\,
	datab => \cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_a[12]~0_combout\,
	datac => \cordic_0|ALT_INV_Add7~9_sumout\,
	datad => \cordic_0|ALT_INV_Add8~9_sumout\,
	dataf => \cordic_0|ALT_INV_Add8~5_sumout\,
	cin => \cordic_0|Add9~10_cout\,
	cout => \cordic_0|Add9~6_cout\);

-- Location: LABCELL_X37_Y4_N30
\cordic_0|Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add9~1_sumout\ = SUM(( (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((!\cordic_0|Add8~5_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (!\cordic_0|Add7~5_sumout\)) ) + ( 
-- (!\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & ((\cordic_0|Add8~1_sumout\))) # (\cordic_0|aip1E_3_uid76_sincosTest_a[12]~0_combout\ & (\cordic_0|Add7~1_sumout\)) ) + ( \cordic_0|Add9~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001110111000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add7~5_sumout\,
	datab => \cordic_0|ALT_INV_aip1E_3_uid76_sincosTest_a[12]~0_combout\,
	datac => \cordic_0|ALT_INV_Add7~1_sumout\,
	datad => \cordic_0|ALT_INV_Add8~5_sumout\,
	dataf => \cordic_0|ALT_INV_Add8~1_sumout\,
	cin => \cordic_0|Add9~6_cout\,
	sumout => \cordic_0|Add9~1_sumout\);

-- Location: FF_X37_Y4_N32
\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cordic_0|Add9~1_sumout\,
	clrn => \ALT_INV_areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\);

-- Location: LABCELL_X37_Y6_N9
\cordic_0|xip1E_5_uid105_sincosTest_a[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_5_uid105_sincosTest_a[9]~0_combout\ = ( \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ( \cordic_0|Add21~21_sumout\ ) ) # ( !\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ( 
-- \cordic_0|Add21~21_sumout\ & ( \cordic_0|Add22~25_sumout\ ) ) ) # ( !\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ( !\cordic_0|Add21~21_sumout\ & ( \cordic_0|Add22~25_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cordic_0|ALT_INV_Add22~25_sumout\,
	datae => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|ALT_INV_Add21~21_sumout\,
	combout => \cordic_0|xip1E_5_uid105_sincosTest_a[9]~0_combout\);

-- Location: MLABCELL_X34_Y7_N33
\cordic_0|xip1E_5_uid105_sincosTest_a[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_5_uid105_sincosTest_a[7]~4_combout\ = ( \cordic_0|Add22~33_sumout\ & ( \cordic_0|Add21~29_sumout\ ) ) # ( !\cordic_0|Add22~33_sumout\ & ( \cordic_0|Add21~29_sumout\ & ( \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) 
-- ) # ( \cordic_0|Add22~33_sumout\ & ( !\cordic_0|Add21~29_sumout\ & ( !\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datae => \cordic_0|ALT_INV_Add22~33_sumout\,
	dataf => \cordic_0|ALT_INV_Add21~29_sumout\,
	combout => \cordic_0|xip1E_5_uid105_sincosTest_a[7]~4_combout\);

-- Location: MLABCELL_X34_Y7_N42
\cordic_0|xip1E_5_uid105_sincosTest_a[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_5_uid105_sincosTest_a[5]~8_combout\ = ( \cordic_0|Add22~41_sumout\ & ( \cordic_0|Add21~37_sumout\ ) ) # ( !\cordic_0|Add22~41_sumout\ & ( \cordic_0|Add21~37_sumout\ & ( \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) 
-- ) # ( \cordic_0|Add22~41_sumout\ & ( !\cordic_0|Add21~37_sumout\ & ( !\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datae => \cordic_0|ALT_INV_Add22~41_sumout\,
	dataf => \cordic_0|ALT_INV_Add21~37_sumout\,
	combout => \cordic_0|xip1E_5_uid105_sincosTest_a[5]~8_combout\);

-- Location: LABCELL_X36_Y7_N0
\cordic_0|xip1E_4_uid89_sincosTest_o[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_4_uid89_sincosTest_o[3]~0_combout\ = ( \cordic_0|Add21~45_sumout\ & ( (\cordic_0|Add22~49_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) ) # ( !\cordic_0|Add21~45_sumout\ & ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~49_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add22~49_sumout\,
	dataf => \cordic_0|ALT_INV_Add21~45_sumout\,
	combout => \cordic_0|xip1E_4_uid89_sincosTest_o[3]~0_combout\);

-- Location: LABCELL_X36_Y7_N3
\cordic_0|xip1E_4_uid89_sincosTest_o[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_4_uid89_sincosTest_o[1]~2_combout\ = ( \cordic_0|Add21~53_sumout\ & ( (\cordic_0|Add22~57_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) ) # ( !\cordic_0|Add21~53_sumout\ & ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~57_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add22~57_sumout\,
	dataf => \cordic_0|ALT_INV_Add21~53_sumout\,
	combout => \cordic_0|xip1E_4_uid89_sincosTest_o[1]~2_combout\);

-- Location: LABCELL_X33_Y6_N24
\cordic_0|Add31~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~66_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \cordic_0|Add31~66_cout\);

-- Location: LABCELL_X33_Y6_N27
\cordic_0|Add31~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~62_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add23~41_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add24~45_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~61_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~57_sumout\)) ) + ( \cordic_0|Add31~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add21~57_sumout\,
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~45_sumout\,
	datad => \cordic_0|ALT_INV_Add23~41_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~61_sumout\,
	cin => \cordic_0|Add31~66_cout\,
	cout => \cordic_0|Add31~62_cout\);

-- Location: LABCELL_X33_Y6_N30
\cordic_0|Add31~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~58_cout\ = CARRY(( \cordic_0|xip1E_4_uid89_sincosTest_o[1]~2_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add23~37_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add24~41_sumout\)) ) + ( \cordic_0|Add31~62_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~41_sumout\,
	datad => \cordic_0|ALT_INV_xip1E_4_uid89_sincosTest_o[1]~2_combout\,
	dataf => \cordic_0|ALT_INV_Add23~37_sumout\,
	cin => \cordic_0|Add31~62_cout\,
	cout => \cordic_0|Add31~58_cout\);

-- Location: LABCELL_X33_Y6_N33
\cordic_0|Add31~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~54_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add23~33_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add24~37_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~53_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~49_sumout\)) ) + ( \cordic_0|Add31~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add21~49_sumout\,
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~37_sumout\,
	datad => \cordic_0|ALT_INV_Add23~33_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~53_sumout\,
	cin => \cordic_0|Add31~58_cout\,
	cout => \cordic_0|Add31~54_cout\);

-- Location: LABCELL_X33_Y6_N36
\cordic_0|Add31~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~50_cout\ = CARRY(( \cordic_0|xip1E_4_uid89_sincosTest_o[3]~0_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add23~29_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add24~33_sumout\)) ) + ( \cordic_0|Add31~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~33_sumout\,
	datad => \cordic_0|ALT_INV_xip1E_4_uid89_sincosTest_o[3]~0_combout\,
	dataf => \cordic_0|ALT_INV_Add23~29_sumout\,
	cin => \cordic_0|Add31~54_cout\,
	cout => \cordic_0|Add31~50_cout\);

-- Location: LABCELL_X33_Y6_N39
\cordic_0|Add31~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~46_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add23~25_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add24~29_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~45_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~41_sumout\)) ) + ( \cordic_0|Add31~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001110111000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add24~29_sumout\,
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add21~41_sumout\,
	datad => \cordic_0|ALT_INV_Add23~25_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~45_sumout\,
	cin => \cordic_0|Add31~50_cout\,
	cout => \cordic_0|Add31~46_cout\);

-- Location: LABCELL_X33_Y6_N42
\cordic_0|Add31~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~42_cout\ = CARRY(( \cordic_0|xip1E_5_uid105_sincosTest_a[5]~8_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add23~21_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add24~25_sumout\)) ) + ( \cordic_0|Add31~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~25_sumout\,
	datad => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[5]~8_combout\,
	dataf => \cordic_0|ALT_INV_Add23~21_sumout\,
	cin => \cordic_0|Add31~46_cout\,
	cout => \cordic_0|Add31~42_cout\);

-- Location: LABCELL_X33_Y6_N45
\cordic_0|Add31~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~38_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~37_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~33_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add23~5_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add24~9_sumout\)) ) + ( \cordic_0|Add31~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111100000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add21~33_sumout\,
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~9_sumout\,
	datad => \cordic_0|ALT_INV_Add22~37_sumout\,
	dataf => \cordic_0|ALT_INV_Add23~5_sumout\,
	cin => \cordic_0|Add31~42_cout\,
	cout => \cordic_0|Add31~38_cout\);

-- Location: LABCELL_X33_Y6_N48
\cordic_0|Add31~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~34_cout\ = CARRY(( \cordic_0|xip1E_5_uid105_sincosTest_a[7]~4_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add23~9_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add24~13_sumout\)) ) + ( \cordic_0|Add31~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~13_sumout\,
	datad => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[7]~4_combout\,
	dataf => \cordic_0|ALT_INV_Add23~9_sumout\,
	cin => \cordic_0|Add31~38_cout\,
	cout => \cordic_0|Add31~34_cout\);

-- Location: LABCELL_X33_Y6_N51
\cordic_0|Add31~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~30_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add23~13_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add24~17_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~29_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~25_sumout\)) ) + ( \cordic_0|Add31~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001110111000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add24~17_sumout\,
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add21~25_sumout\,
	datad => \cordic_0|ALT_INV_Add23~13_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~29_sumout\,
	cin => \cordic_0|Add31~34_cout\,
	cout => \cordic_0|Add31~30_cout\);

-- Location: LABCELL_X33_Y6_N54
\cordic_0|Add31~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~26_cout\ = CARRY(( \cordic_0|xip1E_5_uid105_sincosTest_a[9]~0_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add23~17_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add24~21_sumout\)) ) + ( \cordic_0|Add31~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~21_sumout\,
	datad => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[9]~0_combout\,
	dataf => \cordic_0|ALT_INV_Add23~17_sumout\,
	cin => \cordic_0|Add31~30_cout\,
	cout => \cordic_0|Add31~26_cout\);

-- Location: LABCELL_X33_Y6_N57
\cordic_0|Add31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~1_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~1_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~1_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add23~1_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add24~1_sumout\)) ) + ( \cordic_0|Add31~26_cout\ ))
-- \cordic_0|Add31~2\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~1_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~1_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add23~1_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add24~1_sumout\)) ) + ( \cordic_0|Add31~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111100000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add21~1_sumout\,
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~1_sumout\,
	datad => \cordic_0|ALT_INV_Add22~1_sumout\,
	dataf => \cordic_0|ALT_INV_Add23~1_sumout\,
	cin => \cordic_0|Add31~26_cout\,
	sumout => \cordic_0|Add31~1_sumout\,
	cout => \cordic_0|Add31~2\);

-- Location: LABCELL_X33_Y5_N0
\cordic_0|Add31~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~5_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|Add24~5_sumout\) ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~5_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~5_sumout\)) ) + ( \cordic_0|Add31~2\ ))
-- \cordic_0|Add31~6\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|Add24~5_sumout\) ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~5_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~5_sumout\)) ) + ( \cordic_0|Add31~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add21~5_sumout\,
	datad => \cordic_0|ALT_INV_Add24~5_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~5_sumout\,
	cin => \cordic_0|Add31~2\,
	sumout => \cordic_0|Add31~5_sumout\,
	cout => \cordic_0|Add31~6\);

-- Location: MLABCELL_X34_Y5_N45
\cordic_0|Add32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add32~0_combout\ = ( \cordic_0|Add31~1_sumout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (((!\cordic_0|Add31~5_sumout\)))) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- (!\cordic_0|Add30~5_sumout\ $ (((!\cordic_0|Add30~1_sumout\))))) ) ) # ( !\cordic_0|Add31~1_sumout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (((\cordic_0|Add31~5_sumout\)))) # 
-- (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add30~5_sumout\ $ (((!\cordic_0|Add30~1_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100101110000111010010111011010001111000101101000111100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add30~5_sumout\,
	datab => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add31~5_sumout\,
	datad => \cordic_0|ALT_INV_Add30~1_sumout\,
	dataf => \cordic_0|ALT_INV_Add31~1_sumout\,
	combout => \cordic_0|Add32~0_combout\);

-- Location: FF_X34_Y5_N47
\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cordic_0|Add32~0_combout\,
	clrn => \ALT_INV_areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q\);

-- Location: LABCELL_X36_Y7_N45
\cordic_0|Add22~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~17_sumout\ = SUM(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( VCC ) + ( \cordic_0|Add22~6\ ))
-- \cordic_0|Add22~18\ = CARRY(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( VCC ) + ( \cordic_0|Add22~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add22~6\,
	sumout => \cordic_0|Add22~17_sumout\,
	cout => \cordic_0|Add22~18\);

-- Location: LABCELL_X36_Y7_N48
\cordic_0|Add22~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~21_sumout\ = SUM(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( VCC ) + ( \cordic_0|Add22~18\ ))
-- \cordic_0|Add22~22\ = CARRY(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( VCC ) + ( \cordic_0|Add22~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add22~18\,
	sumout => \cordic_0|Add22~21_sumout\,
	cout => \cordic_0|Add22~22\);

-- Location: LABCELL_X36_Y7_N51
\cordic_0|Add22~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~9_sumout\ = SUM(( VCC ) + ( GND ) + ( \cordic_0|Add22~22\ ))
-- \cordic_0|Add22~10\ = CARRY(( VCC ) + ( GND ) + ( \cordic_0|Add22~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \cordic_0|Add22~22\,
	sumout => \cordic_0|Add22~9_sumout\,
	cout => \cordic_0|Add22~10\);

-- Location: LABCELL_X36_Y7_N54
\cordic_0|Add22~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add22~13_sumout\ = SUM(( VCC ) + ( GND ) + ( \cordic_0|Add22~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \cordic_0|Add22~10\,
	sumout => \cordic_0|Add22~13_sumout\);

-- Location: LABCELL_X37_Y7_N36
\cordic_0|Add21~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add21~13_sumout\ = SUM(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( GND ) + ( \cordic_0|Add21~6\ ))
-- \cordic_0|Add21~14\ = CARRY(( \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\ ) + ( GND ) + ( \cordic_0|Add21~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add21~6\,
	sumout => \cordic_0|Add21~13_sumout\,
	cout => \cordic_0|Add21~14\);

-- Location: LABCELL_X37_Y7_N39
\cordic_0|Add21~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add21~17_sumout\ = SUM(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( GND ) + ( \cordic_0|Add21~14\ ))
-- \cordic_0|Add21~18\ = CARRY(( (\cordic_0|redist4_xMSB_uid64_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|redist5_xMSB_uid48_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( GND ) + ( \cordic_0|Add21~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist5_xMSB_uid48_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist4_xMSB_uid64_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	cin => \cordic_0|Add21~14\,
	sumout => \cordic_0|Add21~17_sumout\,
	cout => \cordic_0|Add21~18\);

-- Location: LABCELL_X37_Y7_N42
\cordic_0|Add21~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add21~9_sumout\ = SUM(( GND ) + ( GND ) + ( \cordic_0|Add21~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \cordic_0|Add21~18\,
	sumout => \cordic_0|Add21~9_sumout\);

-- Location: LABCELL_X37_Y7_N57
\cordic_0|xip1E_5_uid105_sincosTest_a[12]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_5_uid105_sincosTest_a[12]~3_combout\ = ( \cordic_0|Add22~17_sumout\ & ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|Add21~13_sumout\) ) ) # ( !\cordic_0|Add22~17_sumout\ & ( 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add21~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|ALT_INV_Add21~13_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~17_sumout\,
	combout => \cordic_0|xip1E_5_uid105_sincosTest_a[12]~3_combout\);

-- Location: LABCELL_X37_Y6_N21
\cordic_0|xip1E_5_uid105_sincosTest_a[10]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_5_uid105_sincosTest_a[10]~7_combout\ = ( \cordic_0|Add22~1_sumout\ & ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|Add21~1_sumout\) ) ) # ( !\cordic_0|Add22~1_sumout\ & ( 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add21~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add21~1_sumout\,
	datae => \cordic_0|ALT_INV_Add22~1_sumout\,
	combout => \cordic_0|xip1E_5_uid105_sincosTest_a[10]~7_combout\);

-- Location: LABCELL_X37_Y6_N0
\cordic_0|yip1E_4_uid90_sincosTest_o[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|yip1E_4_uid90_sincosTest_o[2]~1_combout\ = ( \cordic_0|Add23~49_sumout\ & ( \cordic_0|Add24~53_sumout\ ) ) # ( !\cordic_0|Add23~49_sumout\ & ( \cordic_0|Add24~53_sumout\ & ( \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) 
-- ) # ( \cordic_0|Add23~49_sumout\ & ( !\cordic_0|Add24~53_sumout\ & ( !\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datae => \cordic_0|ALT_INV_Add23~49_sumout\,
	dataf => \cordic_0|ALT_INV_Add24~53_sumout\,
	combout => \cordic_0|yip1E_4_uid90_sincosTest_o[2]~1_combout\);

-- Location: LABCELL_X35_Y6_N51
\cordic_0|yip1E_4_uid90_sincosTest_o[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|yip1E_4_uid90_sincosTest_o[0]~3_combout\ = ( \cordic_0|Add24~61_sumout\ & ( (\cordic_0|Add23~57_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) ) # ( !\cordic_0|Add24~61_sumout\ & ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add23~57_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|ALT_INV_Add23~57_sumout\,
	dataf => \cordic_0|ALT_INV_Add24~61_sumout\,
	combout => \cordic_0|yip1E_4_uid90_sincosTest_o[0]~3_combout\);

-- Location: LABCELL_X37_Y6_N30
\cordic_0|Add25~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~62_cout\ = CARRY(( \cordic_0|yip1E_4_uid90_sincosTest_o[0]~3_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~45_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~41_sumout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add21~41_sumout\,
	datad => \cordic_0|ALT_INV_yip1E_4_uid90_sincosTest_o[0]~3_combout\,
	dataf => \cordic_0|ALT_INV_Add22~45_sumout\,
	cin => GND,
	cout => \cordic_0|Add25~62_cout\);

-- Location: LABCELL_X37_Y6_N33
\cordic_0|Add25~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~58_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~41_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~37_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~53_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~57_sumout\)) ) + ( \cordic_0|Add25~62_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add24~57_sumout\,
	datac => \cordic_0|ALT_INV_Add21~37_sumout\,
	datad => \cordic_0|ALT_INV_Add22~41_sumout\,
	dataf => \cordic_0|ALT_INV_Add23~53_sumout\,
	cin => \cordic_0|Add25~62_cout\,
	cout => \cordic_0|Add25~58_cout\);

-- Location: LABCELL_X37_Y6_N36
\cordic_0|Add25~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~54_cout\ = CARRY(( \cordic_0|yip1E_4_uid90_sincosTest_o[2]~1_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~37_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~33_sumout\)) ) + ( \cordic_0|Add25~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add21~33_sumout\,
	datad => \cordic_0|ALT_INV_yip1E_4_uid90_sincosTest_o[2]~1_combout\,
	dataf => \cordic_0|ALT_INV_Add22~37_sumout\,
	cin => \cordic_0|Add25~58_cout\,
	cout => \cordic_0|Add25~54_cout\);

-- Location: LABCELL_X37_Y6_N39
\cordic_0|Add25~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~50_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~45_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~49_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~33_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~29_sumout\)) ) + ( \cordic_0|Add25~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add21~29_sumout\,
	datac => \cordic_0|ALT_INV_Add24~49_sumout\,
	datad => \cordic_0|ALT_INV_Add23~45_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~33_sumout\,
	cin => \cordic_0|Add25~54_cout\,
	cout => \cordic_0|Add25~50_cout\);

-- Location: LABCELL_X37_Y6_N42
\cordic_0|Add25~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~46_cout\ = CARRY(( \cordic_0|xip1E_5_uid105_sincosTest_a[8]~2_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~41_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~45_sumout\)) ) + ( \cordic_0|Add25~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~45_sumout\,
	datad => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[8]~2_combout\,
	dataf => \cordic_0|ALT_INV_Add23~41_sumout\,
	cin => \cordic_0|Add25~50_cout\,
	cout => \cordic_0|Add25~46_cout\);

-- Location: LABCELL_X37_Y6_N45
\cordic_0|Add25~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~42_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~37_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~41_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~25_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~21_sumout\)) ) + ( \cordic_0|Add25~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add24~41_sumout\,
	datac => \cordic_0|ALT_INV_Add21~21_sumout\,
	datad => \cordic_0|ALT_INV_Add23~37_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~25_sumout\,
	cin => \cordic_0|Add25~46_cout\,
	cout => \cordic_0|Add25~42_cout\);

-- Location: LABCELL_X37_Y6_N48
\cordic_0|Add25~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~38_cout\ = CARRY(( \cordic_0|xip1E_5_uid105_sincosTest_a[10]~7_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~33_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~37_sumout\)) ) + ( \cordic_0|Add25~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~37_sumout\,
	datad => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[10]~7_combout\,
	dataf => \cordic_0|ALT_INV_Add23~33_sumout\,
	cin => \cordic_0|Add25~42_cout\,
	cout => \cordic_0|Add25~38_cout\);

-- Location: LABCELL_X37_Y6_N51
\cordic_0|Add25~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~34_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~29_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~33_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~5_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~5_sumout\)) ) + ( \cordic_0|Add25~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add24~33_sumout\,
	datac => \cordic_0|ALT_INV_Add21~5_sumout\,
	datad => \cordic_0|ALT_INV_Add23~29_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~5_sumout\,
	cin => \cordic_0|Add25~38_cout\,
	cout => \cordic_0|Add25~34_cout\);

-- Location: LABCELL_X37_Y6_N54
\cordic_0|Add25~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~30_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~25_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~29_sumout\)) ) + ( 
-- \cordic_0|xip1E_5_uid105_sincosTest_a[12]~3_combout\ ) + ( \cordic_0|Add25~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~29_sumout\,
	datad => \cordic_0|ALT_INV_Add23~25_sumout\,
	dataf => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[12]~3_combout\,
	cin => \cordic_0|Add25~34_cout\,
	cout => \cordic_0|Add25~30_cout\);

-- Location: LABCELL_X37_Y6_N57
\cordic_0|Add25~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~26_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~21_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~17_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~21_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~25_sumout\)) ) + ( \cordic_0|Add25~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add24~25_sumout\,
	datac => \cordic_0|ALT_INV_Add21~17_sumout\,
	datad => \cordic_0|ALT_INV_Add22~21_sumout\,
	dataf => \cordic_0|ALT_INV_Add23~21_sumout\,
	cin => \cordic_0|Add25~30_cout\,
	cout => \cordic_0|Add25~26_cout\);

-- Location: LABCELL_X37_Y5_N30
\cordic_0|Add25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~1_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~9_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~9_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~5_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~9_sumout\)) ) + ( \cordic_0|Add25~26_cout\ ))
-- \cordic_0|Add25~2\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~9_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~9_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~5_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~9_sumout\)) ) + ( \cordic_0|Add25~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add24~9_sumout\,
	datac => \cordic_0|ALT_INV_Add21~9_sumout\,
	datad => \cordic_0|ALT_INV_Add22~9_sumout\,
	dataf => \cordic_0|ALT_INV_Add23~5_sumout\,
	cin => \cordic_0|Add25~26_cout\,
	sumout => \cordic_0|Add25~1_sumout\,
	cout => \cordic_0|Add25~2\);

-- Location: LABCELL_X37_Y5_N33
\cordic_0|Add25~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~5_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~9_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~13_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~13_sumout\) ) + ( \cordic_0|Add25~2\ ))
-- \cordic_0|Add25~6\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~9_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~13_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~13_sumout\) ) + ( \cordic_0|Add25~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~13_sumout\,
	datad => \cordic_0|ALT_INV_Add23~9_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~13_sumout\,
	cin => \cordic_0|Add25~2\,
	sumout => \cordic_0|Add25~5_sumout\,
	cout => \cordic_0|Add25~6\);

-- Location: LABCELL_X37_Y7_N51
\cordic_0|xip1E_5_uid105_sincosTest_a[13]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_5_uid105_sincosTest_a[13]~1_combout\ = ( \cordic_0|Add21~17_sumout\ & ( (\cordic_0|Add22~21_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) ) # ( !\cordic_0|Add21~17_sumout\ & ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|ALT_INV_Add22~21_sumout\,
	dataf => \cordic_0|ALT_INV_Add21~17_sumout\,
	combout => \cordic_0|xip1E_5_uid105_sincosTest_a[13]~1_combout\);

-- Location: LABCELL_X37_Y7_N54
\cordic_0|xip1E_5_uid105_sincosTest_a[11]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_5_uid105_sincosTest_a[11]~5_combout\ = ( \cordic_0|Add21~5_sumout\ & ( (\cordic_0|Add22~5_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) ) # ( !\cordic_0|Add21~5_sumout\ & ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|ALT_INV_Add22~5_sumout\,
	dataf => \cordic_0|ALT_INV_Add21~5_sumout\,
	combout => \cordic_0|xip1E_5_uid105_sincosTest_a[11]~5_combout\);

-- Location: LABCELL_X35_Y6_N48
\cordic_0|yip1E_4_uid90_sincosTest_o[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|yip1E_4_uid90_sincosTest_o[3]~0_combout\ = ( \cordic_0|Add24~49_sumout\ & ( (\cordic_0|Add23~45_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) ) # ( !\cordic_0|Add24~49_sumout\ & ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add23~45_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add23~45_sumout\,
	dataf => \cordic_0|ALT_INV_Add24~49_sumout\,
	combout => \cordic_0|yip1E_4_uid90_sincosTest_o[3]~0_combout\);

-- Location: LABCELL_X35_Y7_N57
\cordic_0|yip1E_4_uid90_sincosTest_o[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|yip1E_4_uid90_sincosTest_o[1]~2_combout\ = ( \cordic_0|Add24~57_sumout\ & ( \cordic_0|Add23~53_sumout\ ) ) # ( !\cordic_0|Add24~57_sumout\ & ( \cordic_0|Add23~53_sumout\ & ( !\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) 
-- ) # ( \cordic_0|Add24~57_sumout\ & ( !\cordic_0|Add23~53_sumout\ & ( \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datae => \cordic_0|ALT_INV_Add24~57_sumout\,
	dataf => \cordic_0|ALT_INV_Add23~53_sumout\,
	combout => \cordic_0|yip1E_4_uid90_sincosTest_o[1]~2_combout\);

-- Location: LABCELL_X36_Y6_N24
\cordic_0|Add26~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~66_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \cordic_0|Add26~66_cout\);

-- Location: LABCELL_X36_Y6_N27
\cordic_0|Add26~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~62_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add22~45_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add21~41_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~57_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~61_sumout\)) ) + ( \cordic_0|Add26~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add24~61_sumout\,
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add21~41_sumout\,
	datad => \cordic_0|ALT_INV_Add22~45_sumout\,
	dataf => \cordic_0|ALT_INV_Add23~57_sumout\,
	cin => \cordic_0|Add26~66_cout\,
	cout => \cordic_0|Add26~62_cout\);

-- Location: LABCELL_X36_Y6_N30
\cordic_0|Add26~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~58_cout\ = CARRY(( \cordic_0|yip1E_4_uid90_sincosTest_o[1]~2_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add22~41_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add21~37_sumout\)) ) + ( \cordic_0|Add26~62_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add21~37_sumout\,
	datad => \cordic_0|ALT_INV_yip1E_4_uid90_sincosTest_o[1]~2_combout\,
	dataf => \cordic_0|ALT_INV_Add22~41_sumout\,
	cin => \cordic_0|Add26~62_cout\,
	cout => \cordic_0|Add26~58_cout\);

-- Location: LABCELL_X36_Y6_N33
\cordic_0|Add26~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~54_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~49_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~53_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add22~37_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add21~33_sumout\)) ) + ( \cordic_0|Add26~58_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111100000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add24~53_sumout\,
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add21~33_sumout\,
	datad => \cordic_0|ALT_INV_Add23~49_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~37_sumout\,
	cin => \cordic_0|Add26~58_cout\,
	cout => \cordic_0|Add26~54_cout\);

-- Location: LABCELL_X36_Y6_N36
\cordic_0|Add26~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~50_cout\ = CARRY(( \cordic_0|yip1E_4_uid90_sincosTest_o[3]~0_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add22~33_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add21~29_sumout\)) ) + ( \cordic_0|Add26~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add21~29_sumout\,
	datad => \cordic_0|ALT_INV_yip1E_4_uid90_sincosTest_o[3]~0_combout\,
	dataf => \cordic_0|ALT_INV_Add22~33_sumout\,
	cin => \cordic_0|Add26~54_cout\,
	cout => \cordic_0|Add26~50_cout\);

-- Location: LABCELL_X36_Y6_N39
\cordic_0|Add26~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~46_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~41_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~45_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add22~29_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add21~25_sumout\)) ) + ( \cordic_0|Add26~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111100000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add24~45_sumout\,
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add21~25_sumout\,
	datad => \cordic_0|ALT_INV_Add23~41_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~29_sumout\,
	cin => \cordic_0|Add26~50_cout\,
	cout => \cordic_0|Add26~46_cout\);

-- Location: LABCELL_X36_Y6_N42
\cordic_0|Add26~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~42_cout\ = CARRY(( !\cordic_0|xip1E_5_uid105_sincosTest_a[9]~0_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~37_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~41_sumout\)) ) + ( \cordic_0|Add26~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~41_sumout\,
	datad => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[9]~0_combout\,
	dataf => \cordic_0|ALT_INV_Add23~37_sumout\,
	cin => \cordic_0|Add26~46_cout\,
	cout => \cordic_0|Add26~42_cout\);

-- Location: LABCELL_X36_Y6_N45
\cordic_0|Add26~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~38_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add22~1_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add21~1_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~33_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~37_sumout\)) ) + ( \cordic_0|Add26~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001110111000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add21~1_sumout\,
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~37_sumout\,
	datad => \cordic_0|ALT_INV_Add22~1_sumout\,
	dataf => \cordic_0|ALT_INV_Add23~33_sumout\,
	cin => \cordic_0|Add26~42_cout\,
	cout => \cordic_0|Add26~38_cout\);

-- Location: LABCELL_X36_Y6_N48
\cordic_0|Add26~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~34_cout\ = CARRY(( !\cordic_0|xip1E_5_uid105_sincosTest_a[11]~5_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~29_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~33_sumout\)) ) + ( \cordic_0|Add26~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~33_sumout\,
	datad => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[11]~5_combout\,
	dataf => \cordic_0|ALT_INV_Add23~29_sumout\,
	cin => \cordic_0|Add26~38_cout\,
	cout => \cordic_0|Add26~34_cout\);

-- Location: LABCELL_X36_Y6_N51
\cordic_0|Add26~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~30_cout\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add22~17_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add21~13_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~25_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~29_sumout\)) ) + ( \cordic_0|Add26~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001110111000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add21~13_sumout\,
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~29_sumout\,
	datad => \cordic_0|ALT_INV_Add22~17_sumout\,
	dataf => \cordic_0|ALT_INV_Add23~25_sumout\,
	cin => \cordic_0|Add26~34_cout\,
	cout => \cordic_0|Add26~30_cout\);

-- Location: LABCELL_X36_Y6_N54
\cordic_0|Add26~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~26_cout\ = CARRY(( !\cordic_0|xip1E_5_uid105_sincosTest_a[13]~1_combout\ ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~21_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~25_sumout\)) ) + ( \cordic_0|Add26~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~25_sumout\,
	datad => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_a[13]~1_combout\,
	dataf => \cordic_0|ALT_INV_Add23~21_sumout\,
	cin => \cordic_0|Add26~30_cout\,
	cout => \cordic_0|Add26~26_cout\);

-- Location: LABCELL_X36_Y6_N57
\cordic_0|Add26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~1_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add22~9_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add21~9_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~5_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~9_sumout\)) ) + ( \cordic_0|Add26~26_cout\ ))
-- \cordic_0|Add26~2\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add22~9_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add21~9_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~5_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~9_sumout\)) ) + ( \cordic_0|Add26~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add24~9_sumout\,
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add21~9_sumout\,
	datad => \cordic_0|ALT_INV_Add22~9_sumout\,
	dataf => \cordic_0|ALT_INV_Add23~5_sumout\,
	cin => \cordic_0|Add26~26_cout\,
	sumout => \cordic_0|Add26~1_sumout\,
	cout => \cordic_0|Add26~2\);

-- Location: LABCELL_X36_Y5_N30
\cordic_0|Add26~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~5_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~9_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~13_sumout\)) ) + ( 
-- (!\cordic_0|Add22~13_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add26~2\ ))
-- \cordic_0|Add26~6\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~9_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~13_sumout\)) ) + ( 
-- (!\cordic_0|Add22~13_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add26~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~13_sumout\,
	datad => \cordic_0|ALT_INV_Add23~9_sumout\,
	dataf => \cordic_0|ALT_INV_Add22~13_sumout\,
	cin => \cordic_0|Add26~2\,
	sumout => \cordic_0|Add26~5_sumout\,
	cout => \cordic_0|Add26~6\);

-- Location: LABCELL_X37_Y5_N9
\cordic_0|Add27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add27~0_combout\ = ( \cordic_0|Add26~5_sumout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add25~5_sumout\ $ ((!\cordic_0|Add25~1_sumout\)))) # 
-- (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (((!\cordic_0|Add26~1_sumout\)))) ) ) # ( !\cordic_0|Add26~5_sumout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add25~5_sumout\ $ 
-- ((!\cordic_0|Add25~1_sumout\)))) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (((\cordic_0|Add26~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001111011010010000111101101111011010010000111101101001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add25~5_sumout\,
	datab => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add25~1_sumout\,
	datad => \cordic_0|ALT_INV_Add26~1_sumout\,
	dataf => \cordic_0|ALT_INV_Add26~5_sumout\,
	combout => \cordic_0|Add27~0_combout\);

-- Location: FF_X37_Y5_N10
\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cordic_0|Add27~0_combout\,
	clrn => \ALT_INV_areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y5_N9
\cordic_0|c[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|c[0]~0_combout\ = ( \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~DUPLICATE_q\ & ( (!\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\) # 
-- (\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q\) ) ) # ( !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~DUPLICATE_q\ & ( (\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & 
-- \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][0]~DUPLICATE_q\,
	combout => \cordic_0|c[0]~0_combout\);

-- Location: LABCELL_X36_Y5_N51
\cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[1][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[1][0]~0_combout\ = !\a[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_a[9]~input_o\,
	combout => \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[1][0]~0_combout\);

-- Location: FF_X39_Y5_N47
\cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[1][0]~0_combout\,
	clrn => \ALT_INV_areset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[1][0]~q\);

-- Location: FF_X39_Y5_N23
\cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[1][0]~q\,
	clrn => \ALT_INV_areset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q\);

-- Location: FF_X39_Y5_N59
\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \a[9]~input_o\,
	clrn => \ALT_INV_areset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[1][0]~q\);

-- Location: FF_X39_Y5_N53
\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[1][0]~q\,
	clrn => \ALT_INV_areset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\);

-- Location: LABCELL_X37_Y5_N36
\cordic_0|Add25~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~9_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~13_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~17_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~13_sumout\) ) + ( \cordic_0|Add25~6\ ))
-- \cordic_0|Add25~10\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~13_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~17_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~13_sumout\) ) + ( \cordic_0|Add25~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111011101110100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add22~13_sumout\,
	datac => \cordic_0|ALT_INV_Add24~17_sumout\,
	datad => \cordic_0|ALT_INV_Add23~13_sumout\,
	cin => \cordic_0|Add25~6\,
	sumout => \cordic_0|Add25~9_sumout\,
	cout => \cordic_0|Add25~10\);

-- Location: LABCELL_X36_Y5_N33
\cordic_0|Add26~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~9_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~13_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~17_sumout\)) ) + ( 
-- (!\cordic_0|Add22~13_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add26~6\ ))
-- \cordic_0|Add26~10\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~13_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~17_sumout\)) ) + ( 
-- (!\cordic_0|Add22~13_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add26~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add24~17_sumout\,
	datac => \cordic_0|ALT_INV_Add22~13_sumout\,
	datad => \cordic_0|ALT_INV_Add23~13_sumout\,
	cin => \cordic_0|Add26~6\,
	sumout => \cordic_0|Add26~9_sumout\,
	cout => \cordic_0|Add26~10\);

-- Location: LABCELL_X37_Y5_N24
\cordic_0|Add27~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add27~10_combout\ = ( !\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & ( !\cordic_0|Add25~9_sumout\ $ (((!\cordic_0|Add25~5_sumout\) # ((!\cordic_0|Add25~1_sumout\)))) ) ) # ( 
-- \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & ( ((!\cordic_0|Add26~9_sumout\ $ (((!\cordic_0|Add26~1_sumout\) # (!\cordic_0|Add26~5_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011001010110000000001111111101010110010101100000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add25~9_sumout\,
	datab => \cordic_0|ALT_INV_Add25~5_sumout\,
	datac => \cordic_0|ALT_INV_Add26~1_sumout\,
	datad => \cordic_0|ALT_INV_Add26~9_sumout\,
	datae => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|ALT_INV_Add26~5_sumout\,
	datag => \cordic_0|ALT_INV_Add25~1_sumout\,
	combout => \cordic_0|Add27~10_combout\);

-- Location: FF_X37_Y5_N25
\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cordic_0|Add27~10_combout\,
	clrn => \ALT_INV_areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q\);

-- Location: MLABCELL_X34_Y5_N6
\cordic_0|Add30~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~9_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~17_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~13_sumout\)) ) + ( 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add24~5_sumout\) ) + ( \cordic_0|Add30~6\ ))
-- \cordic_0|Add30~10\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~17_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~13_sumout\)) ) + ( 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add24~5_sumout\) ) + ( \cordic_0|Add30~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100110000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add21~13_sumout\,
	datad => \cordic_0|ALT_INV_Add22~17_sumout\,
	dataf => \cordic_0|ALT_INV_Add24~5_sumout\,
	cin => \cordic_0|Add30~6\,
	sumout => \cordic_0|Add30~9_sumout\,
	cout => \cordic_0|Add30~10\);

-- Location: LABCELL_X33_Y5_N3
\cordic_0|Add31~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~9_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|Add24~5_sumout\) ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add22~17_sumout\)) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add21~13_sumout\))) ) + ( \cordic_0|Add31~6\ ))
-- \cordic_0|Add31~10\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|Add24~5_sumout\) ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add22~17_sumout\)) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add21~13_sumout\))) ) + ( \cordic_0|Add31~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001101100000000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add22~17_sumout\,
	datac => \cordic_0|ALT_INV_Add21~13_sumout\,
	datad => \cordic_0|ALT_INV_Add24~5_sumout\,
	cin => \cordic_0|Add31~6\,
	sumout => \cordic_0|Add31~9_sumout\,
	cout => \cordic_0|Add31~10\);

-- Location: MLABCELL_X34_Y5_N54
\cordic_0|Add32~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add32~5_combout\ = ( !\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & ( ((!\cordic_0|Add31~9_sumout\ $ (((!\cordic_0|Add31~5_sumout\) # (!\cordic_0|Add31~1_sumout\))))) ) ) # ( 
-- \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & ( (!\cordic_0|Add30~9_sumout\ $ (((!\cordic_0|Add30~5_sumout\) # ((!\cordic_0|Add30~1_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000001011111101011111100111111000000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add30~5_sumout\,
	datab => \cordic_0|ALT_INV_Add31~5_sumout\,
	datac => \cordic_0|ALT_INV_Add30~1_sumout\,
	datad => \cordic_0|ALT_INV_Add30~9_sumout\,
	datae => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|ALT_INV_Add31~9_sumout\,
	datag => \cordic_0|ALT_INV_Add31~1_sumout\,
	combout => \cordic_0|Add32~5_combout\);

-- Location: FF_X34_Y5_N56
\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cordic_0|Add32~5_combout\,
	clrn => \ALT_INV_areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q\);

-- Location: MLABCELL_X39_Y5_N48
\cordic_0|c[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|c[1]~1_combout\ = ( \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q\ ) ) # ( 
-- !\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q\ & ( !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q\ $ 
-- (((!\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~DUPLICATE_q\) # ((!\cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q\ & !\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\)))) ) ) ) # ( 
-- !\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( !\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q\ & ( !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q\ $ 
-- (((!\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~DUPLICATE_q\) # ((!\cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q\ & !\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001111101100000000000000000000010011111011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][0]~DUPLICATE_q\,
	datac => \cordic_0|redist8_signA_uid7_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][1]~q\,
	datae => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][1]~q\,
	combout => \cordic_0|c[1]~1_combout\);

-- Location: MLABCELL_X34_Y5_N9
\cordic_0|Add30~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~13_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~21_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~17_sumout\)) ) + ( 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add24~5_sumout\) ) + ( \cordic_0|Add30~10\ ))
-- \cordic_0|Add30~14\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~21_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~17_sumout\)) ) + ( 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add24~5_sumout\) ) + ( \cordic_0|Add30~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add21~17_sumout\,
	datab => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~5_sumout\,
	datad => \cordic_0|ALT_INV_Add22~21_sumout\,
	cin => \cordic_0|Add30~10\,
	sumout => \cordic_0|Add30~13_sumout\,
	cout => \cordic_0|Add30~14\);

-- Location: LABCELL_X33_Y5_N6
\cordic_0|Add31~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~13_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~21_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~17_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|Add24~5_sumout\) ) + ( \cordic_0|Add31~10\ ))
-- \cordic_0|Add31~14\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~21_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~17_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|Add24~5_sumout\) ) + ( \cordic_0|Add31~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add24~5_sumout\,
	datac => \cordic_0|ALT_INV_Add21~17_sumout\,
	datad => \cordic_0|ALT_INV_Add22~21_sumout\,
	cin => \cordic_0|Add31~10\,
	sumout => \cordic_0|Add31~13_sumout\,
	cout => \cordic_0|Add31~14\);

-- Location: MLABCELL_X34_Y5_N24
\cordic_0|Add32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add32~1_combout\ = ( \cordic_0|Add31~1_sumout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add31~5_sumout\)) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- (((\cordic_0|Add30~1_sumout\ & \cordic_0|Add30~5_sumout\)))) ) ) # ( !\cordic_0|Add31~1_sumout\ & ( (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add30~1_sumout\ & \cordic_0|Add30~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100100010001001110010001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add31~5_sumout\,
	datac => \cordic_0|ALT_INV_Add30~1_sumout\,
	datad => \cordic_0|ALT_INV_Add30~5_sumout\,
	dataf => \cordic_0|ALT_INV_Add31~1_sumout\,
	combout => \cordic_0|Add32~1_combout\);

-- Location: MLABCELL_X34_Y5_N30
\cordic_0|Add32~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add32~2_combout\ = ( \cordic_0|Add31~13_sumout\ & ( \cordic_0|Add32~1_combout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (((!\cordic_0|Add31~9_sumout\)))) # 
-- (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add30~9_sumout\ $ ((!\cordic_0|Add30~13_sumout\)))) ) ) ) # ( !\cordic_0|Add31~13_sumout\ & ( \cordic_0|Add32~1_combout\ & ( 
-- (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (((\cordic_0|Add31~9_sumout\)))) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add30~9_sumout\ $ ((!\cordic_0|Add30~13_sumout\)))) ) ) ) # ( 
-- \cordic_0|Add31~13_sumout\ & ( !\cordic_0|Add32~1_combout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\) # (\cordic_0|Add30~13_sumout\) ) ) ) # ( !\cordic_0|Add31~13_sumout\ & ( !\cordic_0|Add32~1_combout\ & ( 
-- (\cordic_0|Add30~13_sumout\ & \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000110111101101111011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add30~9_sumout\,
	datab => \cordic_0|ALT_INV_Add30~13_sumout\,
	datac => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|ALT_INV_Add31~9_sumout\,
	datae => \cordic_0|ALT_INV_Add31~13_sumout\,
	dataf => \cordic_0|ALT_INV_Add32~1_combout\,
	combout => \cordic_0|Add32~2_combout\);

-- Location: FF_X34_Y5_N32
\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cordic_0|Add32~2_combout\,
	clrn => \ALT_INV_areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]~q\);

-- Location: FF_X37_Y5_N11
\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cordic_0|Add27~0_combout\,
	clrn => \ALT_INV_areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q\);

-- Location: LABCELL_X37_Y5_N39
\cordic_0|Add25~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~13_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~17_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~21_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~13_sumout\) ) + ( \cordic_0|Add25~10\ ))
-- \cordic_0|Add25~14\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~17_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~21_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~13_sumout\) ) + ( \cordic_0|Add25~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111011101110100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add22~13_sumout\,
	datac => \cordic_0|ALT_INV_Add24~21_sumout\,
	datad => \cordic_0|ALT_INV_Add23~17_sumout\,
	cin => \cordic_0|Add25~10\,
	sumout => \cordic_0|Add25~13_sumout\,
	cout => \cordic_0|Add25~14\);

-- Location: LABCELL_X36_Y5_N36
\cordic_0|Add26~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~13_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~17_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~21_sumout\)) ) + ( 
-- (!\cordic_0|Add22~13_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add26~10\ ))
-- \cordic_0|Add26~14\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~17_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~21_sumout\)) ) + ( 
-- (!\cordic_0|Add22~13_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( \cordic_0|Add26~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add22~13_sumout\,
	datac => \cordic_0|ALT_INV_Add24~21_sumout\,
	datad => \cordic_0|ALT_INV_Add23~17_sumout\,
	cin => \cordic_0|Add26~10\,
	sumout => \cordic_0|Add26~13_sumout\,
	cout => \cordic_0|Add26~14\);

-- Location: LABCELL_X37_Y5_N12
\cordic_0|Add27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add27~1_combout\ = ( \cordic_0|Add26~1_sumout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add25~5_sumout\ & ((\cordic_0|Add25~1_sumout\)))) # 
-- (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (((\cordic_0|Add26~5_sumout\)))) ) ) # ( !\cordic_0|Add26~1_sumout\ & ( (\cordic_0|Add25~5_sumout\ & (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- \cordic_0|Add25~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000011010001110000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add25~5_sumout\,
	datab => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add26~5_sumout\,
	datad => \cordic_0|ALT_INV_Add25~1_sumout\,
	dataf => \cordic_0|ALT_INV_Add26~1_sumout\,
	combout => \cordic_0|Add27~1_combout\);

-- Location: LABCELL_X37_Y5_N54
\cordic_0|Add27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add27~2_combout\ = ( \cordic_0|Add25~9_sumout\ & ( \cordic_0|Add27~1_combout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add25~13_sumout\)) # 
-- (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add26~13_sumout\ $ (!\cordic_0|Add26~9_sumout\)))) ) ) ) # ( !\cordic_0|Add25~9_sumout\ & ( \cordic_0|Add27~1_combout\ & ( 
-- (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add25~13_sumout\)) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & ((!\cordic_0|Add26~13_sumout\ $ (!\cordic_0|Add26~9_sumout\)))) ) ) ) # ( 
-- \cordic_0|Add25~9_sumout\ & ( !\cordic_0|Add27~1_combout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add25~13_sumout\)) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- ((\cordic_0|Add26~13_sumout\))) ) ) ) # ( !\cordic_0|Add25~9_sumout\ & ( !\cordic_0|Add27~1_combout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add25~13_sumout\)) # 
-- (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add26~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111011100101000110111011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add25~13_sumout\,
	datac => \cordic_0|ALT_INV_Add26~13_sumout\,
	datad => \cordic_0|ALT_INV_Add26~9_sumout\,
	datae => \cordic_0|ALT_INV_Add25~9_sumout\,
	dataf => \cordic_0|ALT_INV_Add27~1_combout\,
	combout => \cordic_0|Add27~2_combout\);

-- Location: FF_X37_Y5_N56
\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cordic_0|Add27~2_combout\,
	clrn => \ALT_INV_areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][2]~q\);

-- Location: LABCELL_X37_Y5_N51
\cordic_0|Add29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add29~0_combout\ = ( \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q\ & ( \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( 
-- !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][2]~q\ $ (((\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ & ((\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q\) # 
-- (\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q\))))) ) ) ) # ( !\cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q\ & ( \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( 
-- !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][2]~q\ $ (((\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ & ((\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q\) # 
-- (\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q\))))) ) ) ) # ( \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q\ & ( !\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( 
-- !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][2]~q\ $ (((\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q\) # (\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q\))) ) ) ) # ( 
-- !\cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q\ & ( !\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][2]~q\ $ 
-- (((\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ & ((\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q\) # (\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000010101110000000011111111101010000101011110101000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist8_signA_uid7_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][1]~q\,
	datad => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][2]~q\,
	datae => \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	combout => \cordic_0|Add29~0_combout\);

-- Location: MLABCELL_X39_Y5_N27
\cordic_0|c[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|c[2]~2_combout\ = ( \cordic_0|Add29~0_combout\ & ( (!\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\) # (!\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]~q\) ) ) # ( !\cordic_0|Add29~0_combout\ & 
-- ( (\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & !\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][2]~q\,
	dataf => \cordic_0|ALT_INV_Add29~0_combout\,
	combout => \cordic_0|c[2]~2_combout\);

-- Location: LABCELL_X37_Y5_N18
\cordic_0|Add29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add29~2_combout\ = ( \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q\ & ( !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q\ & ( (!\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][2]~q\ 
-- & (!\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q\ & ((!\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\) # (\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\)))) ) ) ) # ( 
-- !\cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q\ & ( !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~q\ & ( (\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ & 
-- (!\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][2]~q\ & !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000110100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist8_signA_uid7_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][2]~q\,
	datad => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][1]~q\,
	datae => \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	combout => \cordic_0|Add29~2_combout\);

-- Location: LABCELL_X36_Y5_N39
\cordic_0|Add26~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~17_sumout\ = SUM(( (!\cordic_0|Add22~13_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~1_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~1_sumout\)) ) + ( \cordic_0|Add26~14\ ))
-- \cordic_0|Add26~18\ = CARRY(( (!\cordic_0|Add22~13_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~1_sumout\))) # 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~1_sumout\)) ) + ( \cordic_0|Add26~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add22~13_sumout\,
	datac => \cordic_0|ALT_INV_Add24~1_sumout\,
	dataf => \cordic_0|ALT_INV_Add23~1_sumout\,
	cin => \cordic_0|Add26~14\,
	sumout => \cordic_0|Add26~17_sumout\,
	cout => \cordic_0|Add26~18\);

-- Location: LABCELL_X37_Y5_N42
\cordic_0|Add25~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~17_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~1_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~1_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~13_sumout\) ) + ( \cordic_0|Add25~14\ ))
-- \cordic_0|Add25~18\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add23~1_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add24~1_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~13_sumout\) ) + ( \cordic_0|Add25~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111011101110100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add22~13_sumout\,
	datac => \cordic_0|ALT_INV_Add24~1_sumout\,
	datad => \cordic_0|ALT_INV_Add23~1_sumout\,
	cin => \cordic_0|Add25~14\,
	sumout => \cordic_0|Add25~17_sumout\,
	cout => \cordic_0|Add25~18\);

-- Location: LABCELL_X37_Y5_N6
\cordic_0|yip1E_5_uid106_sincosTest_o[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|yip1E_5_uid106_sincosTest_o[13]~0_combout\ = ( \cordic_0|Add26~13_sumout\ & ( (\cordic_0|Add25~13_sumout\) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\) ) ) # ( !\cordic_0|Add26~13_sumout\ & ( 
-- (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add25~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|ALT_INV_Add25~13_sumout\,
	dataf => \cordic_0|ALT_INV_Add26~13_sumout\,
	combout => \cordic_0|yip1E_5_uid106_sincosTest_o[13]~0_combout\);

-- Location: LABCELL_X37_Y5_N0
\cordic_0|Add27~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add27~6_combout\ = ( !\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & ( (!\cordic_0|Add25~17_sumout\ $ (((!\cordic_0|Add25~9_sumout\) # ((!\cordic_0|Add27~1_combout\) # 
-- (!\cordic_0|yip1E_5_uid106_sincosTest_o[13]~0_combout\))))) ) ) # ( \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & ( !\cordic_0|Add26~17_sumout\ $ ((((!\cordic_0|Add26~9_sumout\) # ((!\cordic_0|Add27~1_combout\) # 
-- (!\cordic_0|yip1E_5_uid106_sincosTest_o[13]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011010101010101010100110011001111000101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add26~17_sumout\,
	datab => \cordic_0|ALT_INV_Add25~17_sumout\,
	datac => \cordic_0|ALT_INV_Add26~9_sumout\,
	datad => \cordic_0|ALT_INV_Add27~1_combout\,
	datae => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|ALT_INV_yip1E_5_uid106_sincosTest_o[13]~0_combout\,
	datag => \cordic_0|ALT_INV_Add25~9_sumout\,
	combout => \cordic_0|Add27~6_combout\);

-- Location: FF_X37_Y5_N1
\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cordic_0|Add27~6_combout\,
	clrn => \ALT_INV_areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][3]~q\);

-- Location: MLABCELL_X39_Y5_N6
\cordic_0|Add29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add29~1_combout\ = ( \cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ & ( !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][3]~q\ ) ) # ( !\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ & ( 
-- !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][3]~q\ $ (((!\cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q\) # (\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110100101000011111010010111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][3]~q\,
	datad => \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|redist8_signA_uid7_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	combout => \cordic_0|Add29~1_combout\);

-- Location: MLABCELL_X34_Y5_N12
\cordic_0|Add30~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~17_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~9_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~9_sumout\)) ) + ( 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add24~5_sumout\) ) + ( \cordic_0|Add30~14\ ))
-- \cordic_0|Add30~18\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~9_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~9_sumout\)) ) + ( 
-- (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add24~5_sumout\) ) + ( \cordic_0|Add30~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add21~9_sumout\,
	datac => \cordic_0|ALT_INV_Add22~9_sumout\,
	dataf => \cordic_0|ALT_INV_Add24~5_sumout\,
	cin => \cordic_0|Add30~14\,
	sumout => \cordic_0|Add30~17_sumout\,
	cout => \cordic_0|Add30~18\);

-- Location: MLABCELL_X34_Y5_N48
\cordic_0|xip1E_5_uid105_sincosTest_o[12]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_5_uid105_sincosTest_o[12]~0_combout\ = ( \cordic_0|Add30~9_sumout\ & ( \cordic_0|Add31~9_sumout\ ) ) # ( !\cordic_0|Add30~9_sumout\ & ( \cordic_0|Add31~9_sumout\ & ( !\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ ) ) ) 
-- # ( \cordic_0|Add30~9_sumout\ & ( !\cordic_0|Add31~9_sumout\ & ( \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datae => \cordic_0|ALT_INV_Add30~9_sumout\,
	dataf => \cordic_0|ALT_INV_Add31~9_sumout\,
	combout => \cordic_0|xip1E_5_uid105_sincosTest_o[12]~0_combout\);

-- Location: LABCELL_X33_Y5_N9
\cordic_0|Add31~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~17_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~9_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~9_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|Add24~5_sumout\) ) + ( \cordic_0|Add31~14\ ))
-- \cordic_0|Add31~18\ = CARRY(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add22~9_sumout\))) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add21~9_sumout\)) ) + ( 
-- (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|Add24~5_sumout\) ) + ( \cordic_0|Add31~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add24~5_sumout\,
	datac => \cordic_0|ALT_INV_Add21~9_sumout\,
	datad => \cordic_0|ALT_INV_Add22~9_sumout\,
	cin => \cordic_0|Add31~14\,
	sumout => \cordic_0|Add31~17_sumout\,
	cout => \cordic_0|Add31~18\);

-- Location: MLABCELL_X34_Y5_N27
\cordic_0|xip1E_5_uid105_sincosTest_o[13]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_5_uid105_sincosTest_o[13]~1_combout\ = ( \cordic_0|Add30~13_sumout\ & ( (\cordic_0|Add31~13_sumout\) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\) ) ) # ( !\cordic_0|Add30~13_sumout\ & ( 
-- (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add31~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|ALT_INV_Add31~13_sumout\,
	dataf => \cordic_0|ALT_INV_Add30~13_sumout\,
	combout => \cordic_0|xip1E_5_uid105_sincosTest_o[13]~1_combout\);

-- Location: MLABCELL_X34_Y5_N36
\cordic_0|Add32~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add32~3_combout\ = ( \cordic_0|xip1E_5_uid105_sincosTest_o[13]~1_combout\ & ( \cordic_0|Add32~1_combout\ & ( !\cordic_0|xip1E_5_uid105_sincosTest_o[12]~0_combout\ $ (((!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- ((!\cordic_0|Add31~17_sumout\))) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add30~17_sumout\)))) ) ) ) # ( !\cordic_0|xip1E_5_uid105_sincosTest_o[13]~1_combout\ & ( \cordic_0|Add32~1_combout\ & ( 
-- (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add31~17_sumout\))) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add30~17_sumout\)) ) ) ) # ( 
-- \cordic_0|xip1E_5_uid105_sincosTest_o[13]~1_combout\ & ( !\cordic_0|Add32~1_combout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add31~17_sumout\))) # 
-- (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add30~17_sumout\)) ) ) ) # ( !\cordic_0|xip1E_5_uid105_sincosTest_o[13]~1_combout\ & ( !\cordic_0|Add32~1_combout\ & ( 
-- (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add31~17_sumout\))) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add30~17_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100010001101110110001111010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add30~17_sumout\,
	datac => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_o[12]~0_combout\,
	datad => \cordic_0|ALT_INV_Add31~17_sumout\,
	datae => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_o[13]~1_combout\,
	dataf => \cordic_0|ALT_INV_Add32~1_combout\,
	combout => \cordic_0|Add32~3_combout\);

-- Location: FF_X34_Y5_N38
\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cordic_0|Add32~3_combout\,
	clrn => \ALT_INV_areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][3]~q\);

-- Location: MLABCELL_X39_Y5_N33
\cordic_0|c[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|c[3]~3_combout\ = ( \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][3]~q\ & ( (!\cordic_0|Add29~2_combout\ $ (!\cordic_0|Add29~1_combout\)) # (\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\) ) ) # ( 
-- !\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][3]~q\ & ( (!\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & (!\cordic_0|Add29~2_combout\ $ (!\cordic_0|Add29~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|ALT_INV_Add29~2_combout\,
	datac => \cordic_0|ALT_INV_Add29~1_combout\,
	datad => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][3]~q\,
	combout => \cordic_0|c[3]~3_combout\);

-- Location: LABCELL_X36_Y5_N42
\cordic_0|Add26~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add26~21_sumout\ = SUM(( (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add24~5_sumout\) ) + ( (!\cordic_0|Add22~13_sumout\) # (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) ) + ( 
-- \cordic_0|Add26~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add22~13_sumout\,
	datad => \cordic_0|ALT_INV_Add24~5_sumout\,
	cin => \cordic_0|Add26~18\,
	sumout => \cordic_0|Add26~21_sumout\);

-- Location: LABCELL_X37_Y5_N45
\cordic_0|Add25~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add25~21_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~13_sumout\) ) + ( (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add24~5_sumout\) ) + ( 
-- \cordic_0|Add25~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add22~13_sumout\,
	datac => \cordic_0|ALT_INV_Add24~5_sumout\,
	cin => \cordic_0|Add25~18\,
	sumout => \cordic_0|Add25~21_sumout\);

-- Location: LABCELL_X36_Y5_N54
\cordic_0|Add27~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add27~4_combout\ = ( \cordic_0|Add25~9_sumout\ & ( \cordic_0|Add26~1_sumout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add25~1_sumout\ & (\cordic_0|Add25~5_sumout\))) # 
-- (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (((\cordic_0|Add26~5_sumout\)))) ) ) ) # ( !\cordic_0|Add25~9_sumout\ & ( \cordic_0|Add26~1_sumout\ & ( (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- \cordic_0|Add26~5_sumout\) ) ) ) # ( \cordic_0|Add25~9_sumout\ & ( !\cordic_0|Add26~1_sumout\ & ( (\cordic_0|Add25~1_sumout\ & (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add25~5_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000010000000000001100110000010000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add25~1_sumout\,
	datab => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add25~5_sumout\,
	datad => \cordic_0|ALT_INV_Add26~5_sumout\,
	datae => \cordic_0|ALT_INV_Add25~9_sumout\,
	dataf => \cordic_0|ALT_INV_Add26~1_sumout\,
	combout => \cordic_0|Add27~4_combout\);

-- Location: LABCELL_X36_Y5_N48
\cordic_0|Add27~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add27~5_combout\ = ( \cordic_0|Add25~13_sumout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (((\cordic_0|Add25~17_sumout\)))) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- (\cordic_0|Add26~9_sumout\ & (\cordic_0|Add26~13_sumout\))) ) ) # ( !\cordic_0|Add25~13_sumout\ & ( (\cordic_0|Add26~9_sumout\ & (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add26~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add26~9_sumout\,
	datab => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add26~13_sumout\,
	datad => \cordic_0|ALT_INV_Add25~17_sumout\,
	dataf => \cordic_0|ALT_INV_Add25~13_sumout\,
	combout => \cordic_0|Add27~5_combout\);

-- Location: LABCELL_X36_Y5_N24
\cordic_0|Add27~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add27~3_combout\ = ( \cordic_0|Add27~4_combout\ & ( \cordic_0|Add27~5_combout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (((!\cordic_0|Add25~21_sumout\)))) # 
-- (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (!\cordic_0|Add26~21_sumout\ $ (((!\cordic_0|Add26~17_sumout\))))) ) ) ) # ( !\cordic_0|Add27~4_combout\ & ( \cordic_0|Add27~5_combout\ & ( 
-- (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add25~21_sumout\))) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add26~21_sumout\)) ) ) ) # ( \cordic_0|Add27~4_combout\ & ( 
-- !\cordic_0|Add27~5_combout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add25~21_sumout\))) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & (\cordic_0|Add26~21_sumout\)) ) ) ) # ( 
-- !\cordic_0|Add27~4_combout\ & ( !\cordic_0|Add27~5_combout\ & ( (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & ((\cordic_0|Add25~21_sumout\))) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & 
-- (\cordic_0|Add26~21_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110111011000111100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add26~21_sumout\,
	datac => \cordic_0|ALT_INV_Add25~21_sumout\,
	datad => \cordic_0|ALT_INV_Add26~17_sumout\,
	datae => \cordic_0|ALT_INV_Add27~4_combout\,
	dataf => \cordic_0|ALT_INV_Add27~5_combout\,
	combout => \cordic_0|Add27~3_combout\);

-- Location: FF_X36_Y5_N25
\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cordic_0|Add27~3_combout\,
	clrn => \ALT_INV_areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][4]~q\);

-- Location: MLABCELL_X39_Y5_N36
\cordic_0|Add29~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add29~3_combout\ = ( \cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ & ( !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][4]~q\ ) ) # ( !\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ & ( 
-- !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][4]~q\ $ (((!\cordic_0|redist7_invSignA_uid8_sincosTest_q_2|delay_signals[0][0]~q\) # (\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110011001001100111001100111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][4]~q\,
	datad => \cordic_0|redist7_invSignA_uid8_sincosTest_q_2|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|redist8_signA_uid7_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	combout => \cordic_0|Add29~3_combout\);

-- Location: LABCELL_X33_Y5_N12
\cordic_0|Add31~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add31~21_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\) # (!\cordic_0|Add24~5_sumout\) ) + ( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~13_sumout\) ) + ( 
-- \cordic_0|Add31~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add22~13_sumout\,
	datad => \cordic_0|ALT_INV_Add24~5_sumout\,
	cin => \cordic_0|Add31~18\,
	sumout => \cordic_0|Add31~21_sumout\);

-- Location: MLABCELL_X34_Y5_N15
\cordic_0|Add30~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add30~21_sumout\ = SUM(( (!\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add22~13_sumout\) ) + ( (\cordic_0|redist3_xMSB_uid80_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add24~5_sumout\) ) + ( 
-- \cordic_0|Add30~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist3_xMSB_uid80_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|ALT_INV_Add24~5_sumout\,
	datad => \cordic_0|ALT_INV_Add22~13_sumout\,
	cin => \cordic_0|Add30~18\,
	sumout => \cordic_0|Add30~21_sumout\);

-- Location: MLABCELL_X34_Y5_N21
\cordic_0|xip1E_5_uid105_sincosTest_o[15]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_5_uid105_sincosTest_o[15]~3_combout\ = ( \cordic_0|Add30~21_sumout\ & ( (\cordic_0|Add31~21_sumout\) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\) ) ) # ( !\cordic_0|Add30~21_sumout\ & ( 
-- (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add31~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|ALT_INV_Add31~21_sumout\,
	dataf => \cordic_0|ALT_INV_Add30~21_sumout\,
	combout => \cordic_0|xip1E_5_uid105_sincosTest_o[15]~3_combout\);

-- Location: MLABCELL_X34_Y5_N42
\cordic_0|xip1E_5_uid105_sincosTest_o[14]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|xip1E_5_uid105_sincosTest_o[14]~2_combout\ = ( \cordic_0|Add30~17_sumout\ & ( (\cordic_0|Add31~17_sumout\) # (\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\) ) ) # ( !\cordic_0|Add30~17_sumout\ & ( 
-- (!\cordic_0|redist2_xMSB_uid96_sincosTest_b_1|delay_signals[0][0]~q\ & \cordic_0|Add31~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \cordic_0|redist2_xMSB_uid96_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|ALT_INV_Add31~17_sumout\,
	dataf => \cordic_0|ALT_INV_Add30~17_sumout\,
	combout => \cordic_0|xip1E_5_uid105_sincosTest_o[14]~2_combout\);

-- Location: MLABCELL_X34_Y5_N18
\cordic_0|Add32~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add32~4_combout\ = ( \cordic_0|xip1E_5_uid105_sincosTest_o[14]~2_combout\ & ( !\cordic_0|xip1E_5_uid105_sincosTest_o[15]~3_combout\ $ (((!\cordic_0|Add32~1_combout\) # ((!\cordic_0|xip1E_5_uid105_sincosTest_o[12]~0_combout\) # 
-- (!\cordic_0|xip1E_5_uid105_sincosTest_o[13]~1_combout\)))) ) ) # ( !\cordic_0|xip1E_5_uid105_sincosTest_o[14]~2_combout\ & ( \cordic_0|xip1E_5_uid105_sincosTest_o[15]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111100000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add32~1_combout\,
	datab => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_o[12]~0_combout\,
	datac => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_o[15]~3_combout\,
	datad => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_o[13]~1_combout\,
	dataf => \cordic_0|ALT_INV_xip1E_5_uid105_sincosTest_o[14]~2_combout\,
	combout => \cordic_0|Add32~4_combout\);

-- Location: FF_X34_Y5_N19
\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cordic_0|Add32~4_combout\,
	clrn => \ALT_INV_areset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][4]~q\);

-- Location: MLABCELL_X39_Y5_N30
\cordic_0|c[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|c[4]~4_combout\ = ( \cordic_0|Add29~1_combout\ & ( (!\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & (!\cordic_0|Add29~2_combout\ $ ((!\cordic_0|Add29~3_combout\)))) # 
-- (\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & (((\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][4]~q\)))) ) ) # ( !\cordic_0|Add29~1_combout\ & ( 
-- (!\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & (\cordic_0|Add29~3_combout\)) # (\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & 
-- ((\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][4]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100101000011111010010100001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add29~2_combout\,
	datac => \cordic_0|ALT_INV_Add29~3_combout\,
	datad => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][4]~q\,
	dataf => \cordic_0|ALT_INV_Add29~1_combout\,
	combout => \cordic_0|c[4]~4_combout\);

-- Location: MLABCELL_X39_Y5_N39
\cordic_0|s[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|s[0]~0_combout\ = ( \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~DUPLICATE_q\ & ( (\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q\) # 
-- (\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\) ) ) # ( !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~DUPLICATE_q\ & ( (!\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & 
-- \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	datac => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][0]~DUPLICATE_q\,
	combout => \cordic_0|s[0]~0_combout\);

-- Location: MLABCELL_X39_Y5_N18
\cordic_0|s[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|s[1]~1_combout\ = ( \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( \cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ & ( 
-- !\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][0]~DUPLICATE_q\ $ (!\cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q\) ) ) ) # ( !\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( 
-- \cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ & ( !\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q\ $ (!\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q\) ) ) ) # ( 
-- \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( !\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ & ( \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|delay_signals[0][1]~q\ ) ) ) # ( 
-- !\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( !\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ & ( \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111101011010010110100011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][1]~q\,
	datab => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][0]~DUPLICATE_q\,
	datac => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist0_yPostExc_uid124_sincosTest_b_1|ALT_INV_delay_signals[0][1]~q\,
	datae => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|redist8_signA_uid7_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	combout => \cordic_0|s[1]~1_combout\);

-- Location: MLABCELL_X39_Y5_N42
\cordic_0|s[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|s[2]~2_combout\ = ( \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q\ & ( \cordic_0|Add29~0_combout\ ) ) ) # ( 
-- !\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q\ & ( !\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]~q\ $ 
-- (\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\) ) ) ) # ( \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( !\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q\ & ( 
-- \cordic_0|Add29~0_combout\ ) ) ) # ( !\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( !\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q\ & ( 
-- !\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]~q\ $ (((\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ & \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000011010101010101010111000011110000110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add29~0_combout\,
	datab => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][2]~q\,
	datac => \cordic_0|redist8_signA_uid7_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	datad => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datae => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][1]~q\,
	combout => \cordic_0|s[2]~2_combout\);

-- Location: MLABCELL_X39_Y5_N0
\cordic_0|s[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|s[3]~3_combout\ = ( !\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q\ & ( !\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ 
-- $ (!\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][3]~q\) ) ) ) # ( !\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( !\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q\ & ( 
-- !\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][3]~q\ $ (((!\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\) # ((!\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]~q\ & 
-- !\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001011010000000000000000001011010010110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist8_signA_uid7_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][2]~q\,
	datac => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][3]~q\,
	datad => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datae => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][1]~q\,
	combout => \cordic_0|s[3]~3_combout\);

-- Location: MLABCELL_X39_Y5_N24
\cordic_0|s[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|s[3]~4_combout\ = ( \cordic_0|Add29~1_combout\ & ( ((\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & !\cordic_0|Add29~2_combout\)) # (\cordic_0|s[3]~3_combout\) ) ) # ( !\cordic_0|Add29~1_combout\ & ( 
-- ((\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & \cordic_0|Add29~2_combout\)) # (\cordic_0|s[3]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111101000100111111110100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|ALT_INV_Add29~2_combout\,
	datad => \cordic_0|ALT_INV_s[3]~3_combout\,
	dataf => \cordic_0|ALT_INV_Add29~1_combout\,
	combout => \cordic_0|s[3]~4_combout\);

-- Location: MLABCELL_X39_Y5_N54
\cordic_0|Add34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|Add34~0_combout\ = ( !\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( !\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][1]~q\ & ( 
-- (\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\ & (!\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][2]~q\ & (!\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][3]~q\ & 
-- !\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][0]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|redist8_signA_uid7_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	datab => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][2]~q\,
	datac => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][3]~q\,
	datad => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][0]~q\,
	datae => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][1]~q\,
	combout => \cordic_0|Add34~0_combout\);

-- Location: MLABCELL_X39_Y5_N12
\cordic_0|s[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cordic_0|s[4]~5_combout\ = ( !\cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( !\cordic_0|Add34~0_combout\ $ (((!\cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|delay_signals[0][4]~q\ $ 
-- (((\cordic_0|redist8_signA_uid7_sincosTest_b_2|delay_signals[0][0]~q\)))))) ) ) # ( \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|delay_signals[0][0]~q\ & ( (!\cordic_0|Add29~3_combout\ $ (((!\cordic_0|Add29~1_combout\) # 
-- ((!\cordic_0|Add29~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101101001011010000011110011110010100101101001010000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_Add34~0_combout\,
	datab => \cordic_0|ALT_INV_Add29~1_combout\,
	datac => \cordic_0|ALT_INV_Add29~3_combout\,
	datad => \cordic_0|ALT_INV_Add29~2_combout\,
	datae => \cordic_0|redist6_firstQuadrant_uid15_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	dataf => \cordic_0|redist8_signA_uid7_sincosTest_b_2|ALT_INV_delay_signals[0][0]~q\,
	datag => \cordic_0|redist1_xPostExc_uid123_sincosTest_b_1|ALT_INV_delay_signals[0][4]~q\,
	combout => \cordic_0|s[4]~5_combout\);

-- Location: LABCELL_X83_Y8_N27
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \cordic_0|c[2]~2_combout\ & ( \cordic_0|c[0]~0_combout\ & ( \cordic_0|c[4]~4_combout\ ) ) ) # ( !\cordic_0|c[2]~2_combout\ & ( \cordic_0|c[0]~0_combout\ & ( !\cordic_0|c[4]~4_combout\ ) ) ) # ( \cordic_0|c[2]~2_combout\ & ( 
-- !\cordic_0|c[0]~0_combout\ & ( \cordic_0|c[1]~1_combout\ ) ) ) # ( !\cordic_0|c[2]~2_combout\ & ( !\cordic_0|c[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000001111111110101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_c[4]~4_combout\,
	datad => \cordic_0|ALT_INV_c[1]~1_combout\,
	datae => \cordic_0|ALT_INV_c[2]~2_combout\,
	dataf => \cordic_0|ALT_INV_c[0]~0_combout\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X83_Y8_N45
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !\cordic_0|c[0]~0_combout\ & ( !\cordic_0|c[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_c[1]~1_combout\,
	dataf => \cordic_0|ALT_INV_c[0]~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X83_Y8_N48
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( !\cordic_0|c[1]~1_combout\ & ( (!\cordic_0|c[0]~0_combout\ & \cordic_0|c[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_c[0]~0_combout\,
	datab => \cordic_0|ALT_INV_c[2]~2_combout\,
	dataf => \cordic_0|ALT_INV_c[1]~1_combout\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X83_Y8_N51
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \cordic_0|c[1]~1_combout\ & ( (\cordic_0|c[0]~0_combout\ & ((\cordic_0|c[4]~4_combout\) # (\cordic_0|c[2]~2_combout\))) ) ) # ( !\cordic_0|c[1]~1_combout\ & ( (!\cordic_0|c[0]~0_combout\ & (\cordic_0|c[2]~2_combout\)) # 
-- (\cordic_0|c[0]~0_combout\ & ((!\cordic_0|c[2]~2_combout\) # (!\cordic_0|c[4]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101100110011101110110011000010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_c[0]~0_combout\,
	datab => \cordic_0|ALT_INV_c[2]~2_combout\,
	datad => \cordic_0|ALT_INV_c[4]~4_combout\,
	dataf => \cordic_0|ALT_INV_c[1]~1_combout\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X83_Y8_N30
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !\cordic_0|c[0]~0_combout\ & ( (\cordic_0|c[1]~1_combout\ & (!\cordic_0|c[2]~2_combout\ $ (\cordic_0|c[4]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|ALT_INV_c[2]~2_combout\,
	datac => \cordic_0|ALT_INV_c[1]~1_combout\,
	datad => \cordic_0|ALT_INV_c[4]~4_combout\,
	dataf => \cordic_0|ALT_INV_c[0]~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X83_Y8_N33
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \cordic_0|c[0]~0_combout\ & ( !\cordic_0|c[1]~1_combout\ $ (\cordic_0|c[4]~4_combout\) ) ) # ( !\cordic_0|c[0]~0_combout\ & ( !\cordic_0|c[2]~2_combout\ $ (((!\cordic_0|c[1]~1_combout\) # (!\cordic_0|c[4]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_c[1]~1_combout\,
	datac => \cordic_0|ALT_INV_c[2]~2_combout\,
	datad => \cordic_0|ALT_INV_c[4]~4_combout\,
	dataf => \cordic_0|ALT_INV_c[0]~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X83_Y8_N36
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \cordic_0|c[2]~2_combout\ & ( \cordic_0|c[0]~0_combout\ & ( !\cordic_0|c[1]~1_combout\ $ (!\cordic_0|c[4]~4_combout\) ) ) ) # ( !\cordic_0|c[2]~2_combout\ & ( \cordic_0|c[0]~0_combout\ & ( !\cordic_0|c[1]~1_combout\ $ 
-- (!\cordic_0|c[4]~4_combout\) ) ) ) # ( \cordic_0|c[2]~2_combout\ & ( !\cordic_0|c[0]~0_combout\ & ( \cordic_0|c[1]~1_combout\ ) ) ) # ( !\cordic_0|c[2]~2_combout\ & ( !\cordic_0|c[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_c[1]~1_combout\,
	datac => \cordic_0|ALT_INV_c[4]~4_combout\,
	datae => \cordic_0|ALT_INV_c[2]~2_combout\,
	dataf => \cordic_0|ALT_INV_c[0]~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X83_Y8_N54
\c_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_2~0_combout\ = ( \cordic_0|c[2]~2_combout\ & ( \cordic_0|c[0]~0_combout\ & ( !\cordic_0|c[4]~4_combout\ $ (!\cordic_0|c[3]~3_combout\) ) ) ) # ( !\cordic_0|c[2]~2_combout\ & ( \cordic_0|c[0]~0_combout\ & ( !\cordic_0|c[4]~4_combout\ $ 
-- (!\cordic_0|c[3]~3_combout\) ) ) ) # ( \cordic_0|c[2]~2_combout\ & ( !\cordic_0|c[0]~0_combout\ & ( !\cordic_0|c[3]~3_combout\ $ (((!\cordic_0|c[4]~4_combout\) # (!\cordic_0|c[1]~1_combout\))) ) ) ) # ( !\cordic_0|c[2]~2_combout\ & ( 
-- !\cordic_0|c[0]~0_combout\ & ( !\cordic_0|c[4]~4_combout\ $ (!\cordic_0|c[3]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110001101100011011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_c[4]~4_combout\,
	datab => \cordic_0|ALT_INV_c[3]~3_combout\,
	datac => \cordic_0|ALT_INV_c[1]~1_combout\,
	datae => \cordic_0|ALT_INV_c[2]~2_combout\,
	dataf => \cordic_0|ALT_INV_c[0]~0_combout\,
	combout => \c_2~0_combout\);

-- Location: LABCELL_X83_Y8_N3
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \cordic_0|s[1]~1_combout\ & ( (!\cordic_0|s[0]~0_combout\) # (!\cordic_0|s[4]~5_combout\ $ (\cordic_0|s[2]~2_combout\)) ) ) # ( !\cordic_0|s[1]~1_combout\ & ( !\cordic_0|s[2]~2_combout\ $ (((\cordic_0|s[4]~5_combout\ & 
-- \cordic_0|s[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000111100001111000011110000111101101111011011110110111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_s[4]~5_combout\,
	datab => \cordic_0|ALT_INV_s[0]~0_combout\,
	datac => \cordic_0|ALT_INV_s[2]~2_combout\,
	dataf => \cordic_0|ALT_INV_s[1]~1_combout\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X83_Y8_N21
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\cordic_0|s[1]~1_combout\ & !\cordic_0|s[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_s[1]~1_combout\,
	datab => \cordic_0|ALT_INV_s[0]~0_combout\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X83_Y8_N18
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \cordic_0|s[2]~2_combout\ & ( (!\cordic_0|s[1]~1_combout\ & !\cordic_0|s[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_s[1]~1_combout\,
	datab => \cordic_0|ALT_INV_s[0]~0_combout\,
	dataf => \cordic_0|ALT_INV_s[2]~2_combout\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X83_Y8_N12
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \cordic_0|s[1]~1_combout\ & ( (\cordic_0|s[0]~0_combout\ & ((\cordic_0|s[2]~2_combout\) # (\cordic_0|s[4]~5_combout\))) ) ) # ( !\cordic_0|s[1]~1_combout\ & ( (!\cordic_0|s[0]~0_combout\ & ((\cordic_0|s[2]~2_combout\))) # 
-- (\cordic_0|s[0]~0_combout\ & ((!\cordic_0|s[4]~5_combout\) # (!\cordic_0|s[2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111000111110001111100011111000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_s[4]~5_combout\,
	datab => \cordic_0|ALT_INV_s[0]~0_combout\,
	datac => \cordic_0|ALT_INV_s[2]~2_combout\,
	dataf => \cordic_0|ALT_INV_s[1]~1_combout\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X83_Y8_N15
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \cordic_0|s[1]~1_combout\ & ( (!\cordic_0|s[0]~0_combout\ & (!\cordic_0|s[4]~5_combout\ $ (\cordic_0|s[2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_s[4]~5_combout\,
	datab => \cordic_0|ALT_INV_s[0]~0_combout\,
	datac => \cordic_0|ALT_INV_s[2]~2_combout\,
	dataf => \cordic_0|ALT_INV_s[1]~1_combout\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X83_Y8_N6
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \cordic_0|s[2]~2_combout\ & ( (!\cordic_0|s[0]~0_combout\ & ((!\cordic_0|s[1]~1_combout\) # (!\cordic_0|s[4]~5_combout\))) # (\cordic_0|s[0]~0_combout\ & (!\cordic_0|s[1]~1_combout\ $ (\cordic_0|s[4]~5_combout\))) ) ) # ( 
-- !\cordic_0|s[2]~2_combout\ & ( (!\cordic_0|s[1]~1_combout\ & (\cordic_0|s[0]~0_combout\ & !\cordic_0|s[4]~5_combout\)) # (\cordic_0|s[1]~1_combout\ & ((\cordic_0|s[4]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001111001100000000111111111100110000111111110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|ALT_INV_s[0]~0_combout\,
	datac => \cordic_0|ALT_INV_s[1]~1_combout\,
	datad => \cordic_0|ALT_INV_s[4]~5_combout\,
	dataf => \cordic_0|ALT_INV_s[2]~2_combout\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X83_Y8_N0
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \cordic_0|s[2]~2_combout\ & ( !\cordic_0|s[1]~1_combout\ $ (((!\cordic_0|s[0]~0_combout\) # (!\cordic_0|s[4]~5_combout\))) ) ) # ( !\cordic_0|s[2]~2_combout\ & ( (!\cordic_0|s[0]~0_combout\) # (!\cordic_0|s[1]~1_combout\ $ 
-- (!\cordic_0|s[4]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111100110011111111110000001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cordic_0|ALT_INV_s[0]~0_combout\,
	datac => \cordic_0|ALT_INV_s[1]~1_combout\,
	datad => \cordic_0|ALT_INV_s[4]~5_combout\,
	dataf => \cordic_0|ALT_INV_s[2]~2_combout\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X83_Y8_N9
\s_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_2~0_combout\ = ( \cordic_0|s[2]~2_combout\ & ( !\cordic_0|s[3]~4_combout\ $ (((!\cordic_0|s[4]~5_combout\) # ((!\cordic_0|s[0]~0_combout\ & !\cordic_0|s[1]~1_combout\)))) ) ) # ( !\cordic_0|s[2]~2_combout\ & ( !\cordic_0|s[4]~5_combout\ $ 
-- (!\cordic_0|s[3]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101000010101111010100001010111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cordic_0|ALT_INV_s[4]~5_combout\,
	datab => \cordic_0|ALT_INV_s[0]~0_combout\,
	datac => \cordic_0|ALT_INV_s[1]~1_combout\,
	datad => \cordic_0|ALT_INV_s[3]~4_combout\,
	dataf => \cordic_0|ALT_INV_s[2]~2_combout\,
	combout => \s_2~0_combout\);

-- Location: MLABCELL_X21_Y26_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


