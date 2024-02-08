// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module myproject_relu_ap_fixed_16_6_5_3_0_ap_ufixed_6_0_4_0_0_relu_config4_s (
        ap_ready,
        data_0_val,
        data_1_val,
        data_2_val,
        data_3_val,
        data_4_val,
        data_5_val,
        data_6_val,
        data_7_val,
        data_8_val,
        data_9_val,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8,
        ap_return_9
);


output   ap_ready;
input  [15:0] data_0_val;
input  [15:0] data_1_val;
input  [15:0] data_2_val;
input  [15:0] data_3_val;
input  [15:0] data_4_val;
input  [15:0] data_5_val;
input  [15:0] data_6_val;
input  [15:0] data_7_val;
input  [15:0] data_8_val;
input  [15:0] data_9_val;
output  [5:0] ap_return_0;
output  [5:0] ap_return_1;
output  [5:0] ap_return_2;
output  [5:0] ap_return_3;
output  [5:0] ap_return_4;
output  [5:0] ap_return_5;
output  [5:0] ap_return_6;
output  [5:0] ap_return_7;
output  [5:0] ap_return_8;
output  [5:0] ap_return_9;

wire   [2:0] trunc_ln46_fu_162_p1;
wire   [0:0] tmp_79_fu_146_p3;
wire   [0:0] icmp_ln46_fu_166_p2;
wire   [0:0] or_ln46_fu_180_p2;
wire   [0:0] tmp_80_fu_154_p3;
wire   [0:0] and_ln46_fu_186_p2;
wire   [5:0] trunc_ln3_fu_136_p4;
wire   [5:0] zext_ln46_fu_192_p1;
wire   [5:0] add_ln46_fu_196_p2;
wire   [5:0] tmp_6_fu_206_p4;
wire   [0:0] tmp_82_fu_228_p3;
wire   [0:0] icmp_ln46_31_fu_222_p2;
wire   [0:0] icmp_ln46_30_fu_216_p2;
wire   [0:0] tmp_81_fu_172_p3;
wire   [0:0] select_ln46_fu_242_p3;
wire   [0:0] select_ln46_79_fu_250_p3;
wire   [0:0] tmp_fu_128_p3;
wire   [0:0] or_ln46_30_fu_258_p2;
wire   [0:0] xor_ln46_39_fu_236_p2;
wire   [0:0] and_ln46_40_fu_270_p2;
wire   [0:0] and_ln46_41_fu_276_p2;
wire   [4:0] trunc_ln46_29_fu_202_p1;
wire   [4:0] select_ln46_40_fu_288_p3;
wire   [0:0] xor_ln46_20_fu_282_p2;
wire   [0:0] and_ln46_42_fu_300_p2;
wire   [0:0] xor_ln46_fu_264_p2;
wire   [5:0] zext_ln46_20_fu_296_p1;
wire   [5:0] select_ln46_80_fu_312_p3;
wire   [0:0] or_ln46_31_fu_306_p2;
wire   [5:0] select_ln46_41_fu_320_p3;
wire   [0:0] icmp_ln45_fu_122_p2;
wire   [5:0] select_ln46_42_fu_328_p3;
wire   [2:0] trunc_ln46_30_fu_384_p1;
wire   [0:0] tmp_84_fu_368_p3;
wire   [0:0] icmp_ln46_32_fu_388_p2;
wire   [0:0] or_ln46_32_fu_402_p2;
wire   [0:0] tmp_85_fu_376_p3;
wire   [0:0] and_ln46_43_fu_408_p2;
wire   [5:0] trunc_ln46_s_fu_358_p4;
wire   [5:0] zext_ln46_10_fu_414_p1;
wire   [5:0] add_ln46_10_fu_418_p2;
wire   [5:0] tmp_s_fu_428_p4;
wire   [0:0] tmp_87_fu_450_p3;
wire   [0:0] icmp_ln46_34_fu_444_p2;
wire   [0:0] icmp_ln46_33_fu_438_p2;
wire   [0:0] tmp_86_fu_394_p3;
wire   [0:0] select_ln46_43_fu_464_p3;
wire   [0:0] select_ln46_81_fu_472_p3;
wire   [0:0] tmp_83_fu_350_p3;
wire   [0:0] or_ln46_33_fu_480_p2;
wire   [0:0] xor_ln46_40_fu_458_p2;
wire   [0:0] and_ln46_44_fu_492_p2;
wire   [0:0] and_ln46_45_fu_498_p2;
wire   [4:0] trunc_ln46_31_fu_424_p1;
wire   [4:0] select_ln46_44_fu_510_p3;
wire   [0:0] xor_ln46_22_fu_504_p2;
wire   [0:0] and_ln46_46_fu_522_p2;
wire   [0:0] xor_ln46_21_fu_486_p2;
wire   [5:0] zext_ln46_21_fu_518_p1;
wire   [5:0] select_ln46_82_fu_534_p3;
wire   [0:0] or_ln46_34_fu_528_p2;
wire   [5:0] select_ln46_45_fu_542_p3;
wire   [0:0] icmp_ln45_10_fu_344_p2;
wire   [5:0] select_ln46_46_fu_550_p3;
wire   [2:0] trunc_ln46_32_fu_606_p1;
wire   [0:0] tmp_89_fu_590_p3;
wire   [0:0] icmp_ln46_35_fu_610_p2;
wire   [0:0] or_ln46_35_fu_624_p2;
wire   [0:0] tmp_90_fu_598_p3;
wire   [0:0] and_ln46_47_fu_630_p2;
wire   [5:0] trunc_ln46_1_fu_580_p4;
wire   [5:0] zext_ln46_11_fu_636_p1;
wire   [5:0] add_ln46_11_fu_640_p2;
wire   [5:0] tmp_10_fu_650_p4;
wire   [0:0] tmp_92_fu_672_p3;
wire   [0:0] icmp_ln46_37_fu_666_p2;
wire   [0:0] icmp_ln46_36_fu_660_p2;
wire   [0:0] tmp_91_fu_616_p3;
wire   [0:0] select_ln46_47_fu_686_p3;
wire   [0:0] select_ln46_83_fu_694_p3;
wire   [0:0] tmp_88_fu_572_p3;
wire   [0:0] or_ln46_36_fu_702_p2;
wire   [0:0] xor_ln46_41_fu_680_p2;
wire   [0:0] and_ln46_48_fu_714_p2;
wire   [0:0] and_ln46_49_fu_720_p2;
wire   [4:0] trunc_ln46_33_fu_646_p1;
wire   [4:0] select_ln46_48_fu_732_p3;
wire   [0:0] xor_ln46_24_fu_726_p2;
wire   [0:0] and_ln46_50_fu_744_p2;
wire   [0:0] xor_ln46_23_fu_708_p2;
wire   [5:0] zext_ln46_22_fu_740_p1;
wire   [5:0] select_ln46_84_fu_756_p3;
wire   [0:0] or_ln46_37_fu_750_p2;
wire   [5:0] select_ln46_49_fu_764_p3;
wire   [0:0] icmp_ln45_11_fu_566_p2;
wire   [5:0] select_ln46_50_fu_772_p3;
wire   [2:0] trunc_ln46_34_fu_828_p1;
wire   [0:0] tmp_94_fu_812_p3;
wire   [0:0] icmp_ln46_38_fu_832_p2;
wire   [0:0] or_ln46_38_fu_846_p2;
wire   [0:0] tmp_95_fu_820_p3;
wire   [0:0] and_ln46_51_fu_852_p2;
wire   [5:0] trunc_ln46_2_fu_802_p4;
wire   [5:0] zext_ln46_12_fu_858_p1;
wire   [5:0] add_ln46_12_fu_862_p2;
wire   [5:0] tmp_11_fu_872_p4;
wire   [0:0] tmp_97_fu_894_p3;
wire   [0:0] icmp_ln46_40_fu_888_p2;
wire   [0:0] icmp_ln46_39_fu_882_p2;
wire   [0:0] tmp_96_fu_838_p3;
wire   [0:0] select_ln46_51_fu_908_p3;
wire   [0:0] select_ln46_85_fu_916_p3;
wire   [0:0] tmp_93_fu_794_p3;
wire   [0:0] or_ln46_39_fu_924_p2;
wire   [0:0] xor_ln46_42_fu_902_p2;
wire   [0:0] and_ln46_52_fu_936_p2;
wire   [0:0] and_ln46_53_fu_942_p2;
wire   [4:0] trunc_ln46_35_fu_868_p1;
wire   [4:0] select_ln46_52_fu_954_p3;
wire   [0:0] xor_ln46_26_fu_948_p2;
wire   [0:0] and_ln46_54_fu_966_p2;
wire   [0:0] xor_ln46_25_fu_930_p2;
wire   [5:0] zext_ln46_23_fu_962_p1;
wire   [5:0] select_ln46_86_fu_978_p3;
wire   [0:0] or_ln46_40_fu_972_p2;
wire   [5:0] select_ln46_53_fu_986_p3;
wire   [0:0] icmp_ln45_12_fu_788_p2;
wire   [5:0] select_ln46_54_fu_994_p3;
wire   [2:0] trunc_ln46_36_fu_1050_p1;
wire   [0:0] tmp_99_fu_1034_p3;
wire   [0:0] icmp_ln46_41_fu_1054_p2;
wire   [0:0] or_ln46_41_fu_1068_p2;
wire   [0:0] tmp_100_fu_1042_p3;
wire   [0:0] and_ln46_55_fu_1074_p2;
wire   [5:0] trunc_ln46_3_fu_1024_p4;
wire   [5:0] zext_ln46_13_fu_1080_p1;
wire   [5:0] add_ln46_13_fu_1084_p2;
wire   [5:0] tmp_12_fu_1094_p4;
wire   [0:0] tmp_102_fu_1116_p3;
wire   [0:0] icmp_ln46_43_fu_1110_p2;
wire   [0:0] icmp_ln46_42_fu_1104_p2;
wire   [0:0] tmp_101_fu_1060_p3;
wire   [0:0] select_ln46_55_fu_1130_p3;
wire   [0:0] select_ln46_87_fu_1138_p3;
wire   [0:0] tmp_98_fu_1016_p3;
wire   [0:0] or_ln46_42_fu_1146_p2;
wire   [0:0] xor_ln46_43_fu_1124_p2;
wire   [0:0] and_ln46_56_fu_1158_p2;
wire   [0:0] and_ln46_57_fu_1164_p2;
wire   [4:0] trunc_ln46_37_fu_1090_p1;
wire   [4:0] select_ln46_56_fu_1176_p3;
wire   [0:0] xor_ln46_28_fu_1170_p2;
wire   [0:0] and_ln46_58_fu_1188_p2;
wire   [0:0] xor_ln46_27_fu_1152_p2;
wire   [5:0] zext_ln46_24_fu_1184_p1;
wire   [5:0] select_ln46_88_fu_1200_p3;
wire   [0:0] or_ln46_43_fu_1194_p2;
wire   [5:0] select_ln46_57_fu_1208_p3;
wire   [0:0] icmp_ln45_13_fu_1010_p2;
wire   [5:0] select_ln46_58_fu_1216_p3;
wire   [2:0] trunc_ln46_38_fu_1272_p1;
wire   [0:0] tmp_104_fu_1256_p3;
wire   [0:0] icmp_ln46_44_fu_1276_p2;
wire   [0:0] or_ln46_44_fu_1290_p2;
wire   [0:0] tmp_105_fu_1264_p3;
wire   [0:0] and_ln46_59_fu_1296_p2;
wire   [5:0] trunc_ln46_4_fu_1246_p4;
wire   [5:0] zext_ln46_14_fu_1302_p1;
wire   [5:0] add_ln46_14_fu_1306_p2;
wire   [5:0] tmp_13_fu_1316_p4;
wire   [0:0] tmp_107_fu_1338_p3;
wire   [0:0] icmp_ln46_46_fu_1332_p2;
wire   [0:0] icmp_ln46_45_fu_1326_p2;
wire   [0:0] tmp_106_fu_1282_p3;
wire   [0:0] select_ln46_59_fu_1352_p3;
wire   [0:0] select_ln46_89_fu_1360_p3;
wire   [0:0] tmp_103_fu_1238_p3;
wire   [0:0] or_ln46_45_fu_1368_p2;
wire   [0:0] xor_ln46_44_fu_1346_p2;
wire   [0:0] and_ln46_60_fu_1380_p2;
wire   [0:0] and_ln46_61_fu_1386_p2;
wire   [4:0] trunc_ln46_39_fu_1312_p1;
wire   [4:0] select_ln46_60_fu_1398_p3;
wire   [0:0] xor_ln46_30_fu_1392_p2;
wire   [0:0] and_ln46_62_fu_1410_p2;
wire   [0:0] xor_ln46_29_fu_1374_p2;
wire   [5:0] zext_ln46_25_fu_1406_p1;
wire   [5:0] select_ln46_90_fu_1422_p3;
wire   [0:0] or_ln46_46_fu_1416_p2;
wire   [5:0] select_ln46_61_fu_1430_p3;
wire   [0:0] icmp_ln45_14_fu_1232_p2;
wire   [5:0] select_ln46_62_fu_1438_p3;
wire   [2:0] trunc_ln46_40_fu_1494_p1;
wire   [0:0] tmp_109_fu_1478_p3;
wire   [0:0] icmp_ln46_47_fu_1498_p2;
wire   [0:0] or_ln46_47_fu_1512_p2;
wire   [0:0] tmp_110_fu_1486_p3;
wire   [0:0] and_ln46_63_fu_1518_p2;
wire   [5:0] trunc_ln46_5_fu_1468_p4;
wire   [5:0] zext_ln46_15_fu_1524_p1;
wire   [5:0] add_ln46_15_fu_1528_p2;
wire   [5:0] tmp_14_fu_1538_p4;
wire   [0:0] tmp_112_fu_1560_p3;
wire   [0:0] icmp_ln46_49_fu_1554_p2;
wire   [0:0] icmp_ln46_48_fu_1548_p2;
wire   [0:0] tmp_111_fu_1504_p3;
wire   [0:0] select_ln46_63_fu_1574_p3;
wire   [0:0] select_ln46_91_fu_1582_p3;
wire   [0:0] tmp_108_fu_1460_p3;
wire   [0:0] or_ln46_48_fu_1590_p2;
wire   [0:0] xor_ln46_45_fu_1568_p2;
wire   [0:0] and_ln46_64_fu_1602_p2;
wire   [0:0] and_ln46_65_fu_1608_p2;
wire   [4:0] trunc_ln46_41_fu_1534_p1;
wire   [4:0] select_ln46_64_fu_1620_p3;
wire   [0:0] xor_ln46_32_fu_1614_p2;
wire   [0:0] and_ln46_66_fu_1632_p2;
wire   [0:0] xor_ln46_31_fu_1596_p2;
wire   [5:0] zext_ln46_26_fu_1628_p1;
wire   [5:0] select_ln46_92_fu_1644_p3;
wire   [0:0] or_ln46_49_fu_1638_p2;
wire   [5:0] select_ln46_65_fu_1652_p3;
wire   [0:0] icmp_ln45_15_fu_1454_p2;
wire   [5:0] select_ln46_66_fu_1660_p3;
wire   [2:0] trunc_ln46_42_fu_1716_p1;
wire   [0:0] tmp_114_fu_1700_p3;
wire   [0:0] icmp_ln46_50_fu_1720_p2;
wire   [0:0] or_ln46_50_fu_1734_p2;
wire   [0:0] tmp_115_fu_1708_p3;
wire   [0:0] and_ln46_67_fu_1740_p2;
wire   [5:0] trunc_ln46_6_fu_1690_p4;
wire   [5:0] zext_ln46_16_fu_1746_p1;
wire   [5:0] add_ln46_16_fu_1750_p2;
wire   [5:0] tmp_15_fu_1760_p4;
wire   [0:0] tmp_117_fu_1782_p3;
wire   [0:0] icmp_ln46_52_fu_1776_p2;
wire   [0:0] icmp_ln46_51_fu_1770_p2;
wire   [0:0] tmp_116_fu_1726_p3;
wire   [0:0] select_ln46_67_fu_1796_p3;
wire   [0:0] select_ln46_93_fu_1804_p3;
wire   [0:0] tmp_113_fu_1682_p3;
wire   [0:0] or_ln46_51_fu_1812_p2;
wire   [0:0] xor_ln46_46_fu_1790_p2;
wire   [0:0] and_ln46_68_fu_1824_p2;
wire   [0:0] and_ln46_69_fu_1830_p2;
wire   [4:0] trunc_ln46_43_fu_1756_p1;
wire   [4:0] select_ln46_68_fu_1842_p3;
wire   [0:0] xor_ln46_34_fu_1836_p2;
wire   [0:0] and_ln46_70_fu_1854_p2;
wire   [0:0] xor_ln46_33_fu_1818_p2;
wire   [5:0] zext_ln46_27_fu_1850_p1;
wire   [5:0] select_ln46_94_fu_1866_p3;
wire   [0:0] or_ln46_52_fu_1860_p2;
wire   [5:0] select_ln46_69_fu_1874_p3;
wire   [0:0] icmp_ln45_16_fu_1676_p2;
wire   [5:0] select_ln46_70_fu_1882_p3;
wire   [2:0] trunc_ln46_44_fu_1938_p1;
wire   [0:0] tmp_119_fu_1922_p3;
wire   [0:0] icmp_ln46_53_fu_1942_p2;
wire   [0:0] or_ln46_53_fu_1956_p2;
wire   [0:0] tmp_120_fu_1930_p3;
wire   [0:0] and_ln46_71_fu_1962_p2;
wire   [5:0] trunc_ln46_7_fu_1912_p4;
wire   [5:0] zext_ln46_17_fu_1968_p1;
wire   [5:0] add_ln46_17_fu_1972_p2;
wire   [5:0] tmp_16_fu_1982_p4;
wire   [0:0] tmp_122_fu_2004_p3;
wire   [0:0] icmp_ln46_55_fu_1998_p2;
wire   [0:0] icmp_ln46_54_fu_1992_p2;
wire   [0:0] tmp_121_fu_1948_p3;
wire   [0:0] select_ln46_71_fu_2018_p3;
wire   [0:0] select_ln46_95_fu_2026_p3;
wire   [0:0] tmp_118_fu_1904_p3;
wire   [0:0] or_ln46_54_fu_2034_p2;
wire   [0:0] xor_ln46_47_fu_2012_p2;
wire   [0:0] and_ln46_72_fu_2046_p2;
wire   [0:0] and_ln46_73_fu_2052_p2;
wire   [4:0] trunc_ln46_45_fu_1978_p1;
wire   [4:0] select_ln46_72_fu_2064_p3;
wire   [0:0] xor_ln46_36_fu_2058_p2;
wire   [0:0] and_ln46_74_fu_2076_p2;
wire   [0:0] xor_ln46_35_fu_2040_p2;
wire   [5:0] zext_ln46_28_fu_2072_p1;
wire   [5:0] select_ln46_96_fu_2088_p3;
wire   [0:0] or_ln46_55_fu_2082_p2;
wire   [5:0] select_ln46_73_fu_2096_p3;
wire   [0:0] icmp_ln45_17_fu_1898_p2;
wire   [5:0] select_ln46_74_fu_2104_p3;
wire   [2:0] trunc_ln46_46_fu_2160_p1;
wire   [0:0] tmp_124_fu_2144_p3;
wire   [0:0] icmp_ln46_56_fu_2164_p2;
wire   [0:0] or_ln46_56_fu_2178_p2;
wire   [0:0] tmp_125_fu_2152_p3;
wire   [0:0] and_ln46_75_fu_2184_p2;
wire   [5:0] trunc_ln46_8_fu_2134_p4;
wire   [5:0] zext_ln46_18_fu_2190_p1;
wire   [5:0] add_ln46_18_fu_2194_p2;
wire   [5:0] tmp_17_fu_2204_p4;
wire   [0:0] tmp_127_fu_2226_p3;
wire   [0:0] icmp_ln46_58_fu_2220_p2;
wire   [0:0] icmp_ln46_57_fu_2214_p2;
wire   [0:0] tmp_126_fu_2170_p3;
wire   [0:0] select_ln46_75_fu_2240_p3;
wire   [0:0] select_ln46_97_fu_2248_p3;
wire   [0:0] tmp_123_fu_2126_p3;
wire   [0:0] or_ln46_57_fu_2256_p2;
wire   [0:0] xor_ln46_48_fu_2234_p2;
wire   [0:0] and_ln46_76_fu_2268_p2;
wire   [0:0] and_ln46_77_fu_2274_p2;
wire   [4:0] trunc_ln46_47_fu_2200_p1;
wire   [4:0] select_ln46_76_fu_2286_p3;
wire   [0:0] xor_ln46_38_fu_2280_p2;
wire   [0:0] and_ln46_78_fu_2298_p2;
wire   [0:0] xor_ln46_37_fu_2262_p2;
wire   [5:0] zext_ln46_29_fu_2294_p1;
wire   [5:0] select_ln46_98_fu_2310_p3;
wire   [0:0] or_ln46_58_fu_2304_p2;
wire   [5:0] select_ln46_77_fu_2318_p3;
wire   [0:0] icmp_ln45_18_fu_2120_p2;
wire   [5:0] select_ln46_78_fu_2326_p3;
wire   [5:0] select_ln45_fu_336_p3;
wire   [5:0] select_ln45_10_fu_558_p3;
wire   [5:0] select_ln45_11_fu_780_p3;
wire   [5:0] select_ln45_12_fu_1002_p3;
wire   [5:0] select_ln45_13_fu_1224_p3;
wire   [5:0] select_ln45_14_fu_1446_p3;
wire   [5:0] select_ln45_15_fu_1668_p3;
wire   [5:0] select_ln45_16_fu_1890_p3;
wire   [5:0] select_ln45_17_fu_2112_p3;
wire   [5:0] select_ln45_18_fu_2334_p3;
wire    ap_ce_reg;

