----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:57:46 11/11/2023 
-- Design Name: 
-- Module Name:    Selector_frecuencia - Behavioral 
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

entity frequ is
	Port ( clk : in std_logic;
		freqin : in std_logic_vector(1 downto 0);
		rst : in std_logic;
		freq : inout std_logic);
end frequ;

architecture arch of frequ is

	signal i_cuenta: integer;
	------Se crea una señal i_cuenta de tipo entero.
	signal i_clk: std_logic;
	------Se crea una señal i_clk de tipo binario (1 o 0).
	
	begin
	
		process (rst, clk)
			begin
				if (rst = '1') then i_cuenta <=0; ------Si rst=1 a cuenta lo reseteamos.
				elsif (rising_edge (clk)) then
				
				case freqin is
				
				when "00" =>
				------Cuando freqin="00" la frecuencia es de 1KHz.
				if(i_cuenta = 25000)then
				------(50MHz/1KHz)/2=25000
				i_cuenta <= 0;
				i_clk <= '1';
				else i_cuenta <= i_cuenta+1;
				i_clk <= '0';
				end if;
				
				when "01" =>
				------Cuando freqin="01" la frecuencia es de 5KHz.
				if(i_cuenta = 5000)then
				------(50MHz/5KHz)/2=5000
				i_cuenta <= 0;
				i_clk <= '1';
				else i_cuenta <= i_cuenta+1;
				i_clk <= '0';
				end if;
				
				when "10" =>
				------Cuando freqin="10" la frecuencia es de 10KHz.
				if(i_cuenta = 2500)then
				------(50MHz/10KHz)/2=2500
				i_cuenta <= 0;
				i_clk <= '1';
				else i_cuenta <= i_cuenta+1;
				i_clk <= '0';
				end if;
				when others => null;
				------Cuando freqin="11" no hace nada.
				end case;
				end if;
		end process;
		
		process (rst, i_clk)
			begin
				if (rst = '1') then
					freq <= '0';
				elsif rising_edge (i_clk) then
					freq <= not freq;
				end if;
		end process;

end arch;
