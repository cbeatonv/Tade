LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BtnsDriver IS
    GENERIC (
        BtnN : INTEGER := 4
    );
    PORT (
        clk, rst : IN STD_LOGIC;
        btn : IN STD_LOGIC_VECTOR(BtnN - 1 DOWNTO 0);
        btn_edge : OUT STD_LOGIC_VECTOR(BtnN - 1 DOWNTO 0)
    );
END BtnsDriver;

ARCHITECTURE arch OF BtnsDriver IS

    COMPONENT rising_edge_detector
        PORT (
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;
            level : IN STD_LOGIC;
            pulse : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT btn_debounce
        PORT (
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;
            btn : IN STD_LOGIC;
            btn_deb : OUT STD_LOGIC);
    END COMPONENT;

    signal btn_deb: std_logic_vector(BtnN-1 downto 0);
BEGIN

    BtnsDriverConect : FOR i IN 0 TO BtnN - 1 GENERATE
        btn_debounce : btn_debounce
        PORT MAP(
            clk => clk,
            rst => rst,
            btn => btn(i),
            btn_deb => btn_deb(i)
        );

        btn_edge_detector : rising_edge_detector
        PORT MAP(
            clk => clk,
            rst => rst,
            level => btn_deb(i),
            pulse => btn_edge(i)
        );
    END GENERATE; -- BtnsDriverConect

END ARCHITECTURE;