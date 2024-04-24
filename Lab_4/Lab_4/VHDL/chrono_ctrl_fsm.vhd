----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:11:50 02/20/2019 
-- Design Name: 
-- Module Name:    chrono_ctrl_fsm - Behavioral 
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY chrono_ctrl_fsm IS
	PORT (
		clk : IN STD_LOGIC;
		rst : IN STD_LOGIC;
		start_btn : IN STD_LOGIC;
		stop_btn : IN STD_LOGIC;
		show_btn : IN STD_LOGIC;
		save_btn : IN STD_LOGIC;

		en_count : OUT STD_LOGIC;
		stp_cnt : OUT STD_LOGIC;
		show_mode : OUT STD_LOGIC;
		counter_save : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)

	);
END chrono_ctrl_fsm;

ARCHITECTURE Behavioral OF chrono_ctrl_fsm IS

	TYPE state IS (STOP, PLAY, PAUSE, show);
	SIGNAL fsm_curr_state, fsm_next_state : state;
	SIGNAL cnt_save : INTEGER RANGE 0 TO 255;

BEGIN

	state_transition_logic : PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF rst = '1' THEN
				fsm_curr_state <= STOP;
			ELSE
				fsm_curr_state <= fsm_next_state;
				IF (save_btn = '1') THEN
					IF (fsm_curr_state = show) THEN
						cnt_save <= cnt_save - 1;
					ELSE
						cnt_save <= cnt_save + 1;
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	next_state_logic : PROCESS (fsm_curr_state, start_btn, stop_btn, save_btn, show_btn)
	BEGIN
		fsm_next_state <= fsm_curr_state;
		CASE fsm_curr_state IS
			WHEN STOP =>
				IF start_btn = '1' THEN
					fsm_next_state <= PLAY;
				ELSIF show_btn = '1' THEN
					fsm_next_state <= show;
				END IF;
			WHEN PLAY =>
				IF stop_btn = '1' THEN
					fsm_next_state <= STOP;
				ELSIF start_btn = '1' THEN
					fsm_next_state <= PAUSE;
				ELSIF show_btn = '1' THEN
					fsm_next_state <= show;
				END IF;
			WHEN PAUSE =>
				IF stop_btn = '1' THEN
					fsm_next_state <= STOP;
				ELSIF start_btn = '1' THEN
					fsm_next_state <= PLAY;
				ELSIF show_btn = '1' THEN
					fsm_next_state <= show;
				END IF;
			when show => 
				if show_btn = '1' then
					fsm_next_state <= pause;
				end if;
			WHEN OTHERS =>
				fsm_next_state <= STOP;
		END CASE;
	END PROCESS;

	en_count <= '1' WHEN fsm_curr_state = PLAY ELSE
		'0';
	stp_cnt <= '1' WHEN fsm_curr_state = STOP ELSE
		'0';
	show_mode <= '1' when fsm_curr_state = show else
		'0';
	counter_save <= conv_std_logic_vector(cnt_save,8);
END Behavioral;