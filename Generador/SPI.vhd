----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:18:32 11/11/2023 
-- Design Name: 
-- Module Name:    SPI - Behavioral 
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

entity SPI is
	Port ( SPI_MOSI : out std_logic;
			DAC_CS : out std_logic;
			Sign : in std_logic_vector(11 downto 0);
			SPI_SCK : out std_logic;
			DAC_CLR : out std_logic;
			led2 : out std_logic;
			freq_25MHz : in std_logic;
			rst : in std_logic);
end SPI;

architecture Behavioral of SPI is
	type datos is
	(d_pre,d_pre2,
	d31,d30,d29,d28,d27,d26,d25,d24,d23,d22,
	d21,d20,d19,d18,d17,d16,d15,d14,d13,d12,
	d11,d10,d9,d8,d7,d6,d5,d4,d3,d2,d1,d0,
	d_post,d_post2);
	
	signal dat_presente,dat_siguiente : datos;
	--Envío datos seriales
	
	begin
		process(rst,dat_presente,dat_siguiente)
			begin
				if rst = '1' then DAC_CLR <= '0'; led2 <= '0';
				elsif rst = '0' then
				
					case dat_presente is
					--------Para indicar al SPI_MOSI que va enviar datos primero ponemos a DAC_CS en "0"--------------------
					------- y al final de enviar el dato en "1". Ver Figura 1-20.----------------------------------------------------
					when d_pre=>DAC_CS<='0';DAC_CLR<='1'; dat_siguiente<=d_pre2; led2<='1'; ---DAC_CS="0"
					when d_pre2=>DAC_CS<='0';DAC_CLR<='1'; dat_siguiente<=d31; led2<='1';
					---DAC_CS="0"
					-----------------------------------------------------------------------------------------------------------------------------------
					------Después recibimos 8 bits que son basura o que no importan (del Bit 31 al Bit 24)-------------------
					when d31 => SPI_MOSI <= '1'; DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d30; led2 <= '1';
					when d30 => SPI_MOSI <= '1'; DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d29; led2 <= '1';
					when d29 => SPI_MOSI <= '1'; DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d28; led2 <= '1';
					when d28 => SPI_MOSI <= '1'; DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d27; led2 <= '1';
					when d27 => SPI_MOSI <= '0'; DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d26; led2 <= '1';
					when d26 => SPI_MOSI <= '0'; DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d25; led2 <= '1';
					when d25 => SPI_MOSI <= '0'; DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d24; led2 <= '1';
					when d24 => SPI_MOSI <= '0'; DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d23; led2 <= '1';
					-----------------------------------------------------------------------------------------------------------------------------------
					---------Se envía el comando para el DAC en los siguientes 4 bits (Bit 23 al Bit 20)--------------------------
					when d23=>SPI_MOSI<= '0'; DAC_CS<='0'; DAC_CLR<='1'; dat_siguiente <= d22; led2 <= '1';---Bit 3
					when d22=>SPI_MOSI<= '0'; DAC_CS<='0'; DAC_CLR<='1'; dat_siguiente <= d21; led2 <= '1'; ---Bit 2
					when d21=>SPI_MOSI<= '1'; DAC_CS<='0'; DAC_CLR<='1'; dat_siguiente <= d20; led2 <= '1'; ---Bit 1
					when d20=>SPI_MOSI<= '1'; DAC_CS<='0'; DAC_CLR<='1'; dat_siguiente <= d19; led2 <= '1'; ---Bit 0
					-----------------------------------------------------------------------------------------------------------------------------------
					---------Se envia la Dirección o Selección de Canal de cuatro bits (Bit 19 al Bit 14)--------------------------
					when d19=>SPI_MOSI<='0'; DAC_CS<='0'; DAC_CLR<='1'; dat_siguiente<=d18; led2<='1'; ---Bit 3
					when d18=>SPI_MOSI<='0'; DAC_CS<='0'; DAC_CLR<='1'; dat_siguiente<=d17; led2<= '1'; ---Bit 2
					when d17=>SPI_MOSI<='0'; DAC_CS<='0'; DAC_CLR<='1'; dat_siguiente<=d16; led2<='1'; ---Bit 1
					when d16 =>SPI_MOSI<='0'; DAC_CS<='0'; DAC_CLR<='1'; dat_siguiente<=d15; led2<='1'; ---Bit 0
					-----------------------------------------------------------------------------------------------------------------------------------

					--------Se recibe los datos que vienen del generador de funciones y se envía 12 bits a través del bus --
					--------SPI_MOSI de manera serial (Bit 15 al Bit 4).----------------------------------------------------------------
					when d15 => SPI_MOSI<=Sign(11); DAC_CS<='0'; DAC_CLR <= '1'; dat_siguiente<=d14; led2 <= '1';
					when d14 =>SPI_MOSI <= Sign(10); DAC_CS <= '0';DAC_CLR<= '1';dat_siguiente <= d13; led2 <= '1';
					when d13=>SPI_MOSI <= Sign(9); DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d12; led2 <= '1';
					when d12 =>SPI_MOSI<= Sign(8); DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d11; led2 <= '1';
					when d11 =>SPI_MOSI<= Sign(7); DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d10; led2 <= '1';
					when d10 =>SPI_MOSI<= Sign(6); DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d9; led2 <= '1';
					when d9 =>SPI_MOSI <= Sign(5); DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d8; led2 <= '1';
					when d8 => SPI_MOSI <= Sign(4); DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d7; led2 <= '1';
					when d7 => SPI_MOSI <= Sign(3); DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d6; led2 <= '1';
					when d6 => SPI_MOSI <= Sign(2); DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d5; led2 <= '1';
					when d5 => SPI_MOSI <= Sign(1); DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d4; led2 <= '1';
					when d4 => SPI_MOSI <= Sign(0); DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d3; led2 <= '1';
					-----------------------------------------------------------------------------------------------------------------------------------
					------Después recibimos 4 bits que son basura o que no importan (del Bit 3 al Bit 0)----------------------
					when d3 => SPI_MOSI <= '1'; DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d2; led2 <= '1';
					when d2 => SPI_MOSI <= '1'; DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d1; led2 <= '1';
					when d1 => SPI_MOSI <= '0'; DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d0; led2 <= '1';
					when d0 => SPI_MOSI <= '0'; DAC_CS <= '0'; DAC_CLR <= '1'; dat_siguiente <= d_post; led2 <= '1';
					-----------------------------------------------------------------------------------------------------------------------------------
					--------Para indicar al SPI_MOSI que se termino de enviar el dato ponemos a DAC_CS en "1"------
					when d_post => DAC_CS <= '1'; DAC_CLR <= '1'; dat_siguiente <= d_post2; led2 <= '1';
					when d_post2 => DAC_CS <= '1'; DAC_CLR <= '1'; dat_siguiente <= d_pre; led2 <= '1';
					-----------------------------------------------------------------------------------------------------------------------------------
					end case;
				end if;
		end process;
		
		process
			begin
				wait until rising_edge(freq_25MHz);
				dat_presente <= dat_siguiente;
		end process;
		
		process(freq_25MHz)
			begin
				SPI_SCK <= freq_25MHz;
		end process;
		
end Behavioral;

