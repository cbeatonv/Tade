----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:07:16 02/06/2019 
-- Design Name: 
-- Module Name:    div - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity div is
	Generic(DIVIDER: integer := 2);
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clk_o : out  STD_LOGIC);
end div;

architecture Behavioral of div is

signal cnt : integer range 0 to DIVIDER;
begin

process (clk)
begin
if rising_edge(clk) then
	if (rst = '1') then
		cnt <= 0;
	else
		if (cnt = (DIVIDER - 1)) then 
			cnt <= 0;
		else
			cnt <= cnt + 1;
		end if;
	end if;
end if;
end process;

clk_o <= '1' when (cnt = (DIVIDER - 1)) else '0';

end Behavioral;