assign add_ln46_10_fu_418_p2 = (trunc_ln46_s_fu_358_p4 + zext_ln46_10_fu_414_p1);

assign add_ln46_11_fu_640_p2 = (trunc_ln46_1_fu_580_p4 + zext_ln46_11_fu_636_p1);

assign add_ln46_12_fu_862_p2 = (trunc_ln46_2_fu_802_p4 + zext_ln46_12_fu_858_p1);

assign add_ln46_13_fu_1084_p2 = (trunc_ln46_3_fu_1024_p4 + zext_ln46_13_fu_1080_p1);

assign add_ln46_14_fu_1306_p2 = (trunc_ln46_4_fu_1246_p4 + zext_ln46_14_fu_1302_p1);

assign add_ln46_15_fu_1528_p2 = (trunc_ln46_5_fu_1468_p4 + zext_ln46_15_fu_1524_p1);

assign add_ln46_16_fu_1750_p2 = (trunc_ln46_6_fu_1690_p4 + zext_ln46_16_fu_1746_p1);

assign add_ln46_17_fu_1972_p2 = (trunc_ln46_7_fu_1912_p4 + zext_ln46_17_fu_1968_p1);

assign add_ln46_18_fu_2194_p2 = (trunc_ln46_8_fu_2134_p4 + zext_ln46_18_fu_2190_p1);

assign add_ln46_fu_196_p2 = (trunc_ln3_fu_136_p4 + zext_ln46_fu_192_p1);

assign and_ln46_40_fu_270_p2 = (xor_ln46_39_fu_236_p2 & icmp_ln46_30_fu_216_p2);

assign and_ln46_41_fu_276_p2 = (tmp_81_fu_172_p3 & and_ln46_40_fu_270_p2);

assign and_ln46_42_fu_300_p2 = (xor_ln46_20_fu_282_p2 & tmp_fu_128_p3);

assign and_ln46_43_fu_408_p2 = (tmp_85_fu_376_p3 & or_ln46_32_fu_402_p2);

assign and_ln46_44_fu_492_p2 = (xor_ln46_40_fu_458_p2 & icmp_ln46_33_fu_438_p2);

assign and_ln46_45_fu_498_p2 = (tmp_86_fu_394_p3 & and_ln46_44_fu_492_p2);

assign and_ln46_46_fu_522_p2 = (xor_ln46_22_fu_504_p2 & tmp_83_fu_350_p3);

assign and_ln46_47_fu_630_p2 = (tmp_90_fu_598_p3 & or_ln46_35_fu_624_p2);

assign and_ln46_48_fu_714_p2 = (xor_ln46_41_fu_680_p2 & icmp_ln46_36_fu_660_p2);

assign and_ln46_49_fu_720_p2 = (tmp_91_fu_616_p3 & and_ln46_48_fu_714_p2);

assign and_ln46_50_fu_744_p2 = (xor_ln46_24_fu_726_p2 & tmp_88_fu_572_p3);

assign and_ln46_51_fu_852_p2 = (tmp_95_fu_820_p3 & or_ln46_38_fu_846_p2);

assign and_ln46_52_fu_936_p2 = (xor_ln46_42_fu_902_p2 & icmp_ln46_39_fu_882_p2);

assign and_ln46_53_fu_942_p2 = (tmp_96_fu_838_p3 & and_ln46_52_fu_936_p2);

assign and_ln46_54_fu_966_p2 = (xor_ln46_26_fu_948_p2 & tmp_93_fu_794_p3);

assign and_ln46_55_fu_1074_p2 = (tmp_100_fu_1042_p3 & or_ln46_41_fu_1068_p2);

assign and_ln46_56_fu_1158_p2 = (xor_ln46_43_fu_1124_p2 & icmp_ln46_42_fu_1104_p2);

assign and_ln46_57_fu_1164_p2 = (tmp_101_fu_1060_p3 & and_ln46_56_fu_1158_p2);

assign and_ln46_58_fu_1188_p2 = (xor_ln46_28_fu_1170_p2 & tmp_98_fu_1016_p3);

assign and_ln46_59_fu_1296_p2 = (tmp_105_fu_1264_p3 & or_ln46_44_fu_1290_p2);

assign and_ln46_60_fu_1380_p2 = (xor_ln46_44_fu_1346_p2 & icmp_ln46_45_fu_1326_p2);

assign and_ln46_61_fu_1386_p2 = (tmp_106_fu_1282_p3 & and_ln46_60_fu_1380_p2);

assign and_ln46_62_fu_1410_p2 = (xor_ln46_30_fu_1392_p2 & tmp_103_fu_1238_p3);

assign and_ln46_63_fu_1518_p2 = (tmp_110_fu_1486_p3 & or_ln46_47_fu_1512_p2);

assign and_ln46_64_fu_1602_p2 = (xor_ln46_45_fu_1568_p2 & icmp_ln46_48_fu_1548_p2);

assign and_ln46_65_fu_1608_p2 = (tmp_111_fu_1504_p3 & and_ln46_64_fu_1602_p2);

assign and_ln46_66_fu_1632_p2 = (xor_ln46_32_fu_1614_p2 & tmp_108_fu_1460_p3);

assign and_ln46_67_fu_1740_p2 = (tmp_115_fu_1708_p3 & or_ln46_50_fu_1734_p2);

assign and_ln46_68_fu_1824_p2 = (xor_ln46_46_fu_1790_p2 & icmp_ln46_51_fu_1770_p2);

assign and_ln46_69_fu_1830_p2 = (tmp_116_fu_1726_p3 & and_ln46_68_fu_1824_p2);

assign and_ln46_70_fu_1854_p2 = (xor_ln46_34_fu_1836_p2 & tmp_113_fu_1682_p3);

assign and_ln46_71_fu_1962_p2 = (tmp_120_fu_1930_p3 & or_ln46_53_fu_1956_p2);

assign and_ln46_72_fu_2046_p2 = (xor_ln46_47_fu_2012_p2 & icmp_ln46_54_fu_1992_p2);

assign and_ln46_73_fu_2052_p2 = (tmp_121_fu_1948_p3 & and_ln46_72_fu_2046_p2);

assign and_ln46_74_fu_2076_p2 = (xor_ln46_36_fu_2058_p2 & tmp_118_fu_1904_p3);

assign and_ln46_75_fu_2184_p2 = (tmp_125_fu_2152_p3 & or_ln46_56_fu_2178_p2);

assign and_ln46_76_fu_2268_p2 = (xor_ln46_48_fu_2234_p2 & icmp_ln46_57_fu_2214_p2);

assign and_ln46_77_fu_2274_p2 = (tmp_126_fu_2170_p3 & and_ln46_76_fu_2268_p2);

assign and_ln46_78_fu_2298_p2 = (xor_ln46_38_fu_2280_p2 & tmp_123_fu_2126_p3);

assign and_ln46_fu_186_p2 = (tmp_80_fu_154_p3 & or_ln46_fu_180_p2);

assign ap_ready = 1'b1;

assign icmp_ln46_30_fu_216_p2 = ((tmp_6_fu_206_p4 == 6'd63) ? 1'b1 : 1'b0);

assign icmp_ln46_31_fu_222_p2 = ((tmp_6_fu_206_p4 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_32_fu_388_p2 = ((trunc_ln46_30_fu_384_p1 != 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_33_fu_438_p2 = ((tmp_s_fu_428_p4 == 6'd63) ? 1'b1 : 1'b0);

assign icmp_ln46_34_fu_444_p2 = ((tmp_s_fu_428_p4 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_35_fu_610_p2 = ((trunc_ln46_32_fu_606_p1 != 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_36_fu_660_p2 = ((tmp_10_fu_650_p4 == 6'd63) ? 1'b1 : 1'b0);

assign icmp_ln46_37_fu_666_p2 = ((tmp_10_fu_650_p4 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_38_fu_832_p2 = ((trunc_ln46_34_fu_828_p1 != 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_39_fu_882_p2 = ((tmp_11_fu_872_p4 == 6'd63) ? 1'b1 : 1'b0);

assign icmp_ln46_40_fu_888_p2 = ((tmp_11_fu_872_p4 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_41_fu_1054_p2 = ((trunc_ln46_36_fu_1050_p1 != 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_42_fu_1104_p2 = ((tmp_12_fu_1094_p4 == 6'd63) ? 1'b1 : 1'b0);

assign icmp_ln46_43_fu_1110_p2 = ((tmp_12_fu_1094_p4 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_44_fu_1276_p2 = ((trunc_ln46_38_fu_1272_p1 != 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_45_fu_1326_p2 = ((tmp_13_fu_1316_p4 == 6'd63) ? 1'b1 : 1'b0);

assign icmp_ln46_46_fu_1332_p2 = ((tmp_13_fu_1316_p4 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_47_fu_1498_p2 = ((trunc_ln46_40_fu_1494_p1 != 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_48_fu_1548_p2 = ((tmp_14_fu_1538_p4 == 6'd63) ? 1'b1 : 1'b0);

assign icmp_ln46_49_fu_1554_p2 = ((tmp_14_fu_1538_p4 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_50_fu_1720_p2 = ((trunc_ln46_42_fu_1716_p1 != 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_51_fu_1770_p2 = ((tmp_15_fu_1760_p4 == 6'd63) ? 1'b1 : 1'b0);

assign icmp_ln46_52_fu_1776_p2 = ((tmp_15_fu_1760_p4 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_53_fu_1942_p2 = ((trunc_ln46_44_fu_1938_p1 != 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_54_fu_1992_p2 = ((tmp_16_fu_1982_p4 == 6'd63) ? 1'b1 : 1'b0);

assign icmp_ln46_55_fu_1998_p2 = ((tmp_16_fu_1982_p4 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_56_fu_2164_p2 = ((trunc_ln46_46_fu_2160_p1 != 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_57_fu_2214_p2 = ((tmp_17_fu_2204_p4 == 6'd63) ? 1'b1 : 1'b0);

assign icmp_ln46_58_fu_2220_p2 = ((tmp_17_fu_2204_p4 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln46_fu_166_p2 = ((trunc_ln46_fu_162_p1 != 3'd0) ? 1'b1 : 1'b0);

assign or_ln46_30_fu_258_p2 = (tmp_fu_128_p3 | select_ln46_79_fu_250_p3);

assign or_ln46_31_fu_306_p2 = (xor_ln46_fu_264_p2 | and_ln46_42_fu_300_p2);

assign or_ln46_32_fu_402_p2 = (tmp_84_fu_368_p3 | icmp_ln46_32_fu_388_p2);

assign or_ln46_33_fu_480_p2 = (tmp_83_fu_350_p3 | select_ln46_81_fu_472_p3);

assign or_ln46_34_fu_528_p2 = (xor_ln46_21_fu_486_p2 | and_ln46_46_fu_522_p2);

assign or_ln46_35_fu_624_p2 = (tmp_89_fu_590_p3 | icmp_ln46_35_fu_610_p2);

assign or_ln46_36_fu_702_p2 = (tmp_88_fu_572_p3 | select_ln46_83_fu_694_p3);

assign or_ln46_37_fu_750_p2 = (xor_ln46_23_fu_708_p2 | and_ln46_50_fu_744_p2);

assign or_ln46_38_fu_846_p2 = (tmp_94_fu_812_p3 | icmp_ln46_38_fu_832_p2);

assign or_ln46_39_fu_924_p2 = (tmp_93_fu_794_p3 | select_ln46_85_fu_916_p3);

assign or_ln46_40_fu_972_p2 = (xor_ln46_25_fu_930_p2 | and_ln46_54_fu_966_p2);

assign or_ln46_41_fu_1068_p2 = (tmp_99_fu_1034_p3 | icmp_ln46_41_fu_1054_p2);

assign or_ln46_42_fu_1146_p2 = (tmp_98_fu_1016_p3 | select_ln46_87_fu_1138_p3);

assign or_ln46_43_fu_1194_p2 = (xor_ln46_27_fu_1152_p2 | and_ln46_58_fu_1188_p2);

assign or_ln46_44_fu_1290_p2 = (tmp_104_fu_1256_p3 | icmp_ln46_44_fu_1276_p2);

assign or_ln46_45_fu_1368_p2 = (tmp_103_fu_1238_p3 | select_ln46_89_fu_1360_p3);

assign or_ln46_46_fu_1416_p2 = (xor_ln46_29_fu_1374_p2 | and_ln46_62_fu_1410_p2);

assign or_ln46_47_fu_1512_p2 = (tmp_109_fu_1478_p3 | icmp_ln46_47_fu_1498_p2);

assign or_ln46_48_fu_1590_p2 = (tmp_108_fu_1460_p3 | select_ln46_91_fu_1582_p3);

assign or_ln46_49_fu_1638_p2 = (xor_ln46_31_fu_1596_p2 | and_ln46_66_fu_1632_p2);

assign or_ln46_50_fu_1734_p2 = (tmp_114_fu_1700_p3 | icmp_ln46_50_fu_1720_p2);

assign or_ln46_51_fu_1812_p2 = (tmp_113_fu_1682_p3 | select_ln46_93_fu_1804_p3);

assign or_ln46_52_fu_1860_p2 = (xor_ln46_33_fu_1818_p2 | and_ln46_70_fu_1854_p2);

assign or_ln46_53_fu_1956_p2 = (tmp_119_fu_1922_p3 | icmp_ln46_53_fu_1942_p2);

assign or_ln46_54_fu_2034_p2 = (tmp_118_fu_1904_p3 | select_ln46_95_fu_2026_p3);

assign or_ln46_55_fu_2082_p2 = (xor_ln46_35_fu_2040_p2 | and_ln46_74_fu_2076_p2);

assign or_ln46_56_fu_2178_p2 = (tmp_124_fu_2144_p3 | icmp_ln46_56_fu_2164_p2);

assign or_ln46_57_fu_2256_p2 = (tmp_123_fu_2126_p3 | select_ln46_97_fu_2248_p3);

assign or_ln46_58_fu_2304_p2 = (xor_ln46_37_fu_2262_p2 | and_ln46_78_fu_2298_p2);

assign or_ln46_fu_180_p2 = (tmp_79_fu_146_p3 | icmp_ln46_fu_166_p2);

assign select_ln45_10_fu_558_p3 = ((icmp_ln45_10_fu_344_p2[0:0] == 1'b1) ? select_ln46_46_fu_550_p3 : 6'd0);

assign select_ln45_11_fu_780_p3 = ((icmp_ln45_11_fu_566_p2[0:0] == 1'b1) ? select_ln46_50_fu_772_p3 : 6'd0);

assign select_ln45_12_fu_1002_p3 = ((icmp_ln45_12_fu_788_p2[0:0] == 1'b1) ? select_ln46_54_fu_994_p3 : 6'd0);

assign select_ln45_13_fu_1224_p3 = ((icmp_ln45_13_fu_1010_p2[0:0] == 1'b1) ? select_ln46_58_fu_1216_p3 : 6'd0);

assign select_ln45_14_fu_1446_p3 = ((icmp_ln45_14_fu_1232_p2[0:0] == 1'b1) ? select_ln46_62_fu_1438_p3 : 6'd0);

assign select_ln45_15_fu_1668_p3 = ((icmp_ln45_15_fu_1454_p2[0:0] == 1'b1) ? select_ln46_66_fu_1660_p3 : 6'd0);

assign select_ln45_16_fu_1890_p3 = ((icmp_ln45_16_fu_1676_p2[0:0] == 1'b1) ? select_ln46_70_fu_1882_p3 : 6'd0);

assign select_ln45_17_fu_2112_p3 = ((icmp_ln45_17_fu_1898_p2[0:0] == 1'b1) ? select_ln46_74_fu_2104_p3 : 6'd0);

assign select_ln45_18_fu_2334_p3 = ((icmp_ln45_18_fu_2120_p2[0:0] == 1'b1) ? select_ln46_78_fu_2326_p3 : 6'd0);

assign select_ln45_fu_336_p3 = ((icmp_ln45_fu_122_p2[0:0] == 1'b1) ? select_ln46_42_fu_328_p3 : 6'd0);

assign select_ln46_40_fu_288_p3 = ((and_ln46_41_fu_276_p2[0:0] == 1'b1) ? trunc_ln46_29_fu_202_p1 : 5'd0);

assign select_ln46_41_fu_320_p3 = ((or_ln46_30_fu_258_p2[0:0] == 1'b1) ? select_ln46_80_fu_312_p3 : 6'd63);

assign select_ln46_42_fu_328_p3 = ((or_ln46_31_fu_306_p2[0:0] == 1'b1) ? select_ln46_41_fu_320_p3 : add_ln46_fu_196_p2);

assign select_ln46_43_fu_464_p3 = ((tmp_87_fu_450_p3[0:0] == 1'b1) ? icmp_ln46_34_fu_444_p2 : icmp_ln46_33_fu_438_p2);

assign select_ln46_44_fu_510_p3 = ((and_ln46_45_fu_498_p2[0:0] == 1'b1) ? trunc_ln46_31_fu_424_p1 : 5'd0);

assign select_ln46_45_fu_542_p3 = ((or_ln46_33_fu_480_p2[0:0] == 1'b1) ? select_ln46_82_fu_534_p3 : 6'd63);

assign select_ln46_46_fu_550_p3 = ((or_ln46_34_fu_528_p2[0:0] == 1'b1) ? select_ln46_45_fu_542_p3 : add_ln46_10_fu_418_p2);

assign select_ln46_47_fu_686_p3 = ((tmp_92_fu_672_p3[0:0] == 1'b1) ? icmp_ln46_37_fu_666_p2 : icmp_ln46_36_fu_660_p2);

assign select_ln46_48_fu_732_p3 = ((and_ln46_49_fu_720_p2[0:0] == 1'b1) ? trunc_ln46_33_fu_646_p1 : 5'd0);

assign select_ln46_49_fu_764_p3 = ((or_ln46_36_fu_702_p2[0:0] == 1'b1) ? select_ln46_84_fu_756_p3 : 6'd63);

assign select_ln46_50_fu_772_p3 = ((or_ln46_37_fu_750_p2[0:0] == 1'b1) ? select_ln46_49_fu_764_p3 : add_ln46_11_fu_640_p2);

assign select_ln46_51_fu_908_p3 = ((tmp_97_fu_894_p3[0:0] == 1'b1) ? icmp_ln46_40_fu_888_p2 : icmp_ln46_39_fu_882_p2);

assign select_ln46_52_fu_954_p3 = ((and_ln46_53_fu_942_p2[0:0] == 1'b1) ? trunc_ln46_35_fu_868_p1 : 5'd0);

assign select_ln46_53_fu_986_p3 = ((or_ln46_39_fu_924_p2[0:0] == 1'b1) ? select_ln46_86_fu_978_p3 : 6'd63);

assign select_ln46_54_fu_994_p3 = ((or_ln46_40_fu_972_p2[0:0] == 1'b1) ? select_ln46_53_fu_986_p3 : add_ln46_12_fu_862_p2);

assign select_ln46_55_fu_1130_p3 = ((tmp_102_fu_1116_p3[0:0] == 1'b1) ? icmp_ln46_43_fu_1110_p2 : icmp_ln46_42_fu_1104_p2);

assign select_ln46_56_fu_1176_p3 = ((and_ln46_57_fu_1164_p2[0:0] == 1'b1) ? trunc_ln46_37_fu_1090_p1 : 5'd0);

assign select_ln46_57_fu_1208_p3 = ((or_ln46_42_fu_1146_p2[0:0] == 1'b1) ? select_ln46_88_fu_1200_p3 : 6'd63);

assign select_ln46_58_fu_1216_p3 = ((or_ln46_43_fu_1194_p2[0:0] == 1'b1) ? select_ln46_57_fu_1208_p3 : add_ln46_13_fu_1084_p2);

assign select_ln46_59_fu_1352_p3 = ((tmp_107_fu_1338_p3[0:0] == 1'b1) ? icmp_ln46_46_fu_1332_p2 : icmp_ln46_45_fu_1326_p2);

assign select_ln46_60_fu_1398_p3 = ((and_ln46_61_fu_1386_p2[0:0] == 1'b1) ? trunc_ln46_39_fu_1312_p1 : 5'd0);

assign select_ln46_61_fu_1430_p3 = ((or_ln46_45_fu_1368_p2[0:0] == 1'b1) ? select_ln46_90_fu_1422_p3 : 6'd63);

assign select_ln46_62_fu_1438_p3 = ((or_ln46_46_fu_1416_p2[0:0] == 1'b1) ? select_ln46_61_fu_1430_p3 : add_ln46_14_fu_1306_p2);

assign select_ln46_63_fu_1574_p3 = ((tmp_112_fu_1560_p3[0:0] == 1'b1) ? icmp_ln46_49_fu_1554_p2 : icmp_ln46_48_fu_1548_p2);

assign select_ln46_64_fu_1620_p3 = ((and_ln46_65_fu_1608_p2[0:0] == 1'b1) ? trunc_ln46_41_fu_1534_p1 : 5'd0);

assign select_ln46_65_fu_1652_p3 = ((or_ln46_48_fu_1590_p2[0:0] == 1'b1) ? select_ln46_92_fu_1644_p3 : 6'd63);

assign select_ln46_66_fu_1660_p3 = ((or_ln46_49_fu_1638_p2[0:0] == 1'b1) ? select_ln46_65_fu_1652_p3 : add_ln46_15_fu_1528_p2);

assign select_ln46_67_fu_1796_p3 = ((tmp_117_fu_1782_p3[0:0] == 1'b1) ? icmp_ln46_52_fu_1776_p2 : icmp_ln46_51_fu_1770_p2);

assign select_ln46_68_fu_1842_p3 = ((and_ln46_69_fu_1830_p2[0:0] == 1'b1) ? trunc_ln46_43_fu_1756_p1 : 5'd0);

assign select_ln46_69_fu_1874_p3 = ((or_ln46_51_fu_1812_p2[0:0] == 1'b1) ? select_ln46_94_fu_1866_p3 : 6'd63);

assign select_ln46_70_fu_1882_p3 = ((or_ln46_52_fu_1860_p2[0:0] == 1'b1) ? select_ln46_69_fu_1874_p3 : add_ln46_16_fu_1750_p2);

assign select_ln46_71_fu_2018_p3 = ((tmp_122_fu_2004_p3[0:0] == 1'b1) ? icmp_ln46_55_fu_1998_p2 : icmp_ln46_54_fu_1992_p2);

assign select_ln46_72_fu_2064_p3 = ((and_ln46_73_fu_2052_p2[0:0] == 1'b1) ? trunc_ln46_45_fu_1978_p1 : 5'd0);

assign select_ln46_73_fu_2096_p3 = ((or_ln46_54_fu_2034_p2[0:0] == 1'b1) ? select_ln46_96_fu_2088_p3 : 6'd63);

assign select_ln46_74_fu_2104_p3 = ((or_ln46_55_fu_2082_p2[0:0] == 1'b1) ? select_ln46_73_fu_2096_p3 : add_ln46_17_fu_1972_p2);

assign select_ln46_75_fu_2240_p3 = ((tmp_127_fu_2226_p3[0:0] == 1'b1) ? icmp_ln46_58_fu_2220_p2 : icmp_ln46_57_fu_2214_p2);

assign select_ln46_76_fu_2286_p3 = ((and_ln46_77_fu_2274_p2[0:0] == 1'b1) ? trunc_ln46_47_fu_2200_p1 : 5'd0);

assign select_ln46_77_fu_2318_p3 = ((or_ln46_57_fu_2256_p2[0:0] == 1'b1) ? select_ln46_98_fu_2310_p3 : 6'd63);

assign select_ln46_78_fu_2326_p3 = ((or_ln46_58_fu_2304_p2[0:0] == 1'b1) ? select_ln46_77_fu_2318_p3 : add_ln46_18_fu_2194_p2);

assign select_ln46_79_fu_250_p3 = ((tmp_81_fu_172_p3[0:0] == 1'b1) ? select_ln46_fu_242_p3 : icmp_ln46_31_fu_222_p2);

assign select_ln46_80_fu_312_p3 = ((tmp_fu_128_p3[0:0] == 1'b1) ? zext_ln46_20_fu_296_p1 : add_ln46_fu_196_p2);

assign select_ln46_81_fu_472_p3 = ((tmp_86_fu_394_p3[0:0] == 1'b1) ? select_ln46_43_fu_464_p3 : icmp_ln46_34_fu_444_p2);

assign select_ln46_82_fu_534_p3 = ((tmp_83_fu_350_p3[0:0] == 1'b1) ? zext_ln46_21_fu_518_p1 : add_ln46_10_fu_418_p2);

assign select_ln46_83_fu_694_p3 = ((tmp_91_fu_616_p3[0:0] == 1'b1) ? select_ln46_47_fu_686_p3 : icmp_ln46_37_fu_666_p2);

assign select_ln46_84_fu_756_p3 = ((tmp_88_fu_572_p3[0:0] == 1'b1) ? zext_ln46_22_fu_740_p1 : add_ln46_11_fu_640_p2);

assign select_ln46_85_fu_916_p3 = ((tmp_96_fu_838_p3[0:0] == 1'b1) ? select_ln46_51_fu_908_p3 : icmp_ln46_40_fu_888_p2);

assign select_ln46_86_fu_978_p3 = ((tmp_93_fu_794_p3[0:0] == 1'b1) ? zext_ln46_23_fu_962_p1 : add_ln46_12_fu_862_p2);

assign select_ln46_87_fu_1138_p3 = ((tmp_101_fu_1060_p3[0:0] == 1'b1) ? select_ln46_55_fu_1130_p3 : icmp_ln46_43_fu_1110_p2);

assign select_ln46_88_fu_1200_p3 = ((tmp_98_fu_1016_p3[0:0] == 1'b1) ? zext_ln46_24_fu_1184_p1 : add_ln46_13_fu_1084_p2);

assign select_ln46_89_fu_1360_p3 = ((tmp_106_fu_1282_p3[0:0] == 1'b1) ? select_ln46_59_fu_1352_p3 : icmp_ln46_46_fu_1332_p2);

assign select_ln46_90_fu_1422_p3 = ((tmp_103_fu_1238_p3[0:0] == 1'b1) ? zext_ln46_25_fu_1406_p1 : add_ln46_14_fu_1306_p2);

assign select_ln46_91_fu_1582_p3 = ((tmp_111_fu_1504_p3[0:0] == 1'b1) ? select_ln46_63_fu_1574_p3 : icmp_ln46_49_fu_1554_p2);

assign select_ln46_92_fu_1644_p3 = ((tmp_108_fu_1460_p3[0:0] == 1'b1) ? zext_ln46_26_fu_1628_p1 : add_ln46_15_fu_1528_p2);

assign select_ln46_93_fu_1804_p3 = ((tmp_116_fu_1726_p3[0:0] == 1'b1) ? select_ln46_67_fu_1796_p3 : icmp_ln46_52_fu_1776_p2);

assign select_ln46_94_fu_1866_p3 = ((tmp_113_fu_1682_p3[0:0] == 1'b1) ? zext_ln46_27_fu_1850_p1 : add_ln46_16_fu_1750_p2);

assign select_ln46_95_fu_2026_p3 = ((tmp_121_fu_1948_p3[0:0] == 1'b1) ? select_ln46_71_fu_2018_p3 : icmp_ln46_55_fu_1998_p2);

assign select_ln46_96_fu_2088_p3 = ((tmp_118_fu_1904_p3[0:0] == 1'b1) ? zext_ln46_28_fu_2072_p1 : add_ln46_17_fu_1972_p2);

assign select_ln46_97_fu_2248_p3 = ((tmp_126_fu_2170_p3[0:0] == 1'b1) ? select_ln46_75_fu_2240_p3 : icmp_ln46_58_fu_2220_p2);

assign select_ln46_98_fu_2310_p3 = ((tmp_123_fu_2126_p3[0:0] == 1'b1) ? zext_ln46_29_fu_2294_p1 : add_ln46_18_fu_2194_p2);

assign select_ln46_fu_242_p3 = ((tmp_82_fu_228_p3[0:0] == 1'b1) ? icmp_ln46_31_fu_222_p2 : icmp_ln46_30_fu_216_p2);

assign tmp_100_fu_1042_p3 = data_4_val[32'd3];

assign tmp_101_fu_1060_p3 = data_4_val[32'd9];

assign tmp_102_fu_1116_p3 = add_ln46_13_fu_1084_p2[32'd5];

assign tmp_103_fu_1238_p3 = data_5_val[32'd15];

assign tmp_104_fu_1256_p3 = data_5_val[32'd4];

assign tmp_105_fu_1264_p3 = data_5_val[32'd3];

assign tmp_106_fu_1282_p3 = data_5_val[32'd9];

assign tmp_107_fu_1338_p3 = add_ln46_14_fu_1306_p2[32'd5];

assign tmp_108_fu_1460_p3 = data_6_val[32'd15];

assign tmp_109_fu_1478_p3 = data_6_val[32'd4];

assign tmp_10_fu_650_p4 = {{data_2_val[15:10]}};

assign tmp_110_fu_1486_p3 = data_6_val[32'd3];

assign tmp_111_fu_1504_p3 = data_6_val[32'd9];

assign tmp_112_fu_1560_p3 = add_ln46_15_fu_1528_p2[32'd5];

assign tmp_113_fu_1682_p3 = data_7_val[32'd15];

assign tmp_114_fu_1700_p3 = data_7_val[32'd4];

assign tmp_115_fu_1708_p3 = data_7_val[32'd3];

assign tmp_116_fu_1726_p3 = data_7_val[32'd9];

assign tmp_117_fu_1782_p3 = add_ln46_16_fu_1750_p2[32'd5];

assign tmp_118_fu_1904_p3 = data_8_val[32'd15];

assign tmp_119_fu_1922_p3 = data_8_val[32'd4];

assign tmp_11_fu_872_p4 = {{data_3_val[15:10]}};

assign tmp_120_fu_1930_p3 = data_8_val[32'd3];

assign tmp_121_fu_1948_p3 = data_8_val[32'd9];

assign tmp_122_fu_2004_p3 = add_ln46_17_fu_1972_p2[32'd5];

assign tmp_123_fu_2126_p3 = data_9_val[32'd15];

assign tmp_124_fu_2144_p3 = data_9_val[32'd4];

assign tmp_125_fu_2152_p3 = data_9_val[32'd3];

assign tmp_126_fu_2170_p3 = data_9_val[32'd9];

assign tmp_127_fu_2226_p3 = add_ln46_18_fu_2194_p2[32'd5];

assign tmp_12_fu_1094_p4 = {{data_4_val[15:10]}};

assign tmp_13_fu_1316_p4 = {{data_5_val[15:10]}};

assign tmp_14_fu_1538_p4 = {{data_6_val[15:10]}};

assign tmp_15_fu_1760_p4 = {{data_7_val[15:10]}};

assign tmp_16_fu_1982_p4 = {{data_8_val[15:10]}};

assign tmp_17_fu_2204_p4 = {{data_9_val[15:10]}};

assign tmp_6_fu_206_p4 = {{data_0_val[15:10]}};

assign tmp_79_fu_146_p3 = data_0_val[32'd4];

assign tmp_80_fu_154_p3 = data_0_val[32'd3];

assign tmp_81_fu_172_p3 = data_0_val[32'd9];

assign tmp_82_fu_228_p3 = add_ln46_fu_196_p2[32'd5];

assign tmp_83_fu_350_p3 = data_1_val[32'd15];

assign tmp_84_fu_368_p3 = data_1_val[32'd4];

assign tmp_85_fu_376_p3 = data_1_val[32'd3];

assign tmp_86_fu_394_p3 = data_1_val[32'd9];

assign tmp_87_fu_450_p3 = add_ln46_10_fu_418_p2[32'd5];

assign tmp_88_fu_572_p3 = data_2_val[32'd15];

assign tmp_89_fu_590_p3 = data_2_val[32'd4];

assign tmp_90_fu_598_p3 = data_2_val[32'd3];

assign tmp_91_fu_616_p3 = data_2_val[32'd9];

assign tmp_92_fu_672_p3 = add_ln46_11_fu_640_p2[32'd5];

assign tmp_93_fu_794_p3 = data_3_val[32'd15];

assign tmp_94_fu_812_p3 = data_3_val[32'd4];

assign tmp_95_fu_820_p3 = data_3_val[32'd3];

assign tmp_96_fu_838_p3 = data_3_val[32'd9];

assign tmp_97_fu_894_p3 = add_ln46_12_fu_862_p2[32'd5];

assign tmp_98_fu_1016_p3 = data_4_val[32'd15];

assign tmp_99_fu_1034_p3 = data_4_val[32'd4];

assign tmp_fu_128_p3 = data_0_val[32'd15];

assign tmp_s_fu_428_p4 = {{data_1_val[15:10]}};

assign trunc_ln3_fu_136_p4 = {{data_0_val[9:4]}};

assign trunc_ln46_1_fu_580_p4 = {{data_2_val[9:4]}};

assign trunc_ln46_29_fu_202_p1 = add_ln46_fu_196_p2[4:0];

assign trunc_ln46_2_fu_802_p4 = {{data_3_val[9:4]}};

assign trunc_ln46_30_fu_384_p1 = data_1_val[2:0];

assign trunc_ln46_31_fu_424_p1 = add_ln46_10_fu_418_p2[4:0];

assign trunc_ln46_32_fu_606_p1 = data_2_val[2:0];

assign trunc_ln46_33_fu_646_p1 = add_ln46_11_fu_640_p2[4:0];

assign trunc_ln46_34_fu_828_p1 = data_3_val[2:0];

assign trunc_ln46_35_fu_868_p1 = add_ln46_12_fu_862_p2[4:0];

assign trunc_ln46_36_fu_1050_p1 = data_4_val[2:0];

assign trunc_ln46_37_fu_1090_p1 = add_ln46_13_fu_1084_p2[4:0];

assign trunc_ln46_38_fu_1272_p1 = data_5_val[2:0];

assign trunc_ln46_39_fu_1312_p1 = add_ln46_14_fu_1306_p2[4:0];

assign trunc_ln46_3_fu_1024_p4 = {{data_4_val[9:4]}};

assign trunc_ln46_40_fu_1494_p1 = data_6_val[2:0];

assign trunc_ln46_41_fu_1534_p1 = add_ln46_15_fu_1528_p2[4:0];

assign trunc_ln46_42_fu_1716_p1 = data_7_val[2:0];

assign trunc_ln46_43_fu_1756_p1 = add_ln46_16_fu_1750_p2[4:0];

assign trunc_ln46_44_fu_1938_p1 = data_8_val[2:0];

assign trunc_ln46_45_fu_1978_p1 = add_ln46_17_fu_1972_p2[4:0];

assign trunc_ln46_46_fu_2160_p1 = data_9_val[2:0];

assign trunc_ln46_47_fu_2200_p1 = add_ln46_18_fu_2194_p2[4:0];

assign trunc_ln46_4_fu_1246_p4 = {{data_5_val[9:4]}};

assign trunc_ln46_5_fu_1468_p4 = {{data_6_val[9:4]}};

assign trunc_ln46_6_fu_1690_p4 = {{data_7_val[9:4]}};

assign trunc_ln46_7_fu_1912_p4 = {{data_8_val[9:4]}};

assign trunc_ln46_8_fu_2134_p4 = {{data_9_val[9:4]}};

assign trunc_ln46_fu_162_p1 = data_0_val[2:0];

assign trunc_ln46_s_fu_358_p4 = {{data_1_val[9:4]}};

assign xor_ln46_20_fu_282_p2 = (1'd1 ^ and_ln46_41_fu_276_p2);

assign xor_ln46_21_fu_486_p2 = (or_ln46_33_fu_480_p2 ^ 1'd1);

assign xor_ln46_22_fu_504_p2 = (1'd1 ^ and_ln46_45_fu_498_p2);

assign xor_ln46_23_fu_708_p2 = (or_ln46_36_fu_702_p2 ^ 1'd1);

assign xor_ln46_24_fu_726_p2 = (1'd1 ^ and_ln46_49_fu_720_p2);

assign xor_ln46_25_fu_930_p2 = (or_ln46_39_fu_924_p2 ^ 1'd1);

assign xor_ln46_26_fu_948_p2 = (1'd1 ^ and_ln46_53_fu_942_p2);

assign xor_ln46_27_fu_1152_p2 = (or_ln46_42_fu_1146_p2 ^ 1'd1);

assign xor_ln46_28_fu_1170_p2 = (1'd1 ^ and_ln46_57_fu_1164_p2);

assign xor_ln46_29_fu_1374_p2 = (or_ln46_45_fu_1368_p2 ^ 1'd1);

assign xor_ln46_30_fu_1392_p2 = (1'd1 ^ and_ln46_61_fu_1386_p2);

assign xor_ln46_31_fu_1596_p2 = (or_ln46_48_fu_1590_p2 ^ 1'd1);

assign xor_ln46_32_fu_1614_p2 = (1'd1 ^ and_ln46_65_fu_1608_p2);

assign xor_ln46_33_fu_1818_p2 = (or_ln46_51_fu_1812_p2 ^ 1'd1);

assign xor_ln46_34_fu_1836_p2 = (1'd1 ^ and_ln46_69_fu_1830_p2);

assign xor_ln46_35_fu_2040_p2 = (or_ln46_54_fu_2034_p2 ^ 1'd1);

assign xor_ln46_36_fu_2058_p2 = (1'd1 ^ and_ln46_73_fu_2052_p2);

assign xor_ln46_37_fu_2262_p2 = (or_ln46_57_fu_2256_p2 ^ 1'd1);

assign xor_ln46_38_fu_2280_p2 = (1'd1 ^ and_ln46_77_fu_2274_p2);

assign xor_ln46_39_fu_236_p2 = (tmp_82_fu_228_p3 ^ 1'd1);

assign xor_ln46_40_fu_458_p2 = (tmp_87_fu_450_p3 ^ 1'd1);

assign xor_ln46_41_fu_680_p2 = (tmp_92_fu_672_p3 ^ 1'd1);

assign xor_ln46_42_fu_902_p2 = (tmp_97_fu_894_p3 ^ 1'd1);

assign xor_ln46_43_fu_1124_p2 = (tmp_102_fu_1116_p3 ^ 1'd1);

assign xor_ln46_44_fu_1346_p2 = (tmp_107_fu_1338_p3 ^ 1'd1);

assign xor_ln46_45_fu_1568_p2 = (tmp_112_fu_1560_p3 ^ 1'd1);

assign xor_ln46_46_fu_1790_p2 = (tmp_117_fu_1782_p3 ^ 1'd1);

assign xor_ln46_47_fu_2012_p2 = (tmp_122_fu_2004_p3 ^ 1'd1);

assign xor_ln46_48_fu_2234_p2 = (tmp_127_fu_2226_p3 ^ 1'd1);

assign xor_ln46_fu_264_p2 = (or_ln46_30_fu_258_p2 ^ 1'd1);

assign zext_ln46_10_fu_414_p1 = and_ln46_43_fu_408_p2;

assign zext_ln46_11_fu_636_p1 = and_ln46_47_fu_630_p2;

assign zext_ln46_12_fu_858_p1 = and_ln46_51_fu_852_p2;

assign zext_ln46_13_fu_1080_p1 = and_ln46_55_fu_1074_p2;

assign zext_ln46_14_fu_1302_p1 = and_ln46_59_fu_1296_p2;

assign zext_ln46_15_fu_1524_p1 = and_ln46_63_fu_1518_p2;

assign zext_ln46_16_fu_1746_p1 = and_ln46_67_fu_1740_p2;

assign zext_ln46_17_fu_1968_p1 = and_ln46_71_fu_1962_p2;

assign zext_ln46_18_fu_2190_p1 = and_ln46_75_fu_2184_p2;

assign zext_ln46_20_fu_296_p1 = select_ln46_40_fu_288_p3;

assign zext_ln46_21_fu_518_p1 = select_ln46_44_fu_510_p3;

assign zext_ln46_22_fu_740_p1 = select_ln46_48_fu_732_p3;

assign zext_ln46_23_fu_962_p1 = select_ln46_52_fu_954_p3;

assign zext_ln46_24_fu_1184_p1 = select_ln46_56_fu_1176_p3;

assign zext_ln46_25_fu_1406_p1 = select_ln46_60_fu_1398_p3;

assign zext_ln46_26_fu_1628_p1 = select_ln46_64_fu_1620_p3;

assign zext_ln46_27_fu_1850_p1 = select_ln46_68_fu_1842_p3;

assign zext_ln46_28_fu_2072_p1 = select_ln46_72_fu_2064_p3;

assign zext_ln46_29_fu_2294_p1 = select_ln46_76_fu_2286_p3;

assign zext_ln46_fu_192_p1 = and_ln46_fu_186_p2;

assign ap_return_0 = select_ln45_fu_336_p3;

assign ap_return_1 = select_ln45_10_fu_558_p3;

assign ap_return_2 = select_ln45_11_fu_780_p3;

assign ap_return_3 = select_ln45_12_fu_1002_p3;

assign ap_return_4 = select_ln45_13_fu_1224_p3;

assign ap_return_5 = select_ln45_14_fu_1446_p3;

assign ap_return_6 = select_ln45_15_fu_1668_p3;

assign ap_return_7 = select_ln45_16_fu_1890_p3;

assign ap_return_8 = select_ln45_17_fu_2112_p3;

assign ap_return_9 = select_ln45_18_fu_2334_p3;

assign icmp_ln45_10_fu_344_p2 = (($signed(data_1_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_11_fu_566_p2 = (($signed(data_2_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_12_fu_788_p2 = (($signed(data_3_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_13_fu_1010_p2 = (($signed(data_4_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_14_fu_1232_p2 = (($signed(data_5_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_15_fu_1454_p2 = (($signed(data_6_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_16_fu_1676_p2 = (($signed(data_7_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_17_fu_1898_p2 = (($signed(data_8_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_18_fu_2120_p2 = (($signed(data_9_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln45_fu_122_p2 = (($signed(data_0_val) > $signed(16'd0)) ? 1'b1 : 1'b0);

endmodule //myproject_relu_ap_fixed_16_6_5_3_0_ap_ufixed_6_0_4_0_0_relu_config4_s