library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

entity UART_TOP is
  generic (
	COUNT_BARRIER : integer   := 7; -- uart period / clk period -- 8680 ns / 10 ns --baudrate
    DATA_WIDTH     : integer range 5 to 8 := 8; -- longitud de trama de datos configurable
    N_PARITY_BIT   : integer range 0 to 1 := 1; --bit de paridad
    PARITY_TYPE    : integer range 0 to 1 := 0 -- 0 is Even and 1 is Odd --tipo de paridad configurable
  );
  port (
    clk  : in std_logic; ------------
    rst : in std_logic; ---------------
    -- RX INTERFACE
    new_word_rx : out std_logic; --se activa cuando recibe una palabra
    word_rx     : out std_logic_vector(DATA_WIDTH - 1 downto 0); --palabra recibida -----------------
    busy_rx     : out std_logic; ----estado de receptor si esta ocupado en este momento o no -----------------
    -- TX INTERFACE
    new_word_tx : in std_logic; --enable del tx ----------------
    word_tx     : in std_logic_vector(DATA_WIDTH - 1 downto 0); --palabra a transmitir -------------
    busy_tx     : out std_logic; --estado de transmisor si esta ocupado en este momento o no --------------
    parity_rx   : out std_logic; --bit de paridad de la palabra que voy a enviar calculado por el programa de tx
    -- UART INTERFACE
    rx : in std_logic; --entrada del receptor en serie -----------------
    tx : out std_logic --salida del transmisor en serie -----------------
  );
end entity;

architecture Behavioral of UART_TOP is

component Transmit_Register
  generic (
    COUNT_BARRIER : integer   := 7;
    DATA_WIDTH     : integer := 8;
    PARITY_TYPE    : integer := 0; -- 0 is Even and 1 is Odd
    N_PARITY_BIT   : integer := 1
  );
  port (
    clk       : in std_logic;
    rst      : in std_logic;
    send_word_in : in std_logic;
    word_in      : in std_logic_vector(DATA_WIDTH - 1 downto 0);
    busy_tx_out   : out std_logic;
    tx_out        : out std_logic
  );
end component;

component Receive_Register
  generic (
    COUNT_BARRIER : integer   := 7;
    DATA_WIDTH     : integer := 8;
    N_PARITY_BIT   : integer := 1
  );
  port (
    clk       : in std_logic;
    rst      : in std_logic;
    recv_word_out : out std_logic;
    word_out      : out std_logic_vector(DATA_WIDTH - 1 downto 0);
    parity_rx_out : out std_logic;
    busy_rx_out   : out std_logic;
    rx_in        : in std_logic
  );
end component;

begin

  uart_tx : Transmit_Register
    generic map(
      COUNT_BARRIER => COUNT_BARRIER,
      DATA_WIDTH     => DATA_WIDTH,
      PARITY_TYPE    => PARITY_TYPE,
      N_PARITY_BIT   => N_PARITY_BIT
    )
    port map(
      clk       => clk,
      rst      => rst,
      send_word_in => new_word_tx, --enable del tx
      word_in      => word_tx, --palabra a entrar
      busy_tx_out   => busy_tx,
      tx_out        => tx
    );

  uart_rx : Receive_Register
    generic map(
      COUNT_BARRIER => COUNT_BARRIER,
      DATA_WIDTH     => DATA_WIDTH,
      N_PARITY_BIT   => N_PARITY_BIT
    )
    port map(
      clk       => clk,
      rst      => rst,
      recv_word_out => new_word_rx,
      word_out      => word_rx,
      busy_rx_out   => busy_rx,
      parity_rx_out => parity_rx,
      rx_in        => rx
    );
end architecture;