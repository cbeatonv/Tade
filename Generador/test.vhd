--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:48:58 11/11/2023
-- Design Name:   
-- Module Name:   C:/Documents and Settings/lester/Escritorio/TADE/CLases/Generador/test.vhd
-- Project Name:  Generador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Generador_top
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
 
    COMPONENT Generador_top
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         sw_freq : IN  std_logic_vector(1 downto 0);
         sw_sign : IN  std_logic_vector(1 downto 0);
         SPI_MOSI : OUT  std_logic;
         DAC_CS : OUT  std_logic;
         SPI_SCK : OUT  std_logic;
         DAC_CLR : OUT  std_logic;
         led : OUT  std_logic;
         led2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal sw_freq : std_logic_vector(1 downto 0) := (others => '0');
   signal sw_sign : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal SPI_MOSI : std_logic;
   signal DAC_CS : std_logic;
   signal SPI_SCK : std_logic;
   signal DAC_CLR : std_logic;
   signal led : std_logic;
   signal led2 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Generador_top PORT MAP (
          clk => clk,
          rst => rst,
          sw_freq => sw_freq,
          sw_sign => sw_sign,
          SPI_MOSI => SPI_MOSI,
          DAC_CS => DAC_CS,
          SPI_SCK => SPI_SCK,
          DAC_CLR => DAC_CLR,
          led => led,
          led2 => led2
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
		rst <= '1';
      sw_freq <= "00";
		sw_sign <= "00";
		wait for 50 ns;
		rst <= '0';
		sw_sign <= "00";
		wait for 100 ms;
		sw_sign <= "01";
		wait for 100 ms;
		sw_sign <= "10";
		wait for 100 ms;

      wait;
   end process;

END;
