library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

entity Transmit_Register is
  generic (
    CLK_PERIOD_NS  : time    := 10 ns;
    UART_PERIOD_NS : time    := 8680 ns;
    DATA_WIDTH     : integer := 8;
    PARITY_TYPE    : integer := 0; -- 0 is Even and 1 is Odd
    N_PARITY_BIT   : integer := 0
  );
  port (
    clk       : in std_logic;
    rst      : in std_logic;
	sending    : in std_logic;
	word2send  : in std_logic_vector(DATA_WIDTH + 1 + N_PARITY_BIT + 1 - 1 downto 0) := (others => '0'); --palabra a enviar
    busy_tx_out   : out std_logic; -- si esta enviando en este momento
    tx_out        : out std_logic --dato serie que esta sacando 
  );
end Transmit_Register;

architecture Behavioral of Transmit_Register is

    signal count      : integer := 0;
    signal count_bits : integer := 0;
    signal word       : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal tx         : std_logic := '1';
  
	constant COUNT_BARRIER : natural   := UART_PERIOD_NS / CLK_PERIOD_NS;
	constant START_BIT     : std_logic := '0';
	constant STOP_BIT      : std_logic := '1';

begin

process (clk, word, rst)

  begin
	if rst = '1' then
		count <= 0;
		count_bits <= 0;
		word <= (others => '0');
		word2send <= (others => '0');
		tx <= '1'; -- porque el dato que sale en reposo en 1
	elsif rising_edge(clk) then
		if sending = '1' then --bus? --si estoy enviando una palabra hago esto
		  count <= count + 1; --aumento contador 
		  if count = COUNT_BARRIER then --si llega al final de contado de reloj aumentar el contador de bit
			count_bits <= count_bits + 1;
			count <= 0;
			tx <= word2send(0); --sacar el primer dato
			word2send(word2send'high - 1 downto 0) <= word2send(word2send'high downto 1); --correr el dato
			if count_bits = word2send'length + 1 then -- si llega al final reiniciar las se;ales
			  tx         <= '1';
			  count_bits <= 0;
			end if;
		  end if;
		end if;
		tx_out <= tx; --sacar el valor 
		busy_tx_out <= sending; --poner si se esta enviando o no en el estado de ocupado
	end if;
end process;

end architecture;