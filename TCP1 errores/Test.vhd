--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:42:26 11/02/2022
-- Design Name:   
-- Module Name:   C:/Documents and Settings/lester/Escritorio/TCP1CamilaBeatonVerdeciaA32/Test.vhd
-- Project Name:  TCP1CamilaBeatonVerdeciaA32
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TopModule
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test IS
END Test;
 
ARCHITECTURE behavior OF Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TopModule
    PORT(
         clk : IN  std_logic;
         EnBlink : IN  std_logic;
         rst : IN  std_logic;
         Din : IN  std_logic_vector(3 downto 0);
         Dout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal EnBlink : std_logic := '0';
   signal rst : std_logic := '0';
   signal Din : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Dout : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TopModule PORT MAP (
          clk => clk,
          EnBlink => EnBlink,
          rst => rst,
          Din => Din,
          Dout => Dout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		rst <= '0';
		EnBlink <= '1';
		wait for 10 ns;
		EnBlink <= '0';

      wait for clk_period*10;

      -- insert stimulus here 
		Din <= "0000";
		wait for 100 ns;
		
		Din <= "0001";
		wait for 400 ns;	
		
		EnBlink <= '1';
		wait for 10 ns;
		EnBlink <= '0';
		
		Din <= "0010";
		wait for 100 ns;
		Din <= "0011";
		
		wait for 400 ns;
		EnBlink <= '1';
		wait for 10 ns;
		EnBlink <= '0';
		
		
		wait for 100 ns;
		Din <= "0100";

      wait;
   end process;

END;
