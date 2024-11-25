-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Dec  7 22:35:57 2022
-- Host        : DESKTOP-8O006OG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_DVI_Transmitter_0_0/ZYNQ_CORE_DVI_Transmitter_0_0_stub.vhdl
-- Design      : ZYNQ_CORE_DVI_Transmitter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ZYNQ_CORE_DVI_Transmitter_0_0 is
  Port ( 
    pclk : in STD_LOGIC;
    pclk_x5 : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    video_din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    video_hsync : in STD_LOGIC;
    video_vsync : in STD_LOGIC;
    video_de : in STD_LOGIC;
    tmds_clk_p : out STD_LOGIC;
    tmds_clk_n : out STD_LOGIC;
    tmds_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tmds_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tmds_oen : out STD_LOGIC
  );

end ZYNQ_CORE_DVI_Transmitter_0_0;

architecture stub of ZYNQ_CORE_DVI_Transmitter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pclk,pclk_x5,reset_n,video_din[23:0],video_hsync,video_vsync,video_de,tmds_clk_p,tmds_clk_n,tmds_data_p[2:0],tmds_data_n[2:0],tmds_oen";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dvi_transmitter_top,Vivado 2018.3";
begin
end;
