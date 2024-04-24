library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.std_logic_arith.all;
	
entity counter is
	generic( 
		n: integer;
		data_size: integer
	);

	port (
		clk, rst, en: in std_logic;
		rco : out std_logic;
		data: out std_logic_vector(data_size downto 0)
		);
end counter;

architecture cuenta of counter is

	signal contador: integer range 0 to n;

begin

	contadorc : process(clk, rst)
	begin
		if(rst = '1') then
			contador <= 0;
			rco <= '0';
		else
			if clk'event and clk = '1' then
				if (en = '1') then
					if contador < n then
						contador <= contador+1;
						rco <= '0';
					else
						rco<= '1';
						contador <= 0;
					end if;
				else
					contador <= contador;
					rco <= '0';
				end if;
			end if;
		end if;
	end process contadorc;
	
	data <= CONV_STD_LOGIC_VECTOR(contador, data_size + 1);
	

end cuenta;
