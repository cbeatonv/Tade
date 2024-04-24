library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Topmodule is
	port (
	clk, rst, en : in std_logic;
	rco: out std_logic;
	data_u: out std_logic_vector(3 downto 0);
	data_d: out std_logic_vector(3 downto 0)
	);
	
end Topmodule;

architecture Behavioral of Topmodule is

component Divisor_reloj
	generic(n :integer:= 50000000);
		port (
			clk, rst, en: in std_logic;
			clk_salida, rco : out std_logic
			);
	end component;

component counter
			generic( 
				n: integer;
				data_size: integer
			);
			port (
			clk, rst, en: in std_logic;
			rco : out std_logic;
			data: out std_logic_vector(data_size downto 0)
			);
	end component;
	
signal en_count : std_logic;
signal rco_u : std_logic;

begin

clkdiv: Divisor_reloj 
	port map(
		clk => clk,
		en => en,
		rst => rst,
		rco => en_count,
		clk_salida => open
	);

			
contador_s_u: counter
	generic map(
		n => 9,
		data_size => 3
	)
	port map(
	clk => clk,
	rst => rst,
	en => en_count,
	rco => rco_u,
	data => data_u
	);
	

contador_s_d: counter
	generic map(
		n => 9,
		data_size => 3
	)
	port map(
	clk => clk,
	rst => rst,
	en => rco_u,
	rco => rco,
	data => data_d
	);
	

end Behavioral;

