-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1.2 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity apply_watermark_compute_watermark_watermark_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 17; 
             AddressWidth     : integer := 8; 
             AddressRange    : integer := 256
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          address1      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DataWidth-1 downto 0);
          address2      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce2       : in std_logic; 
          q2         : out std_logic_vector(DataWidth-1 downto 0);
          address3      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce3       : in std_logic; 
          q3         : out std_logic_vector(DataWidth-1 downto 0);
          address4      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce4       : in std_logic; 
          q4         : out std_logic_vector(DataWidth-1 downto 0);
          address5      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce5       : in std_logic; 
          q5         : out std_logic_vector(DataWidth-1 downto 0);
          address6      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce6       : in std_logic; 
          q6         : out std_logic_vector(DataWidth-1 downto 0);
          address7      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce7       : in std_logic; 
          q7         : out std_logic_vector(DataWidth-1 downto 0);
          address8      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce8       : in std_logic; 
          q8         : out std_logic_vector(DataWidth-1 downto 0);
          address9      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce9       : in std_logic; 
          q9         : out std_logic_vector(DataWidth-1 downto 0);
          address10      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce10       : in std_logic; 
          q10         : out std_logic_vector(DataWidth-1 downto 0);
          address11      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce11       : in std_logic; 
          q11         : out std_logic_vector(DataWidth-1 downto 0);
          address12      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce12       : in std_logic; 
          q12         : out std_logic_vector(DataWidth-1 downto 0);
          address13      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce13       : in std_logic; 
          q13         : out std_logic_vector(DataWidth-1 downto 0);
          address14      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce14       : in std_logic; 
          q14         : out std_logic_vector(DataWidth-1 downto 0);
          address15      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce15       : in std_logic; 
          q15         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of apply_watermark_compute_watermark_watermark_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address2_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address3_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address4_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address5_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address6_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address7_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address8_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address9_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address10_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address11_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address12_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address13_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address14_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address15_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem0 : mem_array := (
    0 to 16=> "00000000000000000", 17 => "10000111100001111", 
    18 to 29=> "00000000000000000", 30 => "10000111100001111", 
    31 to 33=> "00000000000000000", 34 => "10000111100001111", 
    35 to 44=> "00000000000000000", 45 => "10000111100001111", 
    46 to 50=> "00000000000000000", 51 => "10000111100001111", 
    52 to 59=> "00000000000000000", 60 => "10000111100001111", 
    61 to 67=> "00000000000000000", 68 => "10000111100001111", 
    69 to 74=> "00000000000000000", 75 => "10000111100001111", 
    76 to 84=> "00000000000000000", 85 => "10000111100001111", 
    86 to 89=> "00000000000000000", 90 => "10000111100001111", 
    91 to 101=> "00000000000000000", 102 => "10000111100001111", 
    103 to 104=> "00000000000000000", 105 => "10000111100001111", 
    106 to 118=> "00000000000000000", 119 to 120=> "10000111100001111", 
    121 to 134=> "00000000000000000", 135 to 136=> "10000111100001111", 
    137 to 149=> "00000000000000000", 150 => "10000111100001111", 
    151 to 152=> "00000000000000000", 153 => "10000111100001111", 
    154 to 164=> "00000000000000000", 165 => "10000111100001111", 
    166 to 169=> "00000000000000000", 170 => "10000111100001111", 
    171 to 179=> "00000000000000000", 180 => "10000111100001111", 
    181 to 186=> "00000000000000000", 187 => "10000111100001111", 
    188 to 194=> "00000000000000000", 195 => "10000111100001111", 
    196 to 203=> "00000000000000000", 204 => "10000111100001111", 
    205 to 209=> "00000000000000000", 210 => "10000111100001111", 
    211 to 220=> "00000000000000000", 221 => "10000111100001111", 
    222 to 224=> "00000000000000000", 225 => "10000111100001111", 
    226 to 237=> "00000000000000000", 238 => "10000111100001111", 
    239 to 255=> "00000000000000000" );
signal mem1 : mem_array := (
    0 to 16=> "00000000000000000", 17 => "10000111100001111", 
    18 to 29=> "00000000000000000", 30 => "10000111100001111", 
    31 to 33=> "00000000000000000", 34 => "10000111100001111", 
    35 to 44=> "00000000000000000", 45 => "10000111100001111", 
    46 to 50=> "00000000000000000", 51 => "10000111100001111", 
    52 to 59=> "00000000000000000", 60 => "10000111100001111", 
    61 to 67=> "00000000000000000", 68 => "10000111100001111", 
    69 to 74=> "00000000000000000", 75 => "10000111100001111", 
    76 to 84=> "00000000000000000", 85 => "10000111100001111", 
    86 to 89=> "00000000000000000", 90 => "10000111100001111", 
    91 to 101=> "00000000000000000", 102 => "10000111100001111", 
    103 to 104=> "00000000000000000", 105 => "10000111100001111", 
    106 to 118=> "00000000000000000", 119 to 120=> "10000111100001111", 
    121 to 134=> "00000000000000000", 135 to 136=> "10000111100001111", 
    137 to 149=> "00000000000000000", 150 => "10000111100001111", 
    151 to 152=> "00000000000000000", 153 => "10000111100001111", 
    154 to 164=> "00000000000000000", 165 => "10000111100001111", 
    166 to 169=> "00000000000000000", 170 => "10000111100001111", 
    171 to 179=> "00000000000000000", 180 => "10000111100001111", 
    181 to 186=> "00000000000000000", 187 => "10000111100001111", 
    188 to 194=> "00000000000000000", 195 => "10000111100001111", 
    196 to 203=> "00000000000000000", 204 => "10000111100001111", 
    205 to 209=> "00000000000000000", 210 => "10000111100001111", 
    211 to 220=> "00000000000000000", 221 => "10000111100001111", 
    222 to 224=> "00000000000000000", 225 => "10000111100001111", 
    226 to 237=> "00000000000000000", 238 => "10000111100001111", 
    239 to 255=> "00000000000000000" );
signal mem2 : mem_array := (
    0 to 16=> "00000000000000000", 17 => "10000111100001111", 
    18 to 29=> "00000000000000000", 30 => "10000111100001111", 
    31 to 33=> "00000000000000000", 34 => "10000111100001111", 
    35 to 44=> "00000000000000000", 45 => "10000111100001111", 
    46 to 50=> "00000000000000000", 51 => "10000111100001111", 
    52 to 59=> "00000000000000000", 60 => "10000111100001111", 
    61 to 67=> "00000000000000000", 68 => "10000111100001111", 
    69 to 74=> "00000000000000000", 75 => "10000111100001111", 
    76 to 84=> "00000000000000000", 85 => "10000111100001111", 
    86 to 89=> "00000000000000000", 90 => "10000111100001111", 
    91 to 101=> "00000000000000000", 102 => "10000111100001111", 
    103 to 104=> "00000000000000000", 105 => "10000111100001111", 
    106 to 118=> "00000000000000000", 119 to 120=> "10000111100001111", 
    121 to 134=> "00000000000000000", 135 to 136=> "10000111100001111", 
    137 to 149=> "00000000000000000", 150 => "10000111100001111", 
    151 to 152=> "00000000000000000", 153 => "10000111100001111", 
    154 to 164=> "00000000000000000", 165 => "10000111100001111", 
    166 to 169=> "00000000000000000", 170 => "10000111100001111", 
    171 to 179=> "00000000000000000", 180 => "10000111100001111", 
    181 to 186=> "00000000000000000", 187 => "10000111100001111", 
    188 to 194=> "00000000000000000", 195 => "10000111100001111", 
    196 to 203=> "00000000000000000", 204 => "10000111100001111", 
    205 to 209=> "00000000000000000", 210 => "10000111100001111", 
    211 to 220=> "00000000000000000", 221 => "10000111100001111", 
    222 to 224=> "00000000000000000", 225 => "10000111100001111", 
    226 to 237=> "00000000000000000", 238 => "10000111100001111", 
    239 to 255=> "00000000000000000" );
