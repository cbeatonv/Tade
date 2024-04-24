library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.std_logic_arith.all;
	
entity counter is

port (
	clk, rst, en: in std_logic;
	rco : out std_logic;
	data: out std_logic_vector(5 downto 0)
	);

end counter;

architecture cuenta of counter is

signal contador: integer range 0 to 59 := 0;

begin

	contadorc : process(clk)
	begin 
		if clk'event and clk = '1' then
			if(rst = '1') then
				contador <= 0;
			else
				if (en = '0') then
					if contador < 59 then
						contador <= contador+1;
						rco <= '0';
					else
						rco<= '1';
						contador <= 0;
					end if;
				else
					contador <= contador;
				end if;
			end if;
		end if;
	
	end process contadorc;
	
	
data <= CONV_STD_LOGIC_VECTOR(contador, 6);
	

end cuenta;
