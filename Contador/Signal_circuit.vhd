library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;


entity Divisor_reloj is

port (
	clk, rst, en: in std_logic;
	clk_salida : out std_logic
	);

end Divisor_reloj;

architecture divisor of Divisor_reloj is

	signal contador: integer range 1 to 50000;
	signal clk_state: std_logic := '0';

begin

	clock_divisor: process(clk)
	begin 
		if clk'event and clk = '1' then
			if(rst = '1') then
				contador <= 1;
			else
				if (en = '1') then
					if contador < 50000000 then
						contador <= contador+1;
					else
						clk_state <= not clk_state;
						contador <= 1;
					end if;
				else
					contador <= contador;
				end if;
			end if;
		end if;
	end process;
	
	persecond: process (clk_state)
	begin
		clk_salida <= clk_state;
	end process;

end divisor;

