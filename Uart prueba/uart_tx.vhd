library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

entity Transmit_Register is
  generic (
    COUNT_BARRIER : integer   := 7;
    DATA_WIDTH     : integer := 8;
    PARITY_TYPE    : integer := 0; -- 0 is Even and 1 is Odd
    N_PARITY_BIT   : integer := 1
  );
  port (
    clk       : in std_logic;
    rst      : in std_logic; --reset 
    send_word_in : in std_logic; --enable_tx
    word_in      : in std_logic_vector(DATA_WIDTH - 1 downto 0); --palabra a enviar
    busy_tx_out   : out std_logic; -- si esta enviando en este momento
    tx_out        : out std_logic --dato serie que esta sacando 
  );
end Transmit_Register;

architecture Behavioral of Transmit_Register is

	signal sending    : std_logic := '0';
    signal count      : integer := 0;
    signal count_bits : integer := 0;
    signal parity_tx  : std_logic := '0';
    signal send_word  : std_logic := '0';
    signal word       : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal word2send  : std_logic_vector(DATA_WIDTH + 1 + N_PARITY_BIT + 1 - 1 downto 0) := (others => '0');
    signal tx         : std_logic := '1';
  
	constant START_BIT     : std_logic := '0';
	constant STOP_BIT      : std_logic := '1';

begin

process (clk,send_word, word, rst)

  begin
	if rst = '1' then
		sending <= '0';
		count <= 0;
		count_bits <= 0;
		send_word  <= '0';
		parity_tx  <= '0';
		word <= (others => '0');
		word2send <= (others => '0');
		tx <= '1'; -- porque el dato que sale en reposo en 1
	elsif rising_edge(clk) then
		send_word <= send_word_in; --estado de activacion del transmisor
		word <= word_in; --palabra que voy a entrar
		if send_word = '1' then -- si se activa el transmisor voy a hacer esto
		  parity_tx  <= '0'; --inicializo la paridad en cero
		  if N_PARITY_BIT = 1 then --si el bit de paridad es 1
			for i in 0 to DATA_WIDTH - 1 loop
			  parity_tx <= parity_tx xor word(i); -- genera el bit de paridad haciendo un xor con cada elemento de la palabra
			end loop; --
			if PARITY_TYPE = 0 then -- EVEN
			  parity_tx <= parity_tx; -- si el tipo de paridad es even dejar el valor de paridad igual
			else -- ODD 
			  parity_tx <= not parity_tx; -- si el tipo de paridad es odd negar el valor de paridad
			end if; --esto lo que hace es generar el valor de paridad
			word2send <= STOP_BIT & parity_tx & word  & START_BIT; -- estructura de la palabra que voy a enviar
			sending <= '1'; -- dice que esta enviando una palabra
		  else --si el bit de paridad es 0
			sending <= '1'; --dice que esta enviando una palabra
			word2send <= STOP_BIT & word & START_BIT; --estructura de la palabra que voy a enviar
		  end if;
		  count_bits <= 0;
		end if;
		
		if sending = '1' then --bus? --si estoy enviando una palabra hago esto
		  count <= count + 1; --aumento contador 
		  if count = COUNT_BARRIER then --si llega al final de contado de reloj aumentar el contador de bit
			count_bits <= count_bits + 1;
			count <= 0;
			tx <= word2send(0); --sacar el primer dato
			word2send(word2send'high - 1 downto 0) <= word2send(word2send'high downto 1); --correr el dato
			if count_bits = word2send'length + 1 then -- si llega al final reiniciar las se;ales
			  sending    <= '0';
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