library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity State is
	port(
		clk, en, EnBlink : in std_logic;
		Din: in std_logic_vector(3 downto 0);
		Dout: out std_logic_vector(7 downto 0)
	);
end State;


architecture Behavioral of State is
	type state_type is (estado_inicial, segundo_estado, tercer_estado);
	signal state, next_state : state_type;

begin
	reloj: process (clk)
	begin
		if(clk'event and clk = '1') then
			state <= next_state;
		end if;
	end process reloj;
	
	
	salida: process (state, Din)
	begin
		if state = estado_inicial then
			Dout(7) <= Din(3);
			Dout(6) <= Din(2);
			Dout(5) <= Din(1);
			Dout(4) <= Din(0);
			Dout(3) <= Din(3);
			Dout(2) <= Din(2);
			Dout(1) <= Din(1);
			Dout(0) <= Din(0);
			
		elsif state = segundo_estado then
			Dout <= "00000000";
		else 
			Dout(7) <= Din(3);
			Dout(6) <= Din(2);
			Dout(5) <= Din(1);
			Dout(4) <= Din(0);
			Dout(3) <= Din(3);
			Dout(2) <= Din(2);
			Dout(1) <= Din(1);
			Dout(0) <= Din(0);
		end if;
	end process salida;
	
	
	siguiente_estado: process (state, en, EnBLink)
	begin
		next_state <= state;
		case (state) is
			when estado_inicial =>
				if EnBLink = '1' then
					next_state <= segundo_estado;
				end if;
			when segundo_estado =>
				if EnBLink = '1' then
					next_state <= estado_inicial;
				else
					if en = '1' then
						next_state <= tercer_estado;
					end if;
				end if;
			when tercer_estado =>
				if EnBLink = '1' then
					next_state <= estado_inicial;
				else
					if en = '1' then
						next_state <= segundo_estado;
					end if;
				end if;
			when others =>
				next_state <= next_state;
		end case;
	end process siguiente_estado;

end Behavioral;