library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TopModule is
	port (
	clk, EnBlink, rst : in std_logic;
	Din : in std_logic_vector(3 downto 0);
	Dout: out std_logic_vector(7 downto 0)
	);
end TopModule;

architecture Behavioral of TopModule is

component Divisor_reloj
	generic(n :integer:= 50000000); 
		port (
			clk, rst, en: in std_logic;
			clk_salida, rco : out std_logic
			);
end component;

component State 
	port(
		clk, en, EnBlink : in std_logic;
		Din: in std_logic_vector(3 downto 0);
		Dout: out std_logic_vector(7 downto 0)
	);
end component;

signal en_maq : std_logic;

begin

clkdiv: Divisor_reloj 
	port map(
		clk => clk,
		en => '1',
		rst => rst,
		rco => en_maq,
		clk_salida => open
	);
	
maquina: State 
	port map(
		clk => clk,
		en => en_maq,
		EnBlink => EnBlink,
		Din => Din,
		Dout => Dout
	);


end Behavioral;
