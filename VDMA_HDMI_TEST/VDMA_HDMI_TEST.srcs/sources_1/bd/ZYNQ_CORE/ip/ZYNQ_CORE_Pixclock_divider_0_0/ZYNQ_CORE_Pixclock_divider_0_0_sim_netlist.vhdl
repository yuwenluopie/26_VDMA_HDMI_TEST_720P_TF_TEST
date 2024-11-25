-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Dec  9 10:22:31 2022
-- Host        : LAPTOP-IBQPOVJO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/Tiny_ZYNQ/23_VDMA_HDMI_TEST/VDMA_HDMI_TEST/VDMA_HDMI_TEST.srcs/sources_1/bd/ZYNQ_CORE/ip/ZYNQ_CORE_Pixclock_divider_0_0/ZYNQ_CORE_Pixclock_divider_0_0_sim_netlist.vhdl
-- Design      : ZYNQ_CORE_Pixclock_divider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ZYNQ_CORE_Pixclock_divider_0_0_Pixclock_divider is
  port (
    PIX_CLK_1X : out STD_LOGIC;
    PIX_CLK_5X : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ZYNQ_CORE_Pixclock_divider_0_0_Pixclock_divider : entity is "Pixclock_divider";
end ZYNQ_CORE_Pixclock_divider_0_0_Pixclock_divider;

architecture STRUCTURE of ZYNQ_CORE_Pixclock_divider_0_0_Pixclock_divider is
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair0";
begin
PIX_CLK_1X_reg: unisim.vcomponents.FDRE
     port map (
      C => PIX_CLK_5X,
      CE => '1',
      D => p_0_in,
      Q => PIX_CLK_1X,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => p_0_in,
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => p_0_in,
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => p_0_in,
      O => \count[2]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PIX_CLK_5X,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\,
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PIX_CLK_5X,
      CE => '1',
      D => \count[1]_i_1_n_0\,
      Q => \count_reg_n_0_[1]\,
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PIX_CLK_5X,
      CE => '1',
      D => \count[2]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ZYNQ_CORE_Pixclock_divider_0_0 is
  port (
    PIX_CLK_1X : out STD_LOGIC;
    PIX_CLK_5X : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ZYNQ_CORE_Pixclock_divider_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ZYNQ_CORE_Pixclock_divider_0_0 : entity is "ZYNQ_CORE_Pixclock_divider_0_0,Pixclock_divider,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ZYNQ_CORE_Pixclock_divider_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ZYNQ_CORE_Pixclock_divider_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ZYNQ_CORE_Pixclock_divider_0_0 : entity is "Pixclock_divider,Vivado 2018.3";
end ZYNQ_CORE_Pixclock_divider_0_0;

architecture STRUCTURE of ZYNQ_CORE_Pixclock_divider_0_0 is
begin
inst: entity work.ZYNQ_CORE_Pixclock_divider_0_0_Pixclock_divider
     port map (
      PIX_CLK_1X => PIX_CLK_1X,
      PIX_CLK_5X => PIX_CLK_5X
    );
end STRUCTURE;