signal mem3 : mem_array := (
    0 to 16=> "00000000000000000", 17 => "10000111100001111", 
    18 to 29=> "00000000000000000", 30 => "10000111100001111", 
    31 to 33=> "00000000000000000", 34 => "10000111100001111", 
    35 to 44=> "00000000000000000", 45 => "10000111100001111", 
    46 to 50=> "00000000000000000", 51 => "10000111100001111", 
    52 to 59=> "00000000000000000", 60 => "10000111100001111", 
    61 to 67=> "00000000000000000", 68 => "10000111100001111", 
    69 to 74=> "00000000000000000", 75 => "10000111100001111", 
    76 to 84=> "00000000000000000", 85 => "10000111100001111", 
    86 to 89=> "00000000000000000", 90 => "10000111100001111", 
    91 to 101=> "00000000000000000", 102 => "10000111100001111", 
    103 to 104=> "00000000000000000", 105 => "10000111100001111", 
    106 to 118=> "00000000000000000", 119 to 120=> "10000111100001111", 
    121 to 134=> "00000000000000000", 135 to 136=> "10000111100001111", 
    137 to 149=> "00000000000000000", 150 => "10000111100001111", 
    151 to 152=> "00000000000000000", 153 => "10000111100001111", 
    154 to 164=> "00000000000000000", 165 => "10000111100001111", 
    166 to 169=> "00000000000000000", 170 => "10000111100001111", 
    171 to 179=> "00000000000000000", 180 => "10000111100001111", 
    181 to 186=> "00000000000000000", 187 => "10000111100001111", 
    188 to 194=> "00000000000000000", 195 => "10000111100001111", 
    196 to 203=> "00000000000000000", 204 => "10000111100001111", 
    205 to 209=> "00000000000000000", 210 => "10000111100001111", 
    211 to 220=> "00000000000000000", 221 => "10000111100001111", 
    222 to 224=> "00000000000000000", 225 => "10000111100001111", 
    226 to 237=> "00000000000000000", 238 => "10000111100001111", 
    239 to 255=> "00000000000000000" );
signal mem4 : mem_array := (
    0 to 16=> "00000000000000000", 17 => "10000111100001111", 
    18 to 29=> "00000000000000000", 30 => "10000111100001111", 
    31 to 33=> "00000000000000000", 34 => "10000111100001111", 
    35 to 44=> "00000000000000000", 45 => "10000111100001111", 
    46 to 50=> "00000000000000000", 51 => "10000111100001111", 
    52 to 59=> "00000000000000000", 60 => "10000111100001111", 
    61 to 67=> "00000000000000000", 68 => "10000111100001111", 
    69 to 74=> "00000000000000000", 75 => "10000111100001111", 
    76 to 84=> "00000000000000000", 85 => "10000111100001111", 
    86 to 89=> "00000000000000000", 90 => "10000111100001111", 
    91 to 101=> "00000000000000000", 102 => "10000111100001111", 
    103 to 104=> "00000000000000000", 105 => "10000111100001111", 
    106 to 118=> "00000000000000000", 119 to 120=> "10000111100001111", 
    121 to 134=> "00000000000000000", 135 to 136=> "10000111100001111", 
    137 to 149=> "00000000000000000", 150 => "10000111100001111", 
    151 to 152=> "00000000000000000", 153 => "10000111100001111", 
    154 to 164=> "00000000000000000", 165 => "10000111100001111", 
    166 to 169=> "00000000000000000", 170 => "10000111100001111", 
    171 to 179=> "00000000000000000", 180 => "10000111100001111", 
    181 to 186=> "00000000000000000", 187 => "10000111100001111", 
    188 to 194=> "00000000000000000", 195 => "10000111100001111", 
    196 to 203=> "00000000000000000", 204 => "10000111100001111", 
    205 to 209=> "00000000000000000", 210 => "10000111100001111", 
    211 to 220=> "00000000000000000", 221 => "10000111100001111", 
    222 to 224=> "00000000000000000", 225 => "10000111100001111", 
    226 to 237=> "00000000000000000", 238 => "10000111100001111", 
    239 to 255=> "00000000000000000" );
signal mem5 : mem_array := (
    0 to 16=> "00000000000000000", 17 => "10000111100001111", 
    18 to 29=> "00000000000000000", 30 => "10000111100001111", 
    31 to 33=> "00000000000000000", 34 => "10000111100001111", 
    35 to 44=> "00000000000000000", 45 => "10000111100001111", 
    46 to 50=> "00000000000000000", 51 => "10000111100001111", 
    52 to 59=> "00000000000000000", 60 => "10000111100001111", 
    61 to 67=> "00000000000000000", 68 => "10000111100001111", 
    69 to 74=> "00000000000000000", 75 => "10000111100001111", 
    76 to 84=> "00000000000000000", 85 => "10000111100001111", 
    86 to 89=> "00000000000000000", 90 => "10000111100001111", 
    91 to 101=> "00000000000000000", 102 => "10000111100001111", 
    103 to 104=> "00000000000000000", 105 => "10000111100001111", 
    106 to 118=> "00000000000000000", 119 to 120=> "10000111100001111", 
    121 to 134=> "00000000000000000", 135 to 136=> "10000111100001111", 
    137 to 149=> "00000000000000000", 150 => "10000111100001111", 
    151 to 152=> "00000000000000000", 153 => "10000111100001111", 
    154 to 164=> "00000000000000000", 165 => "10000111100001111", 
    166 to 169=> "00000000000000000", 170 => "10000111100001111", 
    171 to 179=> "00000000000000000", 180 => "10000111100001111", 
    181 to 186=> "00000000000000000", 187 => "10000111100001111", 
    188 to 194=> "00000000000000000", 195 => "10000111100001111", 
    196 to 203=> "00000000000000000", 204 => "10000111100001111", 
    205 to 209=> "00000000000000000", 210 => "10000111100001111", 
    211 to 220=> "00000000000000000", 221 => "10000111100001111", 
    222 to 224=> "00000000000000000", 225 => "10000111100001111", 
    226 to 237=> "00000000000000000", 238 => "10000111100001111", 
    239 to 255=> "00000000000000000" );
signal mem6 : mem_array := (
    0 to 16=> "00000000000000000", 17 => "10000111100001111", 
    18 to 29=> "00000000000000000", 30 => "10000111100001111", 
    31 to 33=> "00000000000000000", 34 => "10000111100001111", 
    35 to 44=> "00000000000000000", 45 => "10000111100001111", 
    46 to 50=> "00000000000000000", 51 => "10000111100001111", 
    52 to 59=> "00000000000000000", 60 => "10000111100001111", 
    61 to 67=> "00000000000000000", 68 => "10000111100001111", 
    69 to 74=> "00000000000000000", 75 => "10000111100001111", 
    76 to 84=> "00000000000000000", 85 => "10000111100001111", 
    86 to 89=> "00000000000000000", 90 => "10000111100001111", 
    91 to 101=> "00000000000000000", 102 => "10000111100001111", 
    103 to 104=> "00000000000000000", 105 => "10000111100001111", 
    106 to 118=> "00000000000000000", 119 to 120=> "10000111100001111", 
    121 to 134=> "00000000000000000", 135 to 136=> "10000111100001111", 
    137 to 149=> "00000000000000000", 150 => "10000111100001111", 
    151 to 152=> "00000000000000000", 153 => "10000111100001111", 
    154 to 164=> "00000000000000000", 165 => "10000111100001111", 
    166 to 169=> "00000000000000000", 170 => "10000111100001111", 
    171 to 179=> "00000000000000000", 180 => "10000111100001111", 
    181 to 186=> "00000000000000000", 187 => "10000111100001111", 
    188 to 194=> "00000000000000000", 195 => "10000111100001111", 
    196 to 203=> "00000000000000000", 204 => "10000111100001111", 
    205 to 209=> "00000000000000000", 210 => "10000111100001111", 
    211 to 220=> "00000000000000000", 221 => "10000111100001111", 
    222 to 224=> "00000000000000000", 225 => "10000111100001111", 
    226 to 237=> "00000000000000000", 238 => "10000111100001111", 
    239 to 255=> "00000000000000000" );
