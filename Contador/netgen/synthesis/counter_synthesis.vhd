--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: counter_synthesis.vhd
-- /___/   /\     Timestamp: Wed Oct 26 20:31:18 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm counter -w -dir netgen/synthesis -ofmt vhdl -sim counter.ngc counter_synthesis.vhd 
-- Device	: xc3s1600e-4-fg320
-- Input file	: counter.ngc
-- Output file	: C:\Documents and Settings\lester\Escritorio\Contador\netgen\synthesis\counter_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: counter
-- Xilinx	: C:\Xilinx\12.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity counter is
  port (
    clk : in STD_LOGIC := 'X'; 
    en : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    rco : out STD_LOGIC 
  );
end counter;

architecture Structure of counter is
  signal N11 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal clk_BUFGP_12 : STD_LOGIC; 
  signal contador_cmp_ge0000 : STD_LOGIC; 
  signal contador_or0000 : STD_LOGIC; 
  signal en_IBUF_22 : STD_LOGIC; 
  signal rco_OBUF_24 : STD_LOGIC; 
  signal rco_not0001 : STD_LOGIC; 
  signal rst_IBUF_27 : STD_LOGIC; 
  signal Mcount_contador_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal Result : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal contador : STD_LOGIC_VECTOR ( 5 downto 0 ); 
begin
  rco_1 : FDE
    port map (
      C => clk_BUFGP_12,
      CE => rco_not0001,
      D => contador_cmp_ge0000,
      Q => rco_OBUF_24
    );
  contador_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_12,
      CE => en_IBUF_22,
      D => Result(0),
      R => contador_or0000,
      Q => contador(0)
    );
  contador_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_12,
      CE => en_IBUF_22,
      D => Result(1),
      R => contador_or0000,
      Q => contador(1)
    );
  contador_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_12,
      CE => en_IBUF_22,
      D => Result(2),
      R => contador_or0000,
      Q => contador(2)
    );
  contador_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_12,
      CE => en_IBUF_22,
      D => Result(3),
      R => contador_or0000,
      Q => contador(3)
    );
  contador_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_12,
      CE => en_IBUF_22,
      D => Result(4),
      R => contador_or0000,
      Q => contador(4)
    );
  contador_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_12,
      CE => en_IBUF_22,
      D => Result(5),
      R => contador_or0000,
      Q => contador(5)
    );
  rco_not00011 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => rst_IBUF_27,
      I1 => en_IBUF_22,
      O => rco_not0001
    );
  Mcount_contador_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => contador(1),
      I1 => contador(0),
      O => Result(1)
    );
  Mcount_contador_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => contador(2),
      I1 => contador(1),
      I2 => contador(0),
      O => Result(2)
    );
  Mcount_contador_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => contador(3),
      I1 => contador(1),
      I2 => contador(0),
      I3 => contador(2),
      O => Result(3)
    );
  Mcount_contador_xor_4_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => contador(4),
      I1 => N5,
      O => Result(4)
    );
  Mcount_contador_xor_5_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => contador(5),
      I1 => contador(4),
      I2 => Mcount_contador_cy(3),
      O => Result(5)
    );
  contador_cmp_ge00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => contador(4),
      I1 => contador(3),
      I2 => contador(5),
      I3 => N11,
      O => contador_cmp_ge0000
    );
  en_IBUF : IBUF
    port map (
      I => en,
      O => en_IBUF_22
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_27
    );
  rco_OBUF : OBUF
    port map (
      I => rco_OBUF_24,
      O => rco
    );
  contador_cmp_ge00001_SW1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => en_IBUF_22,
      I1 => contador(3),
      I2 => contador(4),
      O => N3
    );
  contador_or00001 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => rst_IBUF_27,
      I1 => contador(5),
      I2 => N3,
      I3 => N6,
      O => contador_or0000
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_12
    );
  Mcount_contador_xor_0_11_INV_0 : INV
    port map (
      I => contador(0),
      O => Result(0)
    );
  Mcount_contador_cy_3_11 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => contador(3),
      I1 => contador(2),
      I2 => contador(1),
      I3 => contador(0),
      LO => N5,
      O => Mcount_contador_cy(3)
    );
  contador_cmp_ge00001_SW0 : LUT3_D
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => contador(2),
      I1 => contador(1),
      I2 => contador(0),
      LO => N6,
      O => N11
    );

end Structure;

