----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:49:59 11/11/2023 
-- Design Name: 
-- Module Name:    Divisor_frecuencia_25MHz - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_25MHz is
	Port ( clk : in std_logic;
			rst : in std_logic;
			led : out std_logic;
			freq_25MHz : inout std_logic);
end clk_25MHz;

architecture arch of clk_25MHz is

	signal i_cuenta: integer;
	------Se crea una señal i_cuenta de tipo entero.
	signal i_clk: std_logic;
	------Se crea una señal i_clk de tipo binario (1 o 0).
	
	begin
	
	process (rst, clk)
		begin
			if (rst = '1') then i_cuenta <=0; led <= '1';
			elsif (rising_edge (clk)) then
			if(i_cuenta = 1)then
			------Para obtener los ciclos de rejol de clk cuenta debe llegar
			i_cuenta <= 0;
			------a "1" donde (50MHz/25MHz)/2=1
			i_clk <= '1';
			led <= '0';
			else i_cuenta <= i_cuenta+1;
			i_clk <= '0';
			led <= '0';
			end if;
			end if;
	end process;
	
	process (rst, i_clk)
		begin
			if (rst = '1') then
			freq_25MHz <= '0';
			elsif (rising_edge (i_clk)) then
			freq_25MHz <= not freq_25MHz;
		end if;
	end process;
	
end arch;