signal mem7 : mem_array := (
    0 to 16=> "00000000000000000", 17 => "10000111100001111", 
    18 to 29=> "00000000000000000", 30 => "10000111100001111", 
    31 to 33=> "00000000000000000", 34 => "10000111100001111", 
    35 to 44=> "00000000000000000", 45 => "10000111100001111", 
    46 to 50=> "00000000000000000", 51 => "10000111100001111", 
    52 to 59=> "00000000000000000", 60 => "10000111100001111", 
    61 to 67=> "00000000000000000", 68 => "10000111100001111", 
    69 to 74=> "00000000000000000", 75 => "10000111100001111", 
    76 to 84=> "00000000000000000", 85 => "10000111100001111", 
    86 to 89=> "00000000000000000", 90 => "10000111100001111", 
    91 to 101=> "00000000000000000", 102 => "10000111100001111", 
    103 to 104=> "00000000000000000", 105 => "10000111100001111", 
    106 to 118=> "00000000000000000", 119 to 120=> "10000111100001111", 
    121 to 134=> "00000000000000000", 135 to 136=> "10000111100001111", 
    137 to 149=> "00000000000000000", 150 => "10000111100001111", 
    151 to 152=> "00000000000000000", 153 => "10000111100001111", 
    154 to 164=> "00000000000000000", 165 => "10000111100001111", 
    166 to 169=> "00000000000000000", 170 => "10000111100001111", 
    171 to 179=> "00000000000000000", 180 => "10000111100001111", 
    181 to 186=> "00000000000000000", 187 => "10000111100001111", 
    188 to 194=> "00000000000000000", 195 => "10000111100001111", 
    196 to 203=> "00000000000000000", 204 => "10000111100001111", 
    205 to 209=> "00000000000000000", 210 => "10000111100001111", 
    211 to 220=> "00000000000000000", 221 => "10000111100001111", 
    222 to 224=> "00000000000000000", 225 => "10000111100001111", 
    226 to 237=> "00000000000000000", 238 => "10000111100001111", 
    239 to 255=> "00000000000000000" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

memory_access_guard_1: process (address1) 
begin
      address1_tmp <= address1;
--synthesis translate_off
      if (CONV_INTEGER(address1) > AddressRange-1) then
           address1_tmp <= (others => '0');
      else 
           address1_tmp <= address1;
      end if;
--synthesis translate_on
end process;

memory_access_guard_2: process (address2) 
begin
      address2_tmp <= address2;
--synthesis translate_off
      if (CONV_INTEGER(address2) > AddressRange-1) then
           address2_tmp <= (others => '0');
      else 
           address2_tmp <= address2;
      end if;
--synthesis translate_on
end process;

memory_access_guard_3: process (address3) 
begin
      address3_tmp <= address3;
--synthesis translate_off
      if (CONV_INTEGER(address3) > AddressRange-1) then
           address3_tmp <= (others => '0');
      else 
           address3_tmp <= address3;
      end if;
--synthesis translate_on
end process;

memory_access_guard_4: process (address4) 
begin
      address4_tmp <= address4;
--synthesis translate_off
      if (CONV_INTEGER(address4) > AddressRange-1) then
           address4_tmp <= (others => '0');
      else 
           address4_tmp <= address4;
      end if;
--synthesis translate_on
end process;

memory_access_guard_5: process (address5) 
begin
      address5_tmp <= address5;
--synthesis translate_off
      if (CONV_INTEGER(address5) > AddressRange-1) then
           address5_tmp <= (others => '0');
      else 
           address5_tmp <= address5;
      end if;
--synthesis translate_on
end process;

memory_access_guard_6: process (address6) 
begin
      address6_tmp <= address6;
--synthesis translate_off
      if (CONV_INTEGER(address6) > AddressRange-1) then
           address6_tmp <= (others => '0');
      else 
           address6_tmp <= address6;
      end if;
--synthesis translate_on
end process;

memory_access_guard_7: process (address7) 
begin
      address7_tmp <= address7;
--synthesis translate_off
      if (CONV_INTEGER(address7) > AddressRange-1) then
           address7_tmp <= (others => '0');
      else 
           address7_tmp <= address7;
      end if;
--synthesis translate_on
end process;

memory_access_guard_8: process (address8) 
begin
      address8_tmp <= address8;
--synthesis translate_off
      if (CONV_INTEGER(address8) > AddressRange-1) then
           address8_tmp <= (others => '0');
      else 
           address8_tmp <= address8;
      end if;
--synthesis translate_on
end process;

memory_access_guard_9: process (address9) 
begin
      address9_tmp <= address9;
--synthesis translate_off
      if (CONV_INTEGER(address9) > AddressRange-1) then
           address9_tmp <= (others => '0');
      else 
           address9_tmp <= address9;
      end if;
--synthesis translate_on
end process;

memory_access_guard_10: process (address10) 
begin
      address10_tmp <= address10;
--synthesis translate_off
      if (CONV_INTEGER(address10) > AddressRange-1) then
           address10_tmp <= (others => '0');
      else 
           address10_tmp <= address10;
      end if;
--synthesis translate_on
end process;

memory_access_guard_11: process (address11) 
begin
      address11_tmp <= address11;
--synthesis translate_off
      if (CONV_INTEGER(address11) > AddressRange-1) then
           address11_tmp <= (others => '0');
      else 
           address11_tmp <= address11;
      end if;
--synthesis translate_on
end process;

memory_access_guard_12: process (address12) 
begin
      address12_tmp <= address12;
--synthesis translate_off
      if (CONV_INTEGER(address12) > AddressRange-1) then
           address12_tmp <= (others => '0');
      else 
           address12_tmp <= address12;
      end if;
--synthesis translate_on
end process;

memory_access_guard_13: process (address13) 
begin
      address13_tmp <= address13;
--synthesis translate_off
      if (CONV_INTEGER(address13) > AddressRange-1) then
           address13_tmp <= (others => '0');
      else 
           address13_tmp <= address13;
      end if;
--synthesis translate_on
end process;

memory_access_guard_14: process (address14) 
begin
      address14_tmp <= address14;
--synthesis translate_off
      if (CONV_INTEGER(address14) > AddressRange-1) then
           address14_tmp <= (others => '0');
      else 
           address14_tmp <= address14;
      end if;
--synthesis translate_on
end process;

memory_access_guard_15: process (address15) 
begin
      address15_tmp <= address15;
--synthesis translate_off
      if (CONV_INTEGER(address15) > AddressRange-1) then
           address15_tmp <= (others => '0');
      else 
           address15_tmp <= address15;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem0(CONV_INTEGER(address1_tmp)); 
        end if;
        if (ce2 = '1') then 
            q2 <= mem1(CONV_INTEGER(address2_tmp)); 
        end if;
        if (ce3 = '1') then 
            q3 <= mem1(CONV_INTEGER(address3_tmp)); 
        end if;
        if (ce4 = '1') then 
            q4 <= mem2(CONV_INTEGER(address4_tmp)); 
        end if;
        if (ce5 = '1') then 
            q5 <= mem2(CONV_INTEGER(address5_tmp)); 
        end if;
        if (ce6 = '1') then 
            q6 <= mem3(CONV_INTEGER(address6_tmp)); 
        end if;
        if (ce7 = '1') then 
            q7 <= mem3(CONV_INTEGER(address7_tmp)); 
        end if;
        if (ce8 = '1') then 
            q8 <= mem4(CONV_INTEGER(address8_tmp)); 
        end if;
        if (ce9 = '1') then 
            q9 <= mem4(CONV_INTEGER(address9_tmp)); 
        end if;
        if (ce10 = '1') then 
            q10 <= mem5(CONV_INTEGER(address10_tmp)); 
        end if;
        if (ce11 = '1') then 
            q11 <= mem5(CONV_INTEGER(address11_tmp)); 
        end if;
        if (ce12 = '1') then 
            q12 <= mem6(CONV_INTEGER(address12_tmp)); 
        end if;
        if (ce13 = '1') then 
            q13 <= mem6(CONV_INTEGER(address13_tmp)); 
        end if;
        if (ce14 = '1') then 
            q14 <= mem7(CONV_INTEGER(address14_tmp)); 
        end if;
        if (ce15 = '1') then 
            q15 <= mem7(CONV_INTEGER(address15_tmp)); 
        end if;
    end if;
end process;

end rtl;

