--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:26:03 10/31/2022
-- Design Name:   
-- Module Name:   C:/Documents and Settings/lester/Escritorio/CLases/Contadortiempo/test.vhd
-- Project Name:  Contadortiempo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Topmodule
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
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Topmodule
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         en : IN  std_logic;
         rco : OUT  std_logic;
         data_u : OUT  std_logic_vector(3 downto 0);
         data_d : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal en : std_logic := '0';

 	--Outputs
   signal rco : std_logic;
   signal data_u : std_logic_vector(3 downto 0);
   signal data_d : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Topmodule PORT MAP (
          clk => clk,
          rst => rst,
          en => en,
          rco => rco,
          data_u => data_u,
          data_d => data_d
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
		rst <= '1';
		
		wait for 100 ns;	
		rst <= '0';

      -- insert stimulus here 
		en <= '1';


      wait;
   end process;

END;
