----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:05:35 03/06/2019 
-- Design Name: 
-- Module Name:    chrono - Behavioral 
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

USE IEEE.std_logic_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY chrono IS
	PORT (
		clk : IN STD_LOGIC;
		rst : IN STD_LOGIC;

		start_btn : IN STD_LOGIC;
		stop_btn : IN STD_LOGIC;
		save_btn : IN STD_LOGIC;
		show_btn : IN STD_LOGIC;
		addr_sw : IN STD_LOGIC_VECTOR(3 DOWNTO 0);

		data : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		counter_save : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		rs : OUT STD_LOGIC;
		en : OUT STD_LOGIC;
		rw : OUT STD_LOGIC;
		sfce : OUT STD_LOGIC);
END chrono;

ARCHITECTURE Behavioral OF chrono IS

	TYPE crom IS ARRAY (0 TO 15) OF STD_LOGIC_VECTOR (7 DOWNTO 0);
	CONSTANT msg : crom := ("01000011", "01101000", "01110010", "01101111",
	"01101110", "01101111", "00100000", "00100000",
	"00100000", "00100000", "00100000", "00100000",
	"00100000", "00100000", "00100000", "00100000");

	COMPONENT lcd
		PORT (
			clk : IN STD_LOGIC;
			rst : IN STD_LOGIC;
			byte : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			addr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			auto : IN STD_LOGIC;
			wr : IN STD_LOGIC;
			ack : OUT STD_LOGIC;
			rdy : OUT STD_LOGIC;
			data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			rs : OUT STD_LOGIC;
			en : OUT STD_LOGIC;
			rw : OUT STD_LOGIC;
			sfce : OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT div IS
		GENERIC (DIVIDER : INTEGER);
		PORT (
			rst : IN STD_LOGIC;
			clk : IN STD_LOGIC;
			clk_o : OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT chrono_ctrl_fsm
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
	END COMPONENT;

	COMPONENT BtnsDriver
		GENERIC (
			BtnN : INTEGER := 4
		);
		PORT (
			clk, rst : IN STD_LOGIC;
			btn : IN STD_LOGIC_VECTOR(BtnN - 1 DOWNTO 0);
			btn_edge : OUT STD_LOGIC_VECTOR(BtnN - 1 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT bcdcnt
		GENERIC (MAXCNT : INTEGER := 9);
		PORT (
			clk : IN STD_LOGIC;
			rst : IN STD_LOGIC;
			clr : IN STD_LOGIC;
			en : IN STD_LOGIC;
			rco : OUT STD_LOGIC;
			cnt : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT GenRamDis
		GENERIC (
			Ndata : INTEGER := 32;
			Naddr : INTEGER := 8
		);
		PORT (
			clk : IN STD_LOGIC;
			WE : IN STD_LOGIC;
			A : IN STD_LOGIC_VECTOR(Naddr - 1 DOWNTO 0);
			DI : IN STD_LOGIC_VECTOR(Ndata - 1 DOWNTO 0);
			DO : OUT STD_LOGIC_VECTOR(Ndata - 1 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT LcdCtrFsm
		PORT (
			clk, rst : IN STD_LOGIC;
			rdy, ack : IN STD_LOGIC;
			wr : OUT STD_LOGIC;
			NextChar : OUT STD_LOGIC
		);
	END COMPONENT;

	SIGNAL clk_100hz : STD_LOGIC;
	SIGNAL en_count : STD_LOGIC;
	SIGNAL stp_cnt : STD_LOGIC;

	SIGNAL start_btn_edge : STD_LOGIC;
	SIGNAL stop_btn_edge : STD_LOGIC;
	SIGNAL show_btn_edge : STD_LOGIC;
	SIGNAL save_btn_edge : STD_LOGIC;

	SIGNAL hourh, hourl : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL minh, minl : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL sech, secl : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL csech, csecl : STD_LOGIC_VECTOR(3 DOWNTO 0);

	SIGNAL Rhourh, Rhourl : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Rminh, Rminl : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Rsech, Rsecl : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Rcsech, Rcsecl : STD_LOGIC_VECTOR(3 DOWNTO 0);

	SIGNAL rco_csecl, rco_csech : STD_LOGIC;
	SIGNAL rco_secl, rco_sech : STD_LOGIC;
	SIGNAL rco_minl, rco_minh : STD_LOGIC;
	SIGNAL rco_hourl : STD_LOGIC;

	SIGNAL en_csecl, en_csech : STD_LOGIC;
	SIGNAL en_secl, en_sech : STD_LOGIC;
	SIGNAL en_minl, en_minh : STD_LOGIC;
	SIGNAL en_hourl, en_hourh : STD_LOGIC;
	SIGNAL show_mode : STD_LOGIC;

	SIGNAL byte : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL byte_r0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL byte_r1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL byte_r2 : STD_LOGIC_VECTOR(7 DOWNTO 0);

	SIGNAL addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL wr : STD_LOGIC;
	SIGNAL ack : STD_LOGIC;
	SIGNAL rdy : STD_LOGIC;
	SIGNAL NextChar : STD_LOGIC;

	SIGNAL cntr : INTEGER RANGE 0 TO 31;

BEGIN

	ConectBtnsDrivers : BtnsDriver
	GENERIC MAP(
		BtnN => 4
	)
	PORT MAP(
		clk => clk,
		rst => rst,
		btn(0) => start_btn,
		btn(1) => stop_btn,
		btn(2) => save_btn,
		btn(3) => show_btn,
		btn_edge(0) => start_btn_edge,
		btn_edge(1) => stop_btn_edge,
		btn_edge(2) => save_btn_edge,
		btn_edge(3) => show_btn_edge
	);

	chrono_controller : chrono_ctrl_fsm
	PORT MAP(
		clk => clk,
		rst => rst,
		start_btn => start_btn_edge,
		stop_btn => stop_btn_edge,
		show_btn => show_btn_edge,
		save_btn => save_btn_edge,
		en_count => en_count,
		stp_cnt => stp_cnt,
		show_mode => show_mode,
		counter_save => counter_save
	);

	chrono_divisor_100hz : div
	GENERIC MAP(DIVIDER => 500000)
	PORT MAP(
		clk => clk,
		rst => rst,
		clk_o => clk_100hz
	);

	en_csecl <= en_count AND clk_100hz;
	en_csech <= en_count AND rco_csecl;
	en_secl <= en_count AND rco_csech;
	en_sech <= en_count AND rco_secl;
	en_minl <= en_count AND rco_sech;
	en_minh <= en_count AND rco_minl;
	en_hourl <= en_count AND rco_minh;
	en_hourh <= en_count AND rco_hourl;

	csecl_cnt : bcdcnt
	PORT MAP(
		clk => clk,
		rst => rst,
		clr => stp_cnt,
		rco => rco_csecl,
		cnt => csecl,
		en => en_csecl
	);

	csech_cnt : bcdcnt
	PORT MAP(
		clk => clk,
		rst => rst,
		clr => stp_cnt,
		rco => rco_csech,
		cnt => csech,
		en => en_csech
	);

	secl_cnt : bcdcnt
	PORT MAP(
		clk => clk,
		rst => rst,
		clr => stp_cnt,
		rco => rco_secl,
		cnt => secl,
		en => en_secl
	);

	sech_cnt : bcdcnt
	GENERIC MAP(MAXCNT => 5)
	PORT MAP(
		clk => clk,
		rst => rst,
		clr => stp_cnt,
		rco => rco_sech,
		cnt => sech,
		en => en_sech
	);

	minl_cnt : bcdcnt
	PORT MAP(
		clk => clk,
		rst => rst,
		clr => stp_cnt,
		rco => rco_minl,
		cnt => minl,
		en => en_minl
	);

	minh_cnt : bcdcnt
	GENERIC MAP(MAXCNT => 5)
	PORT MAP(
		clk => clk,
		rst => rst,
		clr => stp_cnt,
		rco => rco_minh,
		cnt => minh,
		en => en_minh
	);

	hourl_cnt : bcdcnt
	PORT MAP(
		clk => clk,
		rst => rst,
		clr => stp_cnt,
		rco => rco_hourl,
		cnt => hourl,
		en => en_hourl
	);

	hourh_cnt : bcdcnt
	PORT MAP(
		clk => clk,
		rst => rst,
		clr => stp_cnt,
		rco => OPEN,
		cnt => hourh,
		en => en_hourh
	);

	Inst_lcd : lcd
	PORT MAP(
		clk => clk,
		rst => rst,
		byte => byte,
		addr => addr,
		auto => '0',
		wr => wr,
		ack => ack,
		rdy => rdy,
		data => data,
		rs => rs,
		en => en,
		rw => rw,
		sfce => sfce
	);

	Ctr_Lcd : LcdCtrFsm
	PORT MAP(
		clk => clk,
		rst => rst,
		rdy => rdy,
		ack => ack,
		wr => wr,
		NextChar => NextChar
	);

	ram : GenRamDis
	PORT MAP(
		clk => clk,
		WE => save_btn_edge,
		A(3 DOWNTO 0) => addr_sw,
		A(7 DOWNTO 4) => "0000",
		DI(31 DOWNTO 28) => hourh,
		DI(27 DOWNTO 24) => hourl,
		DI(23 DOWNTO 20) => minh,
		DI(19 DOWNTO 16) => minl,
		DI(15 DOWNTO 12) => sech,
		DI(11 DOWNTO 8) => secl,
		DI(7 DOWNTO 4) => csech,
		DI(3 DOWNTO 0) => csecl,
		
		DO(31 DOWNTO 28) => Rhourh,
		DO(27 DOWNTO 24) => Rhourl,
		DO(23 DOWNTO 20) => Rminh,
		DO(19 DOWNTO 16) => Rminl,
		DO(15 DOWNTO 12) => Rsech,
		DO(11 DOWNTO 8) => Rsecl,
		DO(7 DOWNTO 4) => Rcsech,
		DO(3 DOWNTO 0) => Rcsecl
	);

	character_count_logic : PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF rst = '1' THEN
				cntr <= 0;
			ELSE
				IF NextChar = '1' THEN
					cntr <= cntr + 1;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	byte_r0 <= msg(cntr);

	WITH cntr SELECT
		byte_r1 <= "01010100" WHEN 16,
		"01101001" WHEN 17,
		"01101101" WHEN 18,
		"01100101" WHEN 19,
		"00100000" WHEN 20,
		("0011" & hourh) WHEN 21,
		("0011" & hourl) WHEN 22,
		"00111010" WHEN 23,
		("0011" & minh) WHEN 24,
		("0011" & minl) WHEN 25,
		"00111010" WHEN 26,
		("0011" & sech) WHEN 27,
		("0011" & secl) WHEN 28,
		"00111010" WHEN 29,
		("0011" & csech) WHEN 30,
		("0011" & csecl) WHEN 31,
		"00100000" WHEN OTHERS;

	WITH cntr SELECT
		byte_r2 <= "01010100" WHEN 16,
		"01101001" WHEN 17,
		"01101101" WHEN 18,
		"01100101" WHEN 19,
		"00100000" WHEN 20,
		("0011" & Rhourh) WHEN 21,
		("0011" & Rhourl) WHEN 22,
		"00111010" WHEN 23,
		("0011" & Rminh) WHEN 24,
		("0011" & Rminl) WHEN 25,
		"00111010" WHEN 26,
		("0011" & Rsech) WHEN 27,
		("0011" & Rsecl) WHEN 28,
		"00111010" WHEN 29,
		("0011" & Rcsech) WHEN 30,
		("0011" & Rcsecl) WHEN 31,
		"00100000" WHEN OTHERS;

	byte <= byte_r0 WHEN (cntr < 16) ELSE
		byte_r1 WHEN (show_mode = '0') ELSE
		byte_r2;
		
	addr <= CONV_STD_LOGIC_VECTOR(cntr, 5);

END Behavioral;