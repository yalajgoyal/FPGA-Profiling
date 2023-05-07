-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1.2 (64-bit)
-- Version: 2022.1.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity apply_watermark_saturatedAdd is
port (
    ap_ready : OUT STD_LOGIC;
    x : IN STD_LOGIC_VECTOR (23 downto 0);
    y : IN STD_LOGIC_VECTOR (16 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (23 downto 0) );
end;


architecture behav of apply_watermark_saturatedAdd is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv9_F : STD_LOGIC_VECTOR (8 downto 0) := "000001111";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv8_F : STD_LOGIC_VECTOR (7 downto 0) := "00001111";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal redX_fu_52_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal redY_fu_48_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal greenX_fu_64_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal greenY_fu_78_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal blueX_fu_92_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_fu_106_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln181_fu_60_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln180_fu_56_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal redOutput_fu_122_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_1_fu_134_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln195_1_fu_128_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln186_fu_88_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln185_fu_74_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal greenOutput_fu_150_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_2_fu_162_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln202_1_fu_156_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln195_fu_114_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln190_fu_102_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln209_fu_178_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal blueOutput_fu_186_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_3_fu_198_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln209_1_fu_192_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal blueOutput_1_fu_206_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal greenOutput_1_fu_170_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal redOutput_2_fu_142_p3 : STD_LOGIC_VECTOR (7 downto 0);


begin



    add_ln195_1_fu_128_p2 <= std_logic_vector(unsigned(redY_fu_48_p1) + unsigned(redX_fu_52_p1));
    add_ln202_1_fu_156_p2 <= std_logic_vector(unsigned(greenY_fu_78_p4) + unsigned(greenX_fu_64_p4));
    add_ln209_1_fu_192_p2 <= std_logic_vector(unsigned(select_ln209_fu_178_p3) + unsigned(blueX_fu_92_p4));
    ap_ready <= ap_const_logic_1;
    ap_return <= ((blueOutput_1_fu_206_p3 & greenOutput_1_fu_170_p3) & redOutput_2_fu_142_p3);
    blueOutput_1_fu_206_p3 <= 
        ap_const_lv8_FF when (tmp_3_fu_198_p3(0) = '1') else 
        add_ln209_1_fu_192_p2;
    blueOutput_fu_186_p2 <= std_logic_vector(unsigned(select_ln195_fu_114_p3) + unsigned(zext_ln190_fu_102_p1));
    blueX_fu_92_p4 <= x(23 downto 16);
    greenOutput_1_fu_170_p3 <= 
        ap_const_lv8_FF when (tmp_2_fu_162_p3(0) = '1') else 
        add_ln202_1_fu_156_p2;
    greenOutput_fu_150_p2 <= std_logic_vector(unsigned(zext_ln186_fu_88_p1) + unsigned(zext_ln185_fu_74_p1));
    greenX_fu_64_p4 <= x(15 downto 8);
    greenY_fu_78_p4 <= y(15 downto 8);
    redOutput_2_fu_142_p3 <= 
        ap_const_lv8_FF when (tmp_1_fu_134_p3(0) = '1') else 
        add_ln195_1_fu_128_p2;
    redOutput_fu_122_p2 <= std_logic_vector(unsigned(zext_ln181_fu_60_p1) + unsigned(zext_ln180_fu_56_p1));
    redX_fu_52_p1 <= x(8 - 1 downto 0);
    redY_fu_48_p1 <= y(8 - 1 downto 0);
    select_ln195_fu_114_p3 <= 
        ap_const_lv9_F when (tmp_fu_106_p3(0) = '1') else 
        ap_const_lv9_0;
    select_ln209_fu_178_p3 <= 
        ap_const_lv8_F when (tmp_fu_106_p3(0) = '1') else 
        ap_const_lv8_0;
    tmp_1_fu_134_p3 <= redOutput_fu_122_p2(8 downto 8);
    tmp_2_fu_162_p3 <= greenOutput_fu_150_p2(8 downto 8);
    tmp_3_fu_198_p3 <= blueOutput_fu_186_p2(8 downto 8);
    tmp_fu_106_p3 <= y(16 downto 16);
    zext_ln180_fu_56_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(redX_fu_52_p1),9));
    zext_ln181_fu_60_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(redY_fu_48_p1),9));
    zext_ln185_fu_74_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(greenX_fu_64_p4),9));
    zext_ln186_fu_88_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(greenY_fu_78_p4),9));
    zext_ln190_fu_102_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(blueX_fu_92_p4),9));
end behav;