LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY serietest IS
END serietest;
 
ARCHITECTURE behavior OF serietest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Serie1
    PORT(
         clk : IN  std_logic;
         entrada : IN  std_logic;
         salida : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal entrada : std_logic := '0';

 	--Outputs
   signal salida : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Serie1 PORT MAP (
          clk => clk,
          entrada => entrada,
          salida => salida
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	entrada_process :process
   begin
		entrada <= '0';
		wait for clk_period*4;
		entrada <= '1';
		wait for clk_period*4;
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
