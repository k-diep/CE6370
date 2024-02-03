-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 22.1std (Release Build #922)
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2023 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from sincos_CORDIC_0
-- VHDL created on Fri Sep 29 20:37:34 2023


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity sincos_CORDIC_0 is
    port (
        a : in std_logic_vector(9 downto 0);  -- sfix10_en7
        c : out std_logic_vector(4 downto 0);  -- sfix5_en3
        s : out std_logic_vector(4 downto 0);  -- sfix5_en3
        clk : in std_logic;
        areset : in std_logic
    );
end sincos_CORDIC_0;

architecture normal of sincos_CORDIC_0 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal constantZero_uid6_sincosTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal signA_uid7_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignA_uid8_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal absAE_uid9_sincosTest_a : STD_LOGIC_VECTOR (11 downto 0);
    signal absAE_uid9_sincosTest_b : STD_LOGIC_VECTOR (11 downto 0);
    signal absAE_uid9_sincosTest_o : STD_LOGIC_VECTOR (11 downto 0);
    signal absAE_uid9_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal absAE_uid9_sincosTest_q : STD_LOGIC_VECTOR (10 downto 0);
    signal absAR_uid10_sincosTest_in : STD_LOGIC_VECTOR (8 downto 0);
    signal absAR_uid10_sincosTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal cstPiO2_uid11_sincosTest_q : STD_LOGIC_VECTOR (6 downto 0);
    signal bPostPad_uid13_sincosTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal argMPiO2_uid14_sincosTest_a : STD_LOGIC_VECTOR (9 downto 0);
    signal argMPiO2_uid14_sincosTest_b : STD_LOGIC_VECTOR (9 downto 0);
    signal argMPiO2_uid14_sincosTest_o : STD_LOGIC_VECTOR (9 downto 0);
    signal argMPiO2_uid14_sincosTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal firstQuadrant_uid15_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal absARE_uid16_sincosTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal absARE_uid16_sincosTest_b : STD_LOGIC_VECTOR (6 downto 0);
    signal argMPiO2_uid17_sincosTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal argMPiO2_uid17_sincosTest_b : STD_LOGIC_VECTOR (6 downto 0);
    signal absA_uid18_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal absA_uid18_sincosTest_q : STD_LOGIC_VECTOR (6 downto 0);
    signal cstOneOverK_uid19_sincosTest_q : STD_LOGIC_VECTOR (13 downto 0);
    signal cstArcTan2Mi_0_uid23_sincosTest_q : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_1_uid29_sincosTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_1CostZeroPaddingA_uid30_sincosTest_q : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1E_1NA_uid31_sincosTest_q : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1E_1sumAHighB_uid32_sincosTest_a : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_1sumAHighB_uid32_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_1sumAHighB_uid32_sincosTest_o : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1E_1sumAHighB_uid32_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_1sumAHighB_uid32_sincosTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal invSignOfSelectionSignal_uid33_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_1CostZeroPaddingA_uid34_sincosTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal aip1E_1NA_uid35_sincosTest_q : STD_LOGIC_VECTOR (12 downto 0);
    signal aip1E_1sumAHighB_uid36_sincosTest_a : STD_LOGIC_VECTOR (15 downto 0);
    signal aip1E_1sumAHighB_uid36_sincosTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal aip1E_1sumAHighB_uid36_sincosTest_o : STD_LOGIC_VECTOR (15 downto 0);
    signal aip1E_1sumAHighB_uid36_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_1sumAHighB_uid36_sincosTest_q : STD_LOGIC_VECTOR (14 downto 0);
    signal xip1_1_topRange_uid38_sincosTest_in : STD_LOGIC_VECTOR (15 downto 0);
    signal xip1_1_topRange_uid38_sincosTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal xip1_1_mergedSignalTM_uid39_sincosTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal xMSB_uid41_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1_1_mergedSignalTM_uid45_sincosTest_q : STD_LOGIC_VECTOR (16 downto 0);
    signal aip1E_uid47_sincosTest_in : STD_LOGIC_VECTOR (13 downto 0);
    signal aip1E_uid47_sincosTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal xMSB_uid48_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signOfSelectionSignal_uid50_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid53_sincosTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal twoToMiSiYip_uid54_sincosTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal cstArcTan2Mi_1_uid55_sincosTest_q : STD_LOGIC_VECTOR (11 downto 0);
    signal xip1E_2_uid57_sincosTest_a : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_2_uid57_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_2_uid57_sincosTest_o : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_2_uid57_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_2_uid57_sincosTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_2_uid58_sincosTest_a : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_2_uid58_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_2_uid58_sincosTest_o : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_2_uid58_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2_uid58_sincosTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal aip1E_2_uid60_sincosTest_a : STD_LOGIC_VECTOR (15 downto 0);
    signal aip1E_2_uid60_sincosTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal aip1E_2_uid60_sincosTest_o : STD_LOGIC_VECTOR (15 downto 0);
    signal aip1E_2_uid60_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_2_uid60_sincosTest_q : STD_LOGIC_VECTOR (14 downto 0);
    signal xip1_2_uid61_sincosTest_in : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1_2_uid61_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_2_uid62_sincosTest_in : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_2_uid62_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal aip1E_uid63_sincosTest_in : STD_LOGIC_VECTOR (12 downto 0);
    signal aip1E_uid63_sincosTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal xMSB_uid64_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signOfSelectionSignal_uid66_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid69_sincosTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal twoToMiSiYip_uid70_sincosTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal cstArcTan2Mi_2_uid71_sincosTest_q : STD_LOGIC_VECTOR (10 downto 0);
    signal xip1E_3_uid73_sincosTest_a : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3_uid73_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3_uid73_sincosTest_o : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_3_uid73_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_3_uid73_sincosTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_3_uid74_sincosTest_a : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_3_uid74_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_3_uid74_sincosTest_o : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_3_uid74_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3_uid74_sincosTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal aip1E_3_uid76_sincosTest_a : STD_LOGIC_VECTOR (14 downto 0);
    signal aip1E_3_uid76_sincosTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal aip1E_3_uid76_sincosTest_o : STD_LOGIC_VECTOR (14 downto 0);
    signal aip1E_3_uid76_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_3_uid76_sincosTest_q : STD_LOGIC_VECTOR (13 downto 0);
    signal xip1_3_uid77_sincosTest_in : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1_3_uid77_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_3_uid78_sincosTest_in : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_3_uid78_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal aip1E_uid79_sincosTest_in : STD_LOGIC_VECTOR (11 downto 0);
    signal aip1E_uid79_sincosTest_b : STD_LOGIC_VECTOR (11 downto 0);
    signal xMSB_uid80_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signOfSelectionSignal_uid82_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid85_sincosTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal twoToMiSiYip_uid86_sincosTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal cstArcTan2Mi_3_uid87_sincosTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal xip1E_4_uid89_sincosTest_a : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_4_uid89_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_4_uid89_sincosTest_o : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_4_uid89_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4_uid89_sincosTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_4_uid90_sincosTest_a : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_4_uid90_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_4_uid90_sincosTest_o : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_4_uid90_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_4_uid90_sincosTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal aip1E_4_uid92_sincosTest_a : STD_LOGIC_VECTOR (13 downto 0);
    signal aip1E_4_uid92_sincosTest_b : STD_LOGIC_VECTOR (13 downto 0);
    signal aip1E_4_uid92_sincosTest_o : STD_LOGIC_VECTOR (13 downto 0);
    signal aip1E_4_uid92_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aip1E_4_uid92_sincosTest_q : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1_4_uid93_sincosTest_in : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1_4_uid93_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_4_uid94_sincosTest_in : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_4_uid94_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal aip1E_uid95_sincosTest_in : STD_LOGIC_VECTOR (10 downto 0);
    signal aip1E_uid95_sincosTest_b : STD_LOGIC_VECTOR (10 downto 0);
    signal xMSB_uid96_sincosTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signOfSelectionSignal_uid98_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid101_sincosTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal twoToMiSiYip_uid102_sincosTest_b : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1E_5_uid105_sincosTest_a : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_5_uid105_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_5_uid105_sincosTest_o : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1E_5_uid105_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_5_uid105_sincosTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_5_uid106_sincosTest_a : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_5_uid106_sincosTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_5_uid106_sincosTest_o : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_5_uid106_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5_uid106_sincosTest_q : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1_5_uid112_sincosTest_in : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1_5_uid112_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_5_uid113_sincosTest_in : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_5_uid113_sincosTest_b : STD_LOGIC_VECTOR (16 downto 0);
    signal xSumPreRnd_uid115_sincosTest_in : STD_LOGIC_VECTOR (15 downto 0);
    signal xSumPreRnd_uid115_sincosTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xSumPostRnd_uid118_sincosTest_a : STD_LOGIC_VECTOR (6 downto 0);
    signal xSumPostRnd_uid118_sincosTest_b : STD_LOGIC_VECTOR (6 downto 0);
    signal xSumPostRnd_uid118_sincosTest_o : STD_LOGIC_VECTOR (6 downto 0);
    signal xSumPostRnd_uid118_sincosTest_q : STD_LOGIC_VECTOR (6 downto 0);
    signal ySumPreRnd_uid119_sincosTest_in : STD_LOGIC_VECTOR (15 downto 0);
    signal ySumPreRnd_uid119_sincosTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal ySumPostRnd_uid122_sincosTest_a : STD_LOGIC_VECTOR (6 downto 0);
    signal ySumPostRnd_uid122_sincosTest_b : STD_LOGIC_VECTOR (6 downto 0);
    signal ySumPostRnd_uid122_sincosTest_o : STD_LOGIC_VECTOR (6 downto 0);
    signal ySumPostRnd_uid122_sincosTest_q : STD_LOGIC_VECTOR (6 downto 0);
    signal xPostExc_uid123_sincosTest_in : STD_LOGIC_VECTOR (5 downto 0);
    signal xPostExc_uid123_sincosTest_b : STD_LOGIC_VECTOR (4 downto 0);
    signal yPostExc_uid124_sincosTest_in : STD_LOGIC_VECTOR (5 downto 0);
    signal yPostExc_uid124_sincosTest_b : STD_LOGIC_VECTOR (4 downto 0);
    signal invFirstQuadrant_uid125_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinNegCond2_uid126_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinNegCond1_uid127_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinNegCond0_uid129_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinNegCond_uid130_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstZeroForAddSub_uid132_sincosTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal invSinNegCond_uid133_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinPostNeg_uid134_sincosTest_a : STD_LOGIC_VECTOR (6 downto 0);
    signal sinPostNeg_uid134_sincosTest_b : STD_LOGIC_VECTOR (6 downto 0);
    signal sinPostNeg_uid134_sincosTest_o : STD_LOGIC_VECTOR (6 downto 0);
    signal sinPostNeg_uid134_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal sinPostNeg_uid134_sincosTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal invCosNegCond_uid135_sincosTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cosPostNeg_uid136_sincosTest_a : STD_LOGIC_VECTOR (6 downto 0);
    signal cosPostNeg_uid136_sincosTest_b : STD_LOGIC_VECTOR (6 downto 0);
    signal cosPostNeg_uid136_sincosTest_o : STD_LOGIC_VECTOR (6 downto 0);
    signal cosPostNeg_uid136_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal cosPostNeg_uid136_sincosTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal xPostRR_uid137_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xPostRR_uid137_sincosTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal xPostRR_uid138_sincosTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xPostRR_uid138_sincosTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal cos_uid139_sincosTest_in : STD_LOGIC_VECTOR (4 downto 0);
    signal cos_uid139_sincosTest_b : STD_LOGIC_VECTOR (4 downto 0);
    signal sin_uid140_sincosTest_in : STD_LOGIC_VECTOR (4 downto 0);
    signal sin_uid140_sincosTest_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist0_yPostExc_uid124_sincosTest_b_1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist1_xPostExc_uid123_sincosTest_b_1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist2_xMSB_uid96_sincosTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_xMSB_uid80_sincosTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_xMSB_uid64_sincosTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_xMSB_uid48_sincosTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_firstQuadrant_uid15_sincosTest_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_invSignA_uid8_sincosTest_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_signA_uid7_sincosTest_b_2_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- invFirstQuadrant_uid125_sincosTest(LOGICAL,124)@2
    invFirstQuadrant_uid125_sincosTest_q <= not (redist6_firstQuadrant_uid15_sincosTest_b_2_q);

    -- signA_uid7_sincosTest(BITSELECT,6)@0
    signA_uid7_sincosTest_b <= STD_LOGIC_VECTOR(a(9 downto 9));

    -- redist8_signA_uid7_sincosTest_b_2(DELAY,148)
    redist8_signA_uid7_sincosTest_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => signA_uid7_sincosTest_b, xout => redist8_signA_uid7_sincosTest_b_2_q, clk => clk, aclr => areset );

    -- sinNegCond2_uid126_sincosTest(LOGICAL,125)@2
    sinNegCond2_uid126_sincosTest_q <= redist8_signA_uid7_sincosTest_b_2_q and invFirstQuadrant_uid125_sincosTest_q;

    -- sinNegCond1_uid127_sincosTest(LOGICAL,126)@2
    sinNegCond1_uid127_sincosTest_q <= redist8_signA_uid7_sincosTest_b_2_q and redist6_firstQuadrant_uid15_sincosTest_b_2_q;

    -- invSignA_uid8_sincosTest(LOGICAL,7)@0
    invSignA_uid8_sincosTest_q <= not (signA_uid7_sincosTest_b);

    -- redist7_invSignA_uid8_sincosTest_q_2(DELAY,147)
    redist7_invSignA_uid8_sincosTest_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => invSignA_uid8_sincosTest_q, xout => redist7_invSignA_uid8_sincosTest_q_2_q, clk => clk, aclr => areset );

    -- sinNegCond0_uid129_sincosTest(LOGICAL,128)@2
    sinNegCond0_uid129_sincosTest_q <= redist7_invSignA_uid8_sincosTest_q_2_q and invFirstQuadrant_uid125_sincosTest_q;

    -- sinNegCond_uid130_sincosTest(LOGICAL,129)@2
    sinNegCond_uid130_sincosTest_q <= sinNegCond0_uid129_sincosTest_q or sinNegCond1_uid127_sincosTest_q or sinNegCond2_uid126_sincosTest_q;

    -- invSinNegCond_uid133_sincosTest(LOGICAL,132)@2
    invSinNegCond_uid133_sincosTest_q <= not (sinNegCond_uid130_sincosTest_q);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- xMSB_uid80_sincosTest(BITSELECT,79)@0
    xMSB_uid80_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid79_sincosTest_b(11 downto 11));

    -- cstArcTan2Mi_3_uid87_sincosTest(CONSTANT,86)
    cstArcTan2Mi_3_uid87_sincosTest_q <= "0111111101";

    -- xMSB_uid64_sincosTest(BITSELECT,63)@0
    xMSB_uid64_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid63_sincosTest_b(12 downto 12));

    -- cstArcTan2Mi_2_uid71_sincosTest(CONSTANT,70)
    cstArcTan2Mi_2_uid71_sincosTest_q <= "01111101011";

    -- xMSB_uid48_sincosTest(BITSELECT,47)@0
    xMSB_uid48_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid47_sincosTest_b(13 downto 13));

    -- cstArcTan2Mi_1_uid55_sincosTest(CONSTANT,54)
    cstArcTan2Mi_1_uid55_sincosTest_q <= "011101101011";

    -- invSignOfSelectionSignal_uid33_sincosTest(LOGICAL,32)@0
    invSignOfSelectionSignal_uid33_sincosTest_q <= not (VCC_q);

    -- cstArcTan2Mi_0_uid23_sincosTest(CONSTANT,22)
    cstArcTan2Mi_0_uid23_sincosTest_q <= "0110010010001";

    -- constantZero_uid6_sincosTest(CONSTANT,5)
    constantZero_uid6_sincosTest_q <= "0000000000";

    -- absAE_uid9_sincosTest(ADDSUB,8)@0
    absAE_uid9_sincosTest_s <= invSignA_uid8_sincosTest_q;
    absAE_uid9_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => constantZero_uid6_sincosTest_q(9)) & constantZero_uid6_sincosTest_q));
    absAE_uid9_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => a(9)) & a));
    absAE_uid9_sincosTest_combproc: PROCESS (absAE_uid9_sincosTest_a, absAE_uid9_sincosTest_b, absAE_uid9_sincosTest_s)
    BEGIN
        IF (absAE_uid9_sincosTest_s = "1") THEN
            absAE_uid9_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(absAE_uid9_sincosTest_a) + SIGNED(absAE_uid9_sincosTest_b));
        ELSE
            absAE_uid9_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(absAE_uid9_sincosTest_a) - SIGNED(absAE_uid9_sincosTest_b));
        END IF;
    END PROCESS;
    absAE_uid9_sincosTest_q <= absAE_uid9_sincosTest_o(10 downto 0);

    -- absAR_uid10_sincosTest(BITSELECT,9)@0
    absAR_uid10_sincosTest_in <= absAE_uid9_sincosTest_q(8 downto 0);
    absAR_uid10_sincosTest_b <= absAR_uid10_sincosTest_in(8 downto 0);

    -- absARE_uid16_sincosTest(BITSELECT,15)@0
    absARE_uid16_sincosTest_in <= absAR_uid10_sincosTest_b(7 downto 0);
    absARE_uid16_sincosTest_b <= absARE_uid16_sincosTest_in(7 downto 1);

    -- cstPiO2_uid11_sincosTest(CONSTANT,10)
    cstPiO2_uid11_sincosTest_q <= "1100101";

    -- bPostPad_uid13_sincosTest(BITJOIN,12)@0
    bPostPad_uid13_sincosTest_q <= cstPiO2_uid11_sincosTest_q & GND_q;

    -- argMPiO2_uid14_sincosTest(SUB,13)@0
    argMPiO2_uid14_sincosTest_a <= STD_LOGIC_VECTOR("0" & absAR_uid10_sincosTest_b);
    argMPiO2_uid14_sincosTest_b <= STD_LOGIC_VECTOR("00" & bPostPad_uid13_sincosTest_q);
    argMPiO2_uid14_sincosTest_o <= STD_LOGIC_VECTOR(UNSIGNED(argMPiO2_uid14_sincosTest_a) - UNSIGNED(argMPiO2_uid14_sincosTest_b));
    argMPiO2_uid14_sincosTest_q <= argMPiO2_uid14_sincosTest_o(9 downto 0);

    -- argMPiO2_uid17_sincosTest(BITSELECT,16)@0
    argMPiO2_uid17_sincosTest_in <= argMPiO2_uid14_sincosTest_q(7 downto 0);
    argMPiO2_uid17_sincosTest_b <= argMPiO2_uid17_sincosTest_in(7 downto 1);

    -- firstQuadrant_uid15_sincosTest(BITSELECT,14)@0
    firstQuadrant_uid15_sincosTest_b <= STD_LOGIC_VECTOR(argMPiO2_uid14_sincosTest_q(9 downto 9));

    -- absA_uid18_sincosTest(MUX,17)@0
    absA_uid18_sincosTest_s <= firstQuadrant_uid15_sincosTest_b;
    absA_uid18_sincosTest_combproc: PROCESS (absA_uid18_sincosTest_s, argMPiO2_uid17_sincosTest_b, absARE_uid16_sincosTest_b)
    BEGIN
        CASE (absA_uid18_sincosTest_s) IS
            WHEN "0" => absA_uid18_sincosTest_q <= argMPiO2_uid17_sincosTest_b;
            WHEN "1" => absA_uid18_sincosTest_q <= absARE_uid16_sincosTest_b;
            WHEN OTHERS => absA_uid18_sincosTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- aip1E_1CostZeroPaddingA_uid34_sincosTest(CONSTANT,33)
    aip1E_1CostZeroPaddingA_uid34_sincosTest_q <= "000000";

    -- aip1E_1NA_uid35_sincosTest(BITJOIN,34)@0
    aip1E_1NA_uid35_sincosTest_q <= absA_uid18_sincosTest_q & aip1E_1CostZeroPaddingA_uid34_sincosTest_q;

    -- aip1E_1sumAHighB_uid36_sincosTest(ADDSUB,35)@0
    aip1E_1sumAHighB_uid36_sincosTest_s <= invSignOfSelectionSignal_uid33_sincosTest_q;
    aip1E_1sumAHighB_uid36_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & aip1E_1NA_uid35_sincosTest_q));
    aip1E_1sumAHighB_uid36_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 13 => cstArcTan2Mi_0_uid23_sincosTest_q(12)) & cstArcTan2Mi_0_uid23_sincosTest_q));
    aip1E_1sumAHighB_uid36_sincosTest_combproc: PROCESS (aip1E_1sumAHighB_uid36_sincosTest_a, aip1E_1sumAHighB_uid36_sincosTest_b, aip1E_1sumAHighB_uid36_sincosTest_s)
    BEGIN
        IF (aip1E_1sumAHighB_uid36_sincosTest_s = "1") THEN
            aip1E_1sumAHighB_uid36_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_1sumAHighB_uid36_sincosTest_a) + SIGNED(aip1E_1sumAHighB_uid36_sincosTest_b));
        ELSE
            aip1E_1sumAHighB_uid36_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_1sumAHighB_uid36_sincosTest_a) - SIGNED(aip1E_1sumAHighB_uid36_sincosTest_b));
        END IF;
    END PROCESS;
    aip1E_1sumAHighB_uid36_sincosTest_q <= aip1E_1sumAHighB_uid36_sincosTest_o(14 downto 0);

    -- aip1E_uid47_sincosTest(BITSELECT,46)@0
    aip1E_uid47_sincosTest_in <= STD_LOGIC_VECTOR(aip1E_1sumAHighB_uid36_sincosTest_q(13 downto 0));
    aip1E_uid47_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid47_sincosTest_in(13 downto 0));

    -- aip1E_2_uid60_sincosTest(ADDSUB,59)@0
    aip1E_2_uid60_sincosTest_s <= xMSB_uid48_sincosTest_b;
    aip1E_2_uid60_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => aip1E_uid47_sincosTest_b(13)) & aip1E_uid47_sincosTest_b));
    aip1E_2_uid60_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 12 => cstArcTan2Mi_1_uid55_sincosTest_q(11)) & cstArcTan2Mi_1_uid55_sincosTest_q));
    aip1E_2_uid60_sincosTest_combproc: PROCESS (aip1E_2_uid60_sincosTest_a, aip1E_2_uid60_sincosTest_b, aip1E_2_uid60_sincosTest_s)
    BEGIN
        IF (aip1E_2_uid60_sincosTest_s = "1") THEN
            aip1E_2_uid60_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_2_uid60_sincosTest_a) + SIGNED(aip1E_2_uid60_sincosTest_b));
        ELSE
            aip1E_2_uid60_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_2_uid60_sincosTest_a) - SIGNED(aip1E_2_uid60_sincosTest_b));
        END IF;
    END PROCESS;
    aip1E_2_uid60_sincosTest_q <= aip1E_2_uid60_sincosTest_o(14 downto 0);

    -- aip1E_uid63_sincosTest(BITSELECT,62)@0
    aip1E_uid63_sincosTest_in <= STD_LOGIC_VECTOR(aip1E_2_uid60_sincosTest_q(12 downto 0));
    aip1E_uid63_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid63_sincosTest_in(12 downto 0));

    -- aip1E_3_uid76_sincosTest(ADDSUB,75)@0
    aip1E_3_uid76_sincosTest_s <= xMSB_uid64_sincosTest_b;
    aip1E_3_uid76_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 13 => aip1E_uid63_sincosTest_b(12)) & aip1E_uid63_sincosTest_b));
    aip1E_3_uid76_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 11 => cstArcTan2Mi_2_uid71_sincosTest_q(10)) & cstArcTan2Mi_2_uid71_sincosTest_q));
    aip1E_3_uid76_sincosTest_combproc: PROCESS (aip1E_3_uid76_sincosTest_a, aip1E_3_uid76_sincosTest_b, aip1E_3_uid76_sincosTest_s)
    BEGIN
        IF (aip1E_3_uid76_sincosTest_s = "1") THEN
            aip1E_3_uid76_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_3_uid76_sincosTest_a) + SIGNED(aip1E_3_uid76_sincosTest_b));
        ELSE
            aip1E_3_uid76_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_3_uid76_sincosTest_a) - SIGNED(aip1E_3_uid76_sincosTest_b));
        END IF;
    END PROCESS;
    aip1E_3_uid76_sincosTest_q <= aip1E_3_uid76_sincosTest_o(13 downto 0);

    -- aip1E_uid79_sincosTest(BITSELECT,78)@0
    aip1E_uid79_sincosTest_in <= STD_LOGIC_VECTOR(aip1E_3_uid76_sincosTest_q(11 downto 0));
    aip1E_uid79_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid79_sincosTest_in(11 downto 0));

    -- aip1E_4_uid92_sincosTest(ADDSUB,91)@0
    aip1E_4_uid92_sincosTest_s <= xMSB_uid80_sincosTest_b;
    aip1E_4_uid92_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => aip1E_uid79_sincosTest_b(11)) & aip1E_uid79_sincosTest_b));
    aip1E_4_uid92_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 10 => cstArcTan2Mi_3_uid87_sincosTest_q(9)) & cstArcTan2Mi_3_uid87_sincosTest_q));
    aip1E_4_uid92_sincosTest_combproc: PROCESS (aip1E_4_uid92_sincosTest_a, aip1E_4_uid92_sincosTest_b, aip1E_4_uid92_sincosTest_s)
    BEGIN
        IF (aip1E_4_uid92_sincosTest_s = "1") THEN
            aip1E_4_uid92_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_4_uid92_sincosTest_a) + SIGNED(aip1E_4_uid92_sincosTest_b));
        ELSE
            aip1E_4_uid92_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(aip1E_4_uid92_sincosTest_a) - SIGNED(aip1E_4_uid92_sincosTest_b));
        END IF;
    END PROCESS;
    aip1E_4_uid92_sincosTest_q <= aip1E_4_uid92_sincosTest_o(12 downto 0);

    -- aip1E_uid95_sincosTest(BITSELECT,94)@0
    aip1E_uid95_sincosTest_in <= STD_LOGIC_VECTOR(aip1E_4_uid92_sincosTest_q(10 downto 0));
    aip1E_uid95_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid95_sincosTest_in(10 downto 0));

    -- xMSB_uid96_sincosTest(BITSELECT,95)@0
    xMSB_uid96_sincosTest_b <= STD_LOGIC_VECTOR(aip1E_uid95_sincosTest_b(10 downto 10));

    -- redist2_xMSB_uid96_sincosTest_b_1(DELAY,142)
    redist2_xMSB_uid96_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid96_sincosTest_b, xout => redist2_xMSB_uid96_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- signOfSelectionSignal_uid98_sincosTest(LOGICAL,97)@1
    signOfSelectionSignal_uid98_sincosTest_q <= not (redist2_xMSB_uid96_sincosTest_b_1_q);

    -- redist3_xMSB_uid80_sincosTest_b_1(DELAY,143)
    redist3_xMSB_uid80_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid80_sincosTest_b, xout => redist3_xMSB_uid80_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- redist4_xMSB_uid64_sincosTest_b_1(DELAY,144)
    redist4_xMSB_uid64_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid64_sincosTest_b, xout => redist4_xMSB_uid64_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- signOfSelectionSignal_uid66_sincosTest(LOGICAL,65)@1
    signOfSelectionSignal_uid66_sincosTest_q <= not (redist4_xMSB_uid64_sincosTest_b_1_q);

    -- redist5_xMSB_uid48_sincosTest_b_1(DELAY,145)
    redist5_xMSB_uid48_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid48_sincosTest_b, xout => redist5_xMSB_uid48_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- xMSB_uid41_sincosTest(BITSELECT,40)@1
    xMSB_uid41_sincosTest_b <= STD_LOGIC_VECTOR(yip1E_1sumAHighB_uid32_sincosTest_q(15 downto 15));

    -- cstOneOverK_uid19_sincosTest(CONSTANT,18)
    cstOneOverK_uid19_sincosTest_q <= "10011011011101";

    -- yip1E_1CostZeroPaddingA_uid30_sincosTest(CONSTANT,29)
    yip1E_1CostZeroPaddingA_uid30_sincosTest_q <= "00000000000000";

    -- yip1E_1NA_uid31_sincosTest(BITJOIN,30)@1
    yip1E_1NA_uid31_sincosTest_q <= GND_q & yip1E_1CostZeroPaddingA_uid30_sincosTest_q;

    -- yip1E_1sumAHighB_uid32_sincosTest(ADDSUB,31)@1
    yip1E_1sumAHighB_uid32_sincosTest_s <= VCC_q;
    yip1E_1sumAHighB_uid32_sincosTest_a <= STD_LOGIC_VECTOR("00" & yip1E_1NA_uid31_sincosTest_q);
    yip1E_1sumAHighB_uid32_sincosTest_b <= STD_LOGIC_VECTOR("000" & cstOneOverK_uid19_sincosTest_q);
    yip1E_1sumAHighB_uid32_sincosTest_combproc: PROCESS (yip1E_1sumAHighB_uid32_sincosTest_a, yip1E_1sumAHighB_uid32_sincosTest_b, yip1E_1sumAHighB_uid32_sincosTest_s)
    BEGIN
        IF (yip1E_1sumAHighB_uid32_sincosTest_s = "1") THEN
            yip1E_1sumAHighB_uid32_sincosTest_o <= STD_LOGIC_VECTOR(UNSIGNED(yip1E_1sumAHighB_uid32_sincosTest_a) + UNSIGNED(yip1E_1sumAHighB_uid32_sincosTest_b));
        ELSE
            yip1E_1sumAHighB_uid32_sincosTest_o <= STD_LOGIC_VECTOR(UNSIGNED(yip1E_1sumAHighB_uid32_sincosTest_a) - UNSIGNED(yip1E_1sumAHighB_uid32_sincosTest_b));
        END IF;
    END PROCESS;
    yip1E_1sumAHighB_uid32_sincosTest_q <= yip1E_1sumAHighB_uid32_sincosTest_o(15 downto 0);

    -- yip1_1_mergedSignalTM_uid45_sincosTest(BITJOIN,44)@1
    yip1_1_mergedSignalTM_uid45_sincosTest_q <= xMSB_uid41_sincosTest_b & yip1E_1sumAHighB_uid32_sincosTest_q;

    -- twoToMiSiYip_uid54_sincosTest(BITSELECT,53)@1
    twoToMiSiYip_uid54_sincosTest_b <= STD_LOGIC_VECTOR(yip1_1_mergedSignalTM_uid45_sincosTest_q(16 downto 1));

    -- xip1E_1_uid29_sincosTest(BITJOIN,28)@1
    xip1E_1_uid29_sincosTest_q <= STD_LOGIC_VECTOR((2 downto 1 => GND_q(0)) & GND_q) & cstOneOverK_uid19_sincosTest_q;

    -- xip1_1_topRange_uid38_sincosTest(BITSELECT,37)@1
    xip1_1_topRange_uid38_sincosTest_in <= xip1E_1_uid29_sincosTest_q(15 downto 0);
    xip1_1_topRange_uid38_sincosTest_b <= xip1_1_topRange_uid38_sincosTest_in(15 downto 0);

    -- xip1_1_mergedSignalTM_uid39_sincosTest(BITJOIN,38)@1
    xip1_1_mergedSignalTM_uid39_sincosTest_q <= GND_q & xip1_1_topRange_uid38_sincosTest_b;

    -- xip1E_2_uid57_sincosTest(ADDSUB,56)@1
    xip1E_2_uid57_sincosTest_s <= redist5_xMSB_uid48_sincosTest_b_1_q;
    xip1E_2_uid57_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => xip1_1_mergedSignalTM_uid39_sincosTest_q(16)) & xip1_1_mergedSignalTM_uid39_sincosTest_q));
    xip1E_2_uid57_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 16 => twoToMiSiYip_uid54_sincosTest_b(15)) & twoToMiSiYip_uid54_sincosTest_b));
    xip1E_2_uid57_sincosTest_combproc: PROCESS (xip1E_2_uid57_sincosTest_a, xip1E_2_uid57_sincosTest_b, xip1E_2_uid57_sincosTest_s)
    BEGIN
        IF (xip1E_2_uid57_sincosTest_s = "1") THEN
            xip1E_2_uid57_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2_uid57_sincosTest_a) + SIGNED(xip1E_2_uid57_sincosTest_b));
        ELSE
            xip1E_2_uid57_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2_uid57_sincosTest_a) - SIGNED(xip1E_2_uid57_sincosTest_b));
        END IF;
    END PROCESS;
    xip1E_2_uid57_sincosTest_q <= xip1E_2_uid57_sincosTest_o(17 downto 0);

    -- xip1_2_uid61_sincosTest(BITSELECT,60)@1
    xip1_2_uid61_sincosTest_in <= STD_LOGIC_VECTOR(xip1E_2_uid57_sincosTest_q(16 downto 0));
    xip1_2_uid61_sincosTest_b <= STD_LOGIC_VECTOR(xip1_2_uid61_sincosTest_in(16 downto 0));

    -- twoToMiSiXip_uid69_sincosTest(BITSELECT,68)@1
    twoToMiSiXip_uid69_sincosTest_b <= STD_LOGIC_VECTOR(xip1_2_uid61_sincosTest_b(16 downto 2));

    -- signOfSelectionSignal_uid50_sincosTest(LOGICAL,49)@1
    signOfSelectionSignal_uid50_sincosTest_q <= not (redist5_xMSB_uid48_sincosTest_b_1_q);

    -- twoToMiSiXip_uid53_sincosTest(BITSELECT,52)@1
    twoToMiSiXip_uid53_sincosTest_b <= STD_LOGIC_VECTOR(xip1_1_mergedSignalTM_uid39_sincosTest_q(16 downto 1));

    -- yip1E_2_uid58_sincosTest(ADDSUB,57)@1
    yip1E_2_uid58_sincosTest_s <= signOfSelectionSignal_uid50_sincosTest_q;
    yip1E_2_uid58_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => yip1_1_mergedSignalTM_uid45_sincosTest_q(16)) & yip1_1_mergedSignalTM_uid45_sincosTest_q));
    yip1E_2_uid58_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 16 => twoToMiSiXip_uid53_sincosTest_b(15)) & twoToMiSiXip_uid53_sincosTest_b));
    yip1E_2_uid58_sincosTest_combproc: PROCESS (yip1E_2_uid58_sincosTest_a, yip1E_2_uid58_sincosTest_b, yip1E_2_uid58_sincosTest_s)
    BEGIN
        IF (yip1E_2_uid58_sincosTest_s = "1") THEN
            yip1E_2_uid58_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2_uid58_sincosTest_a) + SIGNED(yip1E_2_uid58_sincosTest_b));
        ELSE
            yip1E_2_uid58_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2_uid58_sincosTest_a) - SIGNED(yip1E_2_uid58_sincosTest_b));
        END IF;
    END PROCESS;
    yip1E_2_uid58_sincosTest_q <= yip1E_2_uid58_sincosTest_o(17 downto 0);

    -- yip1_2_uid62_sincosTest(BITSELECT,61)@1
    yip1_2_uid62_sincosTest_in <= STD_LOGIC_VECTOR(yip1E_2_uid58_sincosTest_q(16 downto 0));
    yip1_2_uid62_sincosTest_b <= STD_LOGIC_VECTOR(yip1_2_uid62_sincosTest_in(16 downto 0));

    -- yip1E_3_uid74_sincosTest(ADDSUB,73)@1
    yip1E_3_uid74_sincosTest_s <= signOfSelectionSignal_uid66_sincosTest_q;
    yip1E_3_uid74_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => yip1_2_uid62_sincosTest_b(16)) & yip1_2_uid62_sincosTest_b));
    yip1E_3_uid74_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 15 => twoToMiSiXip_uid69_sincosTest_b(14)) & twoToMiSiXip_uid69_sincosTest_b));
    yip1E_3_uid74_sincosTest_combproc: PROCESS (yip1E_3_uid74_sincosTest_a, yip1E_3_uid74_sincosTest_b, yip1E_3_uid74_sincosTest_s)
    BEGIN
        IF (yip1E_3_uid74_sincosTest_s = "1") THEN
            yip1E_3_uid74_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3_uid74_sincosTest_a) + SIGNED(yip1E_3_uid74_sincosTest_b));
        ELSE
            yip1E_3_uid74_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3_uid74_sincosTest_a) - SIGNED(yip1E_3_uid74_sincosTest_b));
        END IF;
    END PROCESS;
    yip1E_3_uid74_sincosTest_q <= yip1E_3_uid74_sincosTest_o(17 downto 0);

    -- yip1_3_uid78_sincosTest(BITSELECT,77)@1
    yip1_3_uid78_sincosTest_in <= STD_LOGIC_VECTOR(yip1E_3_uid74_sincosTest_q(16 downto 0));
    yip1_3_uid78_sincosTest_b <= STD_LOGIC_VECTOR(yip1_3_uid78_sincosTest_in(16 downto 0));

    -- twoToMiSiYip_uid86_sincosTest(BITSELECT,85)@1
    twoToMiSiYip_uid86_sincosTest_b <= STD_LOGIC_VECTOR(yip1_3_uid78_sincosTest_b(16 downto 3));

    -- twoToMiSiYip_uid70_sincosTest(BITSELECT,69)@1
    twoToMiSiYip_uid70_sincosTest_b <= STD_LOGIC_VECTOR(yip1_2_uid62_sincosTest_b(16 downto 2));

    -- xip1E_3_uid73_sincosTest(ADDSUB,72)@1
    xip1E_3_uid73_sincosTest_s <= redist4_xMSB_uid64_sincosTest_b_1_q;
    xip1E_3_uid73_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => xip1_2_uid61_sincosTest_b(16)) & xip1_2_uid61_sincosTest_b));
    xip1E_3_uid73_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 15 => twoToMiSiYip_uid70_sincosTest_b(14)) & twoToMiSiYip_uid70_sincosTest_b));
    xip1E_3_uid73_sincosTest_combproc: PROCESS (xip1E_3_uid73_sincosTest_a, xip1E_3_uid73_sincosTest_b, xip1E_3_uid73_sincosTest_s)
    BEGIN
        IF (xip1E_3_uid73_sincosTest_s = "1") THEN
            xip1E_3_uid73_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3_uid73_sincosTest_a) + SIGNED(xip1E_3_uid73_sincosTest_b));
        ELSE
            xip1E_3_uid73_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3_uid73_sincosTest_a) - SIGNED(xip1E_3_uid73_sincosTest_b));
        END IF;
    END PROCESS;
    xip1E_3_uid73_sincosTest_q <= xip1E_3_uid73_sincosTest_o(17 downto 0);

    -- xip1_3_uid77_sincosTest(BITSELECT,76)@1
    xip1_3_uid77_sincosTest_in <= STD_LOGIC_VECTOR(xip1E_3_uid73_sincosTest_q(16 downto 0));
    xip1_3_uid77_sincosTest_b <= STD_LOGIC_VECTOR(xip1_3_uid77_sincosTest_in(16 downto 0));

    -- xip1E_4_uid89_sincosTest(ADDSUB,88)@1
    xip1E_4_uid89_sincosTest_s <= redist3_xMSB_uid80_sincosTest_b_1_q;
    xip1E_4_uid89_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => xip1_3_uid77_sincosTest_b(16)) & xip1_3_uid77_sincosTest_b));
    xip1E_4_uid89_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 14 => twoToMiSiYip_uid86_sincosTest_b(13)) & twoToMiSiYip_uid86_sincosTest_b));
    xip1E_4_uid89_sincosTest_combproc: PROCESS (xip1E_4_uid89_sincosTest_a, xip1E_4_uid89_sincosTest_b, xip1E_4_uid89_sincosTest_s)
    BEGIN
        IF (xip1E_4_uid89_sincosTest_s = "1") THEN
            xip1E_4_uid89_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4_uid89_sincosTest_a) + SIGNED(xip1E_4_uid89_sincosTest_b));
        ELSE
            xip1E_4_uid89_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4_uid89_sincosTest_a) - SIGNED(xip1E_4_uid89_sincosTest_b));
        END IF;
    END PROCESS;
    xip1E_4_uid89_sincosTest_q <= xip1E_4_uid89_sincosTest_o(17 downto 0);

    -- xip1_4_uid93_sincosTest(BITSELECT,92)@1
    xip1_4_uid93_sincosTest_in <= STD_LOGIC_VECTOR(xip1E_4_uid89_sincosTest_q(16 downto 0));
    xip1_4_uid93_sincosTest_b <= STD_LOGIC_VECTOR(xip1_4_uid93_sincosTest_in(16 downto 0));

    -- twoToMiSiXip_uid101_sincosTest(BITSELECT,100)@1
    twoToMiSiXip_uid101_sincosTest_b <= STD_LOGIC_VECTOR(xip1_4_uid93_sincosTest_b(16 downto 4));

    -- signOfSelectionSignal_uid82_sincosTest(LOGICAL,81)@1
    signOfSelectionSignal_uid82_sincosTest_q <= not (redist3_xMSB_uid80_sincosTest_b_1_q);

    -- twoToMiSiXip_uid85_sincosTest(BITSELECT,84)@1
    twoToMiSiXip_uid85_sincosTest_b <= STD_LOGIC_VECTOR(xip1_3_uid77_sincosTest_b(16 downto 3));

    -- yip1E_4_uid90_sincosTest(ADDSUB,89)@1
    yip1E_4_uid90_sincosTest_s <= signOfSelectionSignal_uid82_sincosTest_q;
    yip1E_4_uid90_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => yip1_3_uid78_sincosTest_b(16)) & yip1_3_uid78_sincosTest_b));
    yip1E_4_uid90_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 14 => twoToMiSiXip_uid85_sincosTest_b(13)) & twoToMiSiXip_uid85_sincosTest_b));
    yip1E_4_uid90_sincosTest_combproc: PROCESS (yip1E_4_uid90_sincosTest_a, yip1E_4_uid90_sincosTest_b, yip1E_4_uid90_sincosTest_s)
    BEGIN
        IF (yip1E_4_uid90_sincosTest_s = "1") THEN
            yip1E_4_uid90_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4_uid90_sincosTest_a) + SIGNED(yip1E_4_uid90_sincosTest_b));
        ELSE
            yip1E_4_uid90_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4_uid90_sincosTest_a) - SIGNED(yip1E_4_uid90_sincosTest_b));
        END IF;
    END PROCESS;
    yip1E_4_uid90_sincosTest_q <= yip1E_4_uid90_sincosTest_o(17 downto 0);

    -- yip1_4_uid94_sincosTest(BITSELECT,93)@1
    yip1_4_uid94_sincosTest_in <= STD_LOGIC_VECTOR(yip1E_4_uid90_sincosTest_q(16 downto 0));
    yip1_4_uid94_sincosTest_b <= STD_LOGIC_VECTOR(yip1_4_uid94_sincosTest_in(16 downto 0));

    -- yip1E_5_uid106_sincosTest(ADDSUB,105)@1
    yip1E_5_uid106_sincosTest_s <= signOfSelectionSignal_uid98_sincosTest_q;
    yip1E_5_uid106_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => yip1_4_uid94_sincosTest_b(16)) & yip1_4_uid94_sincosTest_b));
    yip1E_5_uid106_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 13 => twoToMiSiXip_uid101_sincosTest_b(12)) & twoToMiSiXip_uid101_sincosTest_b));
    yip1E_5_uid106_sincosTest_combproc: PROCESS (yip1E_5_uid106_sincosTest_a, yip1E_5_uid106_sincosTest_b, yip1E_5_uid106_sincosTest_s)
    BEGIN
        IF (yip1E_5_uid106_sincosTest_s = "1") THEN
            yip1E_5_uid106_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5_uid106_sincosTest_a) + SIGNED(yip1E_5_uid106_sincosTest_b));
        ELSE
            yip1E_5_uid106_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5_uid106_sincosTest_a) - SIGNED(yip1E_5_uid106_sincosTest_b));
        END IF;
    END PROCESS;
    yip1E_5_uid106_sincosTest_q <= yip1E_5_uid106_sincosTest_o(17 downto 0);

    -- yip1_5_uid113_sincosTest(BITSELECT,112)@1
    yip1_5_uid113_sincosTest_in <= STD_LOGIC_VECTOR(yip1E_5_uid106_sincosTest_q(16 downto 0));
    yip1_5_uid113_sincosTest_b <= STD_LOGIC_VECTOR(yip1_5_uid113_sincosTest_in(16 downto 0));

    -- ySumPreRnd_uid119_sincosTest(BITSELECT,118)@1
    ySumPreRnd_uid119_sincosTest_in <= yip1_5_uid113_sincosTest_b(15 downto 0);
    ySumPreRnd_uid119_sincosTest_b <= ySumPreRnd_uid119_sincosTest_in(15 downto 10);

    -- ySumPostRnd_uid122_sincosTest(ADD,121)@1
    ySumPostRnd_uid122_sincosTest_a <= STD_LOGIC_VECTOR("0" & ySumPreRnd_uid119_sincosTest_b);
    ySumPostRnd_uid122_sincosTest_b <= STD_LOGIC_VECTOR("000000" & VCC_q);
    ySumPostRnd_uid122_sincosTest_o <= STD_LOGIC_VECTOR(UNSIGNED(ySumPostRnd_uid122_sincosTest_a) + UNSIGNED(ySumPostRnd_uid122_sincosTest_b));
    ySumPostRnd_uid122_sincosTest_q <= ySumPostRnd_uid122_sincosTest_o(6 downto 0);

    -- yPostExc_uid124_sincosTest(BITSELECT,123)@1
    yPostExc_uid124_sincosTest_in <= STD_LOGIC_VECTOR(ySumPostRnd_uid122_sincosTest_q(5 downto 0));
    yPostExc_uid124_sincosTest_b <= STD_LOGIC_VECTOR(yPostExc_uid124_sincosTest_in(5 downto 1));

    -- redist0_yPostExc_uid124_sincosTest_b_1(DELAY,140)
    redist0_yPostExc_uid124_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 5, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yPostExc_uid124_sincosTest_b, xout => redist0_yPostExc_uid124_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- cstZeroForAddSub_uid132_sincosTest(CONSTANT,131)
    cstZeroForAddSub_uid132_sincosTest_q <= "00000";

    -- sinPostNeg_uid134_sincosTest(ADDSUB,133)@2
    sinPostNeg_uid134_sincosTest_s <= invSinNegCond_uid133_sincosTest_q;
    sinPostNeg_uid134_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((6 downto 5 => cstZeroForAddSub_uid132_sincosTest_q(4)) & cstZeroForAddSub_uid132_sincosTest_q));
    sinPostNeg_uid134_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((6 downto 5 => redist0_yPostExc_uid124_sincosTest_b_1_q(4)) & redist0_yPostExc_uid124_sincosTest_b_1_q));
    sinPostNeg_uid134_sincosTest_combproc: PROCESS (sinPostNeg_uid134_sincosTest_a, sinPostNeg_uid134_sincosTest_b, sinPostNeg_uid134_sincosTest_s)
    BEGIN
        IF (sinPostNeg_uid134_sincosTest_s = "1") THEN
            sinPostNeg_uid134_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(sinPostNeg_uid134_sincosTest_a) + SIGNED(sinPostNeg_uid134_sincosTest_b));
        ELSE
            sinPostNeg_uid134_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(sinPostNeg_uid134_sincosTest_a) - SIGNED(sinPostNeg_uid134_sincosTest_b));
        END IF;
    END PROCESS;
    sinPostNeg_uid134_sincosTest_q <= sinPostNeg_uid134_sincosTest_o(5 downto 0);

    -- invCosNegCond_uid135_sincosTest(LOGICAL,134)@2
    invCosNegCond_uid135_sincosTest_q <= not (sinNegCond2_uid126_sincosTest_q);

    -- twoToMiSiYip_uid102_sincosTest(BITSELECT,101)@1
    twoToMiSiYip_uid102_sincosTest_b <= STD_LOGIC_VECTOR(yip1_4_uid94_sincosTest_b(16 downto 4));

    -- xip1E_5_uid105_sincosTest(ADDSUB,104)@1
    xip1E_5_uid105_sincosTest_s <= redist2_xMSB_uid96_sincosTest_b_1_q;
    xip1E_5_uid105_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => xip1_4_uid93_sincosTest_b(16)) & xip1_4_uid93_sincosTest_b));
    xip1E_5_uid105_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 13 => twoToMiSiYip_uid102_sincosTest_b(12)) & twoToMiSiYip_uid102_sincosTest_b));
    xip1E_5_uid105_sincosTest_combproc: PROCESS (xip1E_5_uid105_sincosTest_a, xip1E_5_uid105_sincosTest_b, xip1E_5_uid105_sincosTest_s)
    BEGIN
        IF (xip1E_5_uid105_sincosTest_s = "1") THEN
            xip1E_5_uid105_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5_uid105_sincosTest_a) + SIGNED(xip1E_5_uid105_sincosTest_b));
        ELSE
            xip1E_5_uid105_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5_uid105_sincosTest_a) - SIGNED(xip1E_5_uid105_sincosTest_b));
        END IF;
    END PROCESS;
    xip1E_5_uid105_sincosTest_q <= xip1E_5_uid105_sincosTest_o(17 downto 0);

    -- xip1_5_uid112_sincosTest(BITSELECT,111)@1
    xip1_5_uid112_sincosTest_in <= STD_LOGIC_VECTOR(xip1E_5_uid105_sincosTest_q(16 downto 0));
    xip1_5_uid112_sincosTest_b <= STD_LOGIC_VECTOR(xip1_5_uid112_sincosTest_in(16 downto 0));

    -- xSumPreRnd_uid115_sincosTest(BITSELECT,114)@1
    xSumPreRnd_uid115_sincosTest_in <= xip1_5_uid112_sincosTest_b(15 downto 0);
    xSumPreRnd_uid115_sincosTest_b <= xSumPreRnd_uid115_sincosTest_in(15 downto 10);

    -- xSumPostRnd_uid118_sincosTest(ADD,117)@1
    xSumPostRnd_uid118_sincosTest_a <= STD_LOGIC_VECTOR("0" & xSumPreRnd_uid115_sincosTest_b);
    xSumPostRnd_uid118_sincosTest_b <= STD_LOGIC_VECTOR("000000" & VCC_q);
    xSumPostRnd_uid118_sincosTest_o <= STD_LOGIC_VECTOR(UNSIGNED(xSumPostRnd_uid118_sincosTest_a) + UNSIGNED(xSumPostRnd_uid118_sincosTest_b));
    xSumPostRnd_uid118_sincosTest_q <= xSumPostRnd_uid118_sincosTest_o(6 downto 0);

    -- xPostExc_uid123_sincosTest(BITSELECT,122)@1
    xPostExc_uid123_sincosTest_in <= STD_LOGIC_VECTOR(xSumPostRnd_uid118_sincosTest_q(5 downto 0));
    xPostExc_uid123_sincosTest_b <= STD_LOGIC_VECTOR(xPostExc_uid123_sincosTest_in(5 downto 1));

    -- redist1_xPostExc_uid123_sincosTest_b_1(DELAY,141)
    redist1_xPostExc_uid123_sincosTest_b_1 : dspba_delay
    GENERIC MAP ( width => 5, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xPostExc_uid123_sincosTest_b, xout => redist1_xPostExc_uid123_sincosTest_b_1_q, clk => clk, aclr => areset );

    -- cosPostNeg_uid136_sincosTest(ADDSUB,135)@2
    cosPostNeg_uid136_sincosTest_s <= invCosNegCond_uid135_sincosTest_q;
    cosPostNeg_uid136_sincosTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((6 downto 5 => cstZeroForAddSub_uid132_sincosTest_q(4)) & cstZeroForAddSub_uid132_sincosTest_q));
    cosPostNeg_uid136_sincosTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((6 downto 5 => redist1_xPostExc_uid123_sincosTest_b_1_q(4)) & redist1_xPostExc_uid123_sincosTest_b_1_q));
    cosPostNeg_uid136_sincosTest_combproc: PROCESS (cosPostNeg_uid136_sincosTest_a, cosPostNeg_uid136_sincosTest_b, cosPostNeg_uid136_sincosTest_s)
    BEGIN
        IF (cosPostNeg_uid136_sincosTest_s = "1") THEN
            cosPostNeg_uid136_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(cosPostNeg_uid136_sincosTest_a) + SIGNED(cosPostNeg_uid136_sincosTest_b));
        ELSE
            cosPostNeg_uid136_sincosTest_o <= STD_LOGIC_VECTOR(SIGNED(cosPostNeg_uid136_sincosTest_a) - SIGNED(cosPostNeg_uid136_sincosTest_b));
        END IF;
    END PROCESS;
    cosPostNeg_uid136_sincosTest_q <= cosPostNeg_uid136_sincosTest_o(5 downto 0);

    -- redist6_firstQuadrant_uid15_sincosTest_b_2(DELAY,146)
    redist6_firstQuadrant_uid15_sincosTest_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => firstQuadrant_uid15_sincosTest_b, xout => redist6_firstQuadrant_uid15_sincosTest_b_2_q, clk => clk, aclr => areset );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- xPostRR_uid138_sincosTest(MUX,137)@2
    xPostRR_uid138_sincosTest_s <= redist6_firstQuadrant_uid15_sincosTest_b_2_q;
    xPostRR_uid138_sincosTest_combproc: PROCESS (xPostRR_uid138_sincosTest_s, cosPostNeg_uid136_sincosTest_q, sinPostNeg_uid134_sincosTest_q)
    BEGIN
        CASE (xPostRR_uid138_sincosTest_s) IS
            WHEN "0" => xPostRR_uid138_sincosTest_q <= cosPostNeg_uid136_sincosTest_q;
            WHEN "1" => xPostRR_uid138_sincosTest_q <= sinPostNeg_uid134_sincosTest_q;
            WHEN OTHERS => xPostRR_uid138_sincosTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- sin_uid140_sincosTest(BITSELECT,139)@2
    sin_uid140_sincosTest_in <= STD_LOGIC_VECTOR(xPostRR_uid138_sincosTest_q(4 downto 0));
    sin_uid140_sincosTest_b <= STD_LOGIC_VECTOR(sin_uid140_sincosTest_in(4 downto 0));

    -- xPostRR_uid137_sincosTest(MUX,136)@2
    xPostRR_uid137_sincosTest_s <= redist6_firstQuadrant_uid15_sincosTest_b_2_q;
    xPostRR_uid137_sincosTest_combproc: PROCESS (xPostRR_uid137_sincosTest_s, sinPostNeg_uid134_sincosTest_q, cosPostNeg_uid136_sincosTest_q)
    BEGIN
        CASE (xPostRR_uid137_sincosTest_s) IS
            WHEN "0" => xPostRR_uid137_sincosTest_q <= sinPostNeg_uid134_sincosTest_q;
            WHEN "1" => xPostRR_uid137_sincosTest_q <= cosPostNeg_uid136_sincosTest_q;
            WHEN OTHERS => xPostRR_uid137_sincosTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- cos_uid139_sincosTest(BITSELECT,138)@2
    cos_uid139_sincosTest_in <= STD_LOGIC_VECTOR(xPostRR_uid137_sincosTest_q(4 downto 0));
    cos_uid139_sincosTest_b <= STD_LOGIC_VECTOR(cos_uid139_sincosTest_in(4 downto 0));

    -- xOut(GPOUT,4)@2
    c <= cos_uid139_sincosTest_b;
    s <= sin_uid140_sincosTest_b;

END normal;
