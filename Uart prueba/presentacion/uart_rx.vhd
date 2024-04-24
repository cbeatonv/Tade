library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

entity Receive_Register is
  generic (
    COUNT_BARRIER : integer   := 868;
    DATA_WIDTH     : integer := 8;
    N_PARITY_BIT   : integer := 0
  );
  port (
    clk       : in std_logic; --reloj 
    rst      : in std_logic;  --reset
    recv_word_out : out std_logic; --cuando se termina de recibir una palabra 
    word_out      : out std_logic_vector(DATA_WIDTH - 1 downto 0); --palabra a recibir
    parity_rx_out : out std_logic; --bit de paridad que esta recibiendo 
    busy_rx_out   : out std_logic; -- si esta recibiendo en este momento se;al del estado de recepcion
    rx_in        : in std_logic --dato serie que esta entrando 
  );
end Receive_Register;

architecture Behavioral of Receive_Register is

  type state_type is (IDLE, RX_START, RCV, RX_PARITY, RX_STOP);

    signal state      : state_type := IDLE;
    signal next_state : state_type := IDLE;
    signal recving    : std_logic := '0';
    signal parity_bit : std_logic := '0';
    signal count      : integer := 0;
    signal count_bits : integer := 0;
    signal recv_word  : std_logic := '0';
    signal word       : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal rx         : std_logic := '1';


  constant START_BIT     : std_logic := '0';
  constant STOP_BIT      : std_logic := '1';
  
begin

process (clk, rx, rst)

  begin
	if rst = '1' then --si el rst esta activado vuelve al estado de descanso y los bits de entrada se ponen en 1
		state <= IDLE;
		next_state <= IDLE;
		recving <= '0';
		parity_bit <= '0';
		count <= 0;
		count_bits <= 0;
		recv_word <= '0';
		word <= (others => '0');
		rx <= '1';
	elsif rising_edge(clk) then
		rx <= rx_in;
		recv_word <= '0'; --estado de recepcion de la palabra
		case state is
		  when IDLE => --estado de descanso
			count_bits <= 0;
			count <= 0;
			if rx = '0' then --si recibe un 0, que es el bit de inicio, cambia al estado de inicio
			  next_state <= RX_START;
			end if;
		  when RX_START => --estado de inicio
			count <= count + 1;
			if count = COUNT_BARRIER/2 then --cuando llegue a la mitad del bit de inicio si el bit de entada es 0 da error
			  if rx = '1' then -- Glitch
				next_state <= IDLE;
			  end if;
			end if; --esto es para determinar un error en la recepcion del bit de inicio
			if count = COUNT_BARRIER then --llega al final del bit
			  count_bits <= count_bits + 1;
			  count <= 0;
			  next_state <= RCV; --cuando llega al final del bit de inicio cambia al estado de recepcion
			end if;
		  when RCV => --estado de recepcion
			count <= count + 1;
			if count = COUNT_BARRIER/2 then --cuando llega a la mitad del bit
			  word(word_out'high - 1 downto 0) <= word(word_out'high downto 1); --mover todos los bits de la palabra de entrada la derecha
			  word(word_out'high) <= rx; --pone el bit de entada en el ultimo bit de la palabra de entrada
			end if;
			if count = COUNT_BARRIER then --cuando llega al final del bit
			  count_bits <= count_bits + 1; --cuenta un bit
			  count      <= 0; --reinicia el contador de ticks
			  if count_bits = DATA_WIDTH + 1 then --si tengo los datos a recibir completos
				if N_PARITY_BIT = 0 then --y el bit de paridad es 0 
				  next_state <= RX_STOP; --cambio al estado de parada --termino de transmitir la palabra
				else
				  next_state <= RX_PARITY; -- si el bit de paridad es 1 cambio al estado de paridad
				end if;
			  end if;
			end if;
		  when RX_PARITY => --estado de paridad
			count <= count + 1;
			if count = COUNT_BARRIER/2 then --cuando llegue a la mitad del bit
			  parity_bit <= rx; --poner el bit que este entrando en el bit de pridad
			end if;
			if count = COUNT_BARRIER then --cuando llega al final del bit
			  count      <= 0; --se reinicia la cuenta
			  next_state <= RX_STOP; --cambia al estado de parada
			end if;
		  when RX_STOP => --estado de parada
			count <= count + 1;
			if count = COUNT_BARRIER then --cuando llegue al final del bit
			  recv_word  <= '1'; --avisa que ya se tiene la palabra a recibir
			  count      <= 0; --se reinicia la cuenta
			  next_state <= IDLE; --cambia al estado de descanso
			  -- if tx is not 1 means an error
			end if;
		  when others =>
			next_state <= IDLE; --cambia al estado de descanso
		end case;
		state <= next_state;
    recving <= '0';
    if state /= IDLE then --si el estado actual es diferente de descando poner el estado de recepcion en 1
      recving <= '1';
    end if;
    busy_rx_out <= recving;
    recv_word_out <= recv_word;
    word_out <= word; --palabra de salida
    parity_rx_out <= parity_bit;
	end if;
end process;


end architecture;