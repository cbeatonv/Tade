----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:09:49 11/11/2023 
-- Design Name: 
-- Module Name:    Generador_signal - Behavioral 
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

entity gen is
	Port ( rst : in std_logic;
			sw_sign : in std_logic_vector(1 downto 0);
			cont : in std_logic_vector (3 downto 0);
			freq : in std_logic;
			sign : out std_logic_vector (11 downto 0));
end gen;

architecture Behavioral of gen is
	begin
		process(rst,sw_sign,cont,freq)
			begin
			
			if rst = '1' then sign <= x"000"; -------Cuando rst=1 a sing lo dejamos en "0".
			elsif rising_edge(freq) then
			case sw_sign is
			
			when "00" =>
			------Cuando sw_sgin="00" se genera la funci�n exponencial.
			case cont is
			when x"0" => sign <= x"FFF";
			when x"1" => sign <= x"5E3";
			when x"2" => sign <= x"22A";
			when x"3" => sign <= x"0CC";
			when x"4" => sign <= x"04B";
			when x"5" => sign <= x"01C";
			when x"6" => sign <= x"00A";
			when x"7" => sign <= x"004"; ---Funci�n exponencial ya que el m�ximo valor puede ser FFF
			when x"8" => sign <= x"002";-----(que son 12 bits para que el DAC los pueda recibir y
			when x"9" => sign <= x"001";----- convertir en un valor anal�gico). Los valores como se ve
			when x"A" => sign <= x"001";---decaen muy r�pidamente a casi llegar a cero, como lo hace
			when x"B" => sign <= x"001";----la funci�n exponencial.
			when x"C" => sign <= x"001";
			when x"D" => sign <= x"001";
			when x"E" => sign <= x"001";
			when x"F" => sign <= x"001";
			when others => null;
			end case;
			
			when "01" =>
			------Cuando sw_sgin="01" se genera la funci�n cuadrada.
			case cont is
			when x"0" => sign <= x"000";
			when x"1" => sign <= x"000";
			when x"2" => sign <= x"000";
			when x"3" => sign <= x"000";----Funci�n cuadrada. Como se puede ver, la salida nada m�s
			when x"4" => sign <= x"000";----puede tener los valores de FFF y 000. Que son el m�ximo y
			when x"5" => sign <= x"000";--m�nimo valor que el DAC puede convertir. Esto se puede ver
			when x"6" => sign <= x"000";---- como un 1 y un 0.
			when x"7" => sign <= x"000";
			when x"8" => sign <= x"FFF";
			when x"9" => sign <= x"FFF";
			when x"A" => sign <= x"FFF";
			when x"B" => sign <= x"FFF";
			when x"C" => sign <= x"FFF";
			when x"D" => sign <= x"FFF";
			when x"E" => sign <= x"FFF";
			when x"F" => sign <= x"FFF";
			when others => null;
			end case;
			
			when "10" =>
			------Cuando sw_sgin="10" se genera la funci�n senoidal.
			case cont is
			when x"0" => sign <= x"000";
			when x"1" => sign <= x"400";----Funci�n senoidal. Como nos podemos dar cuenta la se�al
			when x"2" => sign <= x"800";----aumenta y disminuye de igual manera. Lo que hace que se
			when x"3" => sign <= x"C00";----parezca a una se�al cuadrada pero con una pronunciaci�n
			when x"4" => sign <= x"F00";-----menos brusca.
			when x"5" => sign <= x"FFF";
			when x"6" => sign <= x"FFF";
			when x"7" => sign <= x"FFF";
			when x"8" => sign <= x"FFF";
			when x"9" => sign <= x"FFF";
			when x"A" => sign <= x"FFF";
			when x"B" => sign <= x"F00";
			when x"C" => sign <= x"C00";
			when x"D" => sign <= x"800";
			when x"E" => sign <= x"400";
			when x"F" => sign <= x"000";
			when others => null;
			end case;
			when others => null;
			end case;
			end if;
		end process;
end Behavioral;

