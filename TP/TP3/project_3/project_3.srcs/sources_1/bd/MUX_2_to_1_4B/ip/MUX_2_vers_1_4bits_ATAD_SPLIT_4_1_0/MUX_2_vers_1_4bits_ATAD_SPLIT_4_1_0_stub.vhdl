-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Oct 22 11:17:33 2019
-- Host        : DESKTOP-8B1C8TT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top MUX_2_vers_1_4bits_ATAD_SPLIT_4_1_0 -prefix
--               MUX_2_vers_1_4bits_ATAD_SPLIT_4_1_0_ MUX_2_vers_1_4bits_ATAD_SPLIT_4_0_0_stub.vhdl
-- Design      : MUX_2_vers_1_4bits_ATAD_SPLIT_4_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2_vers_1_4bits_ATAD_SPLIT_4_1_0 is
  Port ( 
    VIN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    VOUT0 : out STD_LOGIC;
    VOUT1 : out STD_LOGIC;
    VOUT2 : out STD_LOGIC;
    VOUT3 : out STD_LOGIC
  );

end MUX_2_vers_1_4bits_ATAD_SPLIT_4_1_0;

architecture stub of MUX_2_vers_1_4bits_ATAD_SPLIT_4_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "VIN[3:0],VOUT0,VOUT1,VOUT2,VOUT3";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ATAD_SPLIT_4,Vivado 2018.3";
begin
end;
