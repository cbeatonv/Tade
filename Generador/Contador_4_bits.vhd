----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:06:19 11/11/2023 
-- Design Name: 
-- Module Name:    Contador_4_bits - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador is
	Port ( rst : in std_logic;
		freq : in std_logic;
		cont : inout std_logic_vector(3 downto 0));
end contador;

architecture Behavioral of contador is

	signal contador: integer range 0 to 15;

	begin
	
	process(rst, freq)
		begin
			if rst = '1' then contador <= 0;
			elsif rising_edge(freq) then
			contador <= contador+1;
			end if;
	end process;
	
	cont <= CONV_STD_LOGIC_VECTOR(contador, 4);

end Behavioral;

