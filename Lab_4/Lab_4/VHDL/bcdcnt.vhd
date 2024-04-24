----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:51:06 03/12/2019 
-- Design Name: 
-- Module Name:    bcdcnt - Behavioral 
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

use IEEE.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcdcnt is
	Generic(MAXCNT: integer := 9);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  clr : in  STD_LOGIC;
           rco : out  STD_LOGIC;
           cnt : out  STD_LOGIC_VECTOR (3 downto 0);
           en : in  STD_LOGIC);
end bcdcnt;

architecture Behavioral of bcdcnt is

type rco_states is (WAIT_MAX_CNT, WAIT_MIN_CNT);

signal rco_curr_state : rco_states;
signal rco_next_state : rco_states;

signal icnt : integer range 0 to 9;

begin

chrono_counter_logic: process(clk)
begin
if rising_edge(clk) then
	if rst = '1' then
		icnt <= 0;
	else
		if clr = '1' then
			icnt <= 0;
		elsif en = '1' then
			if icnt = MAXCNT then
				icnt <= 0;
			else
				icnt <= icnt + 1;
			end if;
		end if;
	end if;
end if;
end process;

rco_fsm_state_transition_logic: process(clk)
begin
if rising_edge(clk) then
	if rst = '1' then
		rco_curr_state <= WAIT_MAX_CNT;
	else
		rco_curr_state <= rco_next_state;
	end if;
end if;
end process;

rco_fsm_next_state_logic: process(rco_curr_state, icnt)
begin
rco_next_state <= rco_curr_state;
case rco_curr_state is
	when WAIT_MAX_CNT =>
		if icnt = MAXCNT then
			rco_next_state <= WAIT_MIN_CNT;
		end if;
		
	when WAIT_MIN_CNT =>
		if icnt = 0 then
			rco_next_state <= WAIT_MAX_CNT;
		end if;
		
	when others =>
		rco_next_state <= WAIT_MAX_CNT;
	
end case;
end process;

rco <= '1' when (rco_curr_state = WAIT_MIN_CNT and icnt = 0) else '0';
cnt <= CONV_STD_LOGIC_VECTOR(icnt, 4);

end Behavioral;

