library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- registro de desplazamiento entrada serie salida serie
entity Serie1 is
	Port ( clk, entrada: in std_logic;
			salida : out std_logic
			--salida: out std_logic_vector(3 downto 0) para salida paralela
			);
end Serie1;

architecture Behavioral of Serie1 is

signal D_bus, Q_bus : std_logic_vector(3 downto 0):= (others => '0');

begin

--registro de estado
process (clk)
begin 
	if clk'event and clk = '1' then
		Q_bus <= D_bus;
	end if;
end process;	

--logica de estado siguiente 
D_bus <= entrada & Q_bus (3 downto 1);
--D_bus <= Q_bus + '1'; para contador binario ascendente


--logica de salida
salida <= Q_bus(0);
--salida <= Q_bus; para salida en paralelo


end Behavioral;

