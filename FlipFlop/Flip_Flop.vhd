library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Flip_Flop is
	port(
		clk, stop, init_pause: in std_logic;
		output: out std_logic
	);
end Flip_Flop;


architecture Behavioral of Flip_Flop is
	type state_type is (inicial_state, activated_state, pause_state);
	signal state, next_state : state_type;

begin
	reloj: process (clk)
	begin
		if(clk'event and clk = '1') then
			if(stop = '1') then
				state <= inicial_state;
			else
				state <= next_state;
			end if;
		end if;
	end process reloj;
	
	salida: process (state)
	begin
		if state = activated_state then
			output <= '1';
		else
			output <= '0';
		end if;
	end process salida;
	
	siguiente_estado: process (state, init_pause)
	begin
		next_state <= state;
		case (state) is
			when inicial_state =>
				if init_pause = '1' then
					next_state <= activated_state;
				end if;
			when activated_state =>
				if init_pause = '1' then
					next_state <= pause_state;
				end if;
			when pause_state =>
				if init_pause = '1' then
					next_state <= activated_state;
				end if;
			when others =>
				next_state <= next_state;
		end case;
	end process siguiente_estado;

end Behavioral;
