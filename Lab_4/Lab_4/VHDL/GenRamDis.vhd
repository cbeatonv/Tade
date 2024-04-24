LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.all;

ENTITY GenRamDis IS
    GENERIC (
        Ndata : INTEGER := 8;
        Naddr : INTEGER := 8
    );
    PORT (
        clk: IN STD_LOGIC;
        WE : IN STD_LOGIC;
        A : In std_logic_vector(Naddr-1 downto 0);
        DI : IN STD_LOGIC_VECTOR(Ndata - 1 DOWNTO 0);
        DO : OUT STD_LOGIC_VECTOR(Ndata - 1 DOWNTO 0)
    );
END GenRamDis;

ARCHITECTURE arch OF GenRamDis IS
    type ram_type is array(2**Naddr-1 downto 0) of std_logic_vector(Ndata-1 downto 0);
    signal ram: ram_type;
BEGIN
    memory : process(clk)
    begin
        if(clk'event and clk = '1') then
            if (WE = '1') then
                   ram(conv_integer(A)) <= DI; 
            end if;
        end if;
    end process ; -- memory

    DO <= ram(conv_integer(A));

END ARCHITECTURE;