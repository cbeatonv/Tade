		----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:49:13 11/11/2023 
-- Design Name: 
-- Module Name:    Generador_top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Generador_top is
  port (
	clk : in std_logic;
	rst : in std_logic;
	sw_freq : in std_logic_vector(1 downto 0);
	sw_sign : in std_logic_vector(1 downto 0);
	SPI_MOSI : out std_logic;
	DAC_CS : out std_logic;
	SPI_SCK : out std_logic;
	DAC_CLR : out std_logic;
	led : out std_logic;
	led2 : out std_logic
	
  );
end Generador_top;

architecture Behavioral of Generador_top is


	COMPONENT gen
	Port ( rst : in std_logic;
			sw_sign : in std_logic_vector(1 downto 0);
			cont : in std_logic_vector (3 downto 0);
			freq : in std_logic;
			sign : out std_logic_vector (11 downto 0));
	END COMPONENT;

	COMPONENT SPI
		Port ( SPI_MOSI : out std_logic;
				DAC_CS : out std_logic;
				Sign : in std_logic_vector(11 downto 0);
				SPI_SCK : out std_logic;
				DAC_CLR : out std_logic;
				led2 : out std_logic;
				freq_25MHz : in std_logic;
				rst : in std_logic);
	END COMPONENT;
	
	COMPONENT clk_25MHz is
		Port ( clk : in std_logic;
			rst : in std_logic;
			led : out std_logic;
			freq_25MHz : inout std_logic);
	END COMPONENT;
	
	
	COMPONENT contador is
		Port ( rst : in std_logic;
			freq : in std_logic;
			cont : inout std_logic_vector(3 downto 0));
	END COMPONENT;
	
		
	COMPONENT frequ is
		Port ( clk : in std_logic;
			freqin : in std_logic_vector(1 downto 0);
			rst : in std_logic;
			freq : inout std_logic);
	END COMPONENT;
	
	signal sign_var : std_logic_vector(11 downto 0);
	signal freq_25MHz_var : std_logic;
	signal freq_var : std_logic;
	signal cont_var : std_logic_vector(3 downto 0);
	
begin

	gen_1 : gen
	PORT MAP(
		rst => rst,
		sw_sign => sw_sign,
		cont => cont_var,
		freq => freq_var,
		sign => sign_var
	);

	SPI_1 : SPI
	PORT MAP(
		SPI_MOSI => SPI_MOSI,
		DAC_CS => DAC_CS,
		Sign => sign_var,
		SPI_SCK => SPI_SCK,
		DAC_CLR => DAC_CLR,
		led2 => led2,
		freq_25MHz => freq_25MHz_var,
		rst => rst
	);
	
	clk_25MHz_1 : clk_25MHz
	PORT MAP(
		clk => clk,
		rst => rst,
		led => led,
		freq_25MHz => freq_25MHz_var
	);
	
	contador_1 : contador
	PORT MAP(
		rst => rst,
		freq => freq_var,
		cont => cont_var
	);
	  
	frequ_1 : frequ
	PORT MAP(
		clk => clk,
		freqin => sw_freq,
		rst => rst,
		freq => freq_var
	);
	
end Behavioral;

