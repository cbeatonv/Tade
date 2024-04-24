library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;


entity Divisor_reloj is
generic(n :integer);
port (
	clk, rst, en: in std_logic;
	clk_salida, rco : out std_logic
	);

end Divisor_reloj;

architecture divisor of Divisor_reloj is
	signal contador: integer range 0 to n-1;
	signal clk_state: std_logic := '0';

begin

	clock_divisor: process(clk,rst)
	begin 
		if(rst = '1') then
				contador <= 0;
				clk_state <= '0';
				rco <= '0';
		elsif clk'event and clk = '1' then
			if (en = '1') then
				if contador < n-1 then
					contador <= contador+1;
					rco <= '0';
				else
					clk_state <= not clk_state;
					contador <= 0;
					rco <= '1';
				end if;
			end if;
		end if;
	end process;
	
	persecond: process (clk_state)
	begin
		clk_salida <= clk_state;
	end process;

end divisor;