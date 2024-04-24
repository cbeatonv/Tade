--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:34:57 10/26/2022
-- Design Name:   
-- Module Name:   C:/Documents and Settings/lester/Escritorio/Signalcircuit/Divisortest.vhd
-- Project Name:  Signalcircuit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Divisor_reloj
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
 
ENTITY Divisortest IS
END Divisortest;
 
ARCHITECTURE behavior OF Divisortest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Divisor_reloj
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         clk_salida : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal clk_salida : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Divisor_reloj PORT MAP (
          clk => clk,
          rst => rst,
          clk_salida => clk_salida
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

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
