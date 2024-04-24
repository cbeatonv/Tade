library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           en : in  STD_LOGIC;
           data : out  STD_LOGIC_VECTOR (5 downto 0));
end top;

architecture Behavioral of top is

	component Divisor_reloj
		port (
			clk, rst, en: in std_logic;
			clk_salida : out std_logic
			);
	end component;
	
	component counter 
		port (
		clk, rst, en: in std_logic;
		rco : out std_logic;
		data: out std_logic_vector(5 downto 0)
		);
	end component;
	
	signal en_count: std_logic;
begin

	clkdiv: Divisor_reloj 
		port map(
			clk => clk,
			rst => rst,
			en => en,
			clk_salida => en_count
		);
		
	cnt: counter
		port map(
			clk => clk,
			rst => rst,
			en => en_count,
			rco => open,
			data => data
		);


end Behavioral;

