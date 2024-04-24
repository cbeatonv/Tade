--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: Flip_Flop_synthesis.vhd
-- /___/   /\     Timestamp: Wed Oct 12 04:01:42 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Flip_Flop -w -dir netgen/synthesis -ofmt vhdl -sim Flip_Flop.ngc Flip_Flop_synthesis.vhd 
-- Device	: xc3s1600e-4-fg320
-- Input file	: Flip_Flop.ngc
-- Output file	: C:\Documents and Settings\FlipFlop\netgen\synthesis\Flip_Flop_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Flip_Flop
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

entity Flip_Flop is
  port (
    clk : in STD_LOGIC := 'X'; 
    stop : in STD_LOGIC := 'X'; 
    init_pause : in STD_LOGIC := 'X'; 
    output : out STD_LOGIC 
  );
end Flip_Flop;

architecture Structure of Flip_Flop is
  signal N0 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal clk_BUFGP_3 : STD_LOGIC; 
  signal init_pause_IBUF_5 : STD_LOGIC; 
  signal stop_IBUF_11 : STD_LOGIC; 
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  next_state_1_1_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => state(2),
      I1 => state(0),
      O => N3
    );
  stop_IBUF : IBUF
    port map (
      I => stop,
      O => stop_IBUF_11
    );
  init_pause_IBUF : IBUF
    port map (
      I => init_pause,
      O => init_pause_IBUF_5
    );
  output_OBUF : OBUF
    port map (
      I => state(1),
      O => output
    );
  state_0 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_3,
      CE => init_pause_IBUF_5,
      D => N0,
      S => stop_IBUF_11,
      Q => state(0)
    );
  state_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_3,
      CE => init_pause_IBUF_5,
      D => N3,
      R => stop_IBUF_11,
      Q => state(1)
    );
  state_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_3,
      CE => init_pause_IBUF_5,
      D => state(1),
      R => stop_IBUF_11,
      Q => state(2)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_3
    );

end Structure;

