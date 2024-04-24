--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: top_synthesis.vhd
-- /___/   /\     Timestamp: Thu Oct 27 04:36:05 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm top -w -dir netgen/synthesis -ofmt vhdl -sim top.ngc top_synthesis.vhd 
-- Device	: xc3s1600e-4-fg320
-- Input file	: top.ngc
-- Output file	: C:\Documents and Settings\lester\Escritorio\Contador\netgen\synthesis\top_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: top
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

entity top is
  port (
    clk : in STD_LOGIC := 'X'; 
    en : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    data : out STD_LOGIC_VECTOR ( 5 downto 0 ) 
  );
end top;

architecture Structure of top is
  signal data_4_OBUF_6 : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => data_4_OBUF_6
    );
  data_5_OBUF : OBUF
    port map (
      I => data_4_OBUF_6,
      O => data(5)
    );
  data_4_OBUF : OBUF
    port map (
      I => data_4_OBUF_6,
      O => data(4)
    );
  data_3_OBUF : OBUF
    port map (
      I => data_4_OBUF_6,
      O => data(3)
    );
  data_2_OBUF : OBUF
    port map (
      I => data_4_OBUF_6,
      O => data(2)
    );
  data_1_OBUF : OBUF
    port map (
      I => data_4_OBUF_6,
      O => data(1)
    );
  data_0_OBUF : OBUF
    port map (
      I => data_4_OBUF_6,
      O => data(0)
    );

end Structure;

