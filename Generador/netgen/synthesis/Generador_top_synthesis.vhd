--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: Generador_top_synthesis.vhd
-- /___/   /\     Timestamp: Sat Nov 11 21:12:27 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Generador_top -w -dir netgen/synthesis -ofmt vhdl -sim Generador_top.ngc Generador_top_synthesis.vhd 
-- Device	: xc3s1600e-4-fg320
-- Input file	: Generador_top.ngc
-- Output file	: C:\Documents and Settings\lester\Escritorio\TADE\CLases\Generador\netgen\synthesis\Generador_top_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Generador_top
-- Xilinx	: C:\Xilinx\12.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Generador_top is
  port (
    clk : in STD_LOGIC := 'X'; 
    led2 : out STD_LOGIC; 
    rst : in STD_LOGIC := 'X'; 
    DAC_CLR : out STD_LOGIC; 
    DAC_CS : out STD_LOGIC; 
    SPI_SCK : out STD_LOGIC; 
    SPI_MOSI : out STD_LOGIC; 
    led : out STD_LOGIC; 
    sw_freq : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    sw_sign : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end Generador_top;

architecture Structure of Generador_top is
  signal DAC_CLR_OBUF_1 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal SPI_1_DAC_CS_86 : STD_LOGIC; 
  signal SPI_1_DAC_CS_mux0001 : STD_LOGIC; 
  signal SPI_1_SPI_MOSI_88 : STD_LOGIC; 
  signal SPI_1_SPI_MOSI_mux0001 : STD_LOGIC; 
  signal SPI_1_SPI_MOSI_mux0001105_90 : STD_LOGIC; 
  signal SPI_1_SPI_MOSI_mux000121_91 : STD_LOGIC; 
  signal SPI_1_SPI_MOSI_mux000126_92 : STD_LOGIC; 
  signal SPI_1_SPI_MOSI_mux000127_93 : STD_LOGIC; 
  signal SPI_1_SPI_MOSI_mux00014_94 : STD_LOGIC; 
  signal SPI_1_SPI_MOSI_mux000154_95 : STD_LOGIC; 
  signal SPI_1_SPI_MOSI_mux000166_96 : STD_LOGIC; 
  signal SPI_1_SPI_MOSI_mux000171_97 : STD_LOGIC; 
  signal SPI_1_SPI_MOSI_mux000180_98 : STD_LOGIC; 
  signal SPI_1_SPI_MOSI_mux00019_99 : STD_LOGIC; 
  signal SPI_1_SPI_MOSI_mux000192_100 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_10_rt_178 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_11_rt_180 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_12_rt_182 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_13_rt_184 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_14_rt_186 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_15_rt_188 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_16_rt_190 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_17_rt_192 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_18_rt_194 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_19_rt_196 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_1_rt_198 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_20_rt_200 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_21_rt_202 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_22_rt_204 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_23_rt_206 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_24_rt_208 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_25_rt_210 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_26_rt_212 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_27_rt_214 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_28_rt_216 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_29_rt_218 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_2_rt_220 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_30_rt_222 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_3_rt_224 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_4_rt_226 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_5_rt_228 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_6_rt_230 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_7_rt_232 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_8_rt_234 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_cy_9_rt_236 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_0 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_1 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_10 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_11 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_12 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_13 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_14 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_15 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_16 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_17 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_18 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_19 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_2 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_20 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_21 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_22 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_23 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_24 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_25 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_26 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_27 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_28 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_29 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_3 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_30 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_31 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_4 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_5 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_6 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_7 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_8 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_eqn_9 : STD_LOGIC; 
  signal clk_25MHz_1_Mcount_i_cuenta_xor_31_rt_270 : STD_LOGIC; 
  signal clk_25MHz_1_freq_25MHz_271 : STD_LOGIC; 
  signal clk_25MHz_1_freq_25MHz1 : STD_LOGIC; 
  signal clk_25MHz_1_freq_25MHz_not0001 : STD_LOGIC; 
  signal clk_25MHz_1_i_clk_274 : STD_LOGIC; 
  signal clk_25MHz_1_i_cuenta_cmp_eq0000 : STD_LOGIC; 
  signal clk_25MHz_1_led_323 : STD_LOGIC; 
  signal clk_BUFGP_324 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_10_rt_331 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_11_rt_333 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_12_rt_335 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_13_rt_337 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_14_rt_339 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_15_rt_341 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_16_rt_343 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_17_rt_345 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_18_rt_347 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_19_rt_349 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_1_rt_351 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_20_rt_353 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_21_rt_355 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_22_rt_357 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_23_rt_359 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_24_rt_361 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_25_rt_363 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_26_rt_365 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_27_rt_367 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_28_rt_369 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_29_rt_371 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_2_rt_373 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_30_rt_375 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_3_rt_377 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_4_rt_379 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_5_rt_381 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_6_rt_383 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_7_rt_385 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_8_rt_387 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_cy_9_rt_389 : STD_LOGIC; 
  signal frequ_1_Madd_i_cuenta_share0000_xor_31_rt_391 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_3_392 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_31_393 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_311_394 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_32_395 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_322_396 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_325_397 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_326_398 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_327_399 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_328_400 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_329_401 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_33_402 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_330_403 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_331_404 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_34_405 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_4_406 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_41_407 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_411_408 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_42_409 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_422_410 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_425_411 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_426_412 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_427_413 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_428_414 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_429_415 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_43_416 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_430_417 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_431_418 : STD_LOGIC; 
  signal frequ_1_Mmux_i_cuenta_mux0001_44_419 : STD_LOGIC; 
  signal frequ_1_N01 : STD_LOGIC; 
  signal frequ_1_freq_421 : STD_LOGIC; 
  signal frequ_1_freq_not0001 : STD_LOGIC; 
  signal frequ_1_i_clk_423 : STD_LOGIC; 
  signal frequ_1_i_clk_mux0001 : STD_LOGIC; 
  signal frequ_1_i_cuenta_cmp_eq0000 : STD_LOGIC; 
  signal frequ_1_i_cuenta_cmp_eq000010_458 : STD_LOGIC; 
  signal frequ_1_i_cuenta_cmp_eq000018_459 : STD_LOGIC; 
  signal frequ_1_i_cuenta_cmp_eq000022_471 : STD_LOGIC; 
  signal frequ_1_i_cuenta_cmp_eq000045_472 : STD_LOGIC; 
  signal frequ_1_i_cuenta_cmp_eq0001 : STD_LOGIC; 
  signal frequ_1_i_cuenta_cmp_eq000112_474 : STD_LOGIC; 
  signal frequ_1_i_cuenta_cmp_eq000126_475 : STD_LOGIC; 
  signal frequ_1_i_cuenta_cmp_eq00013_476 : STD_LOGIC; 
  signal frequ_1_i_cuenta_cmp_eq000140_477 : STD_LOGIC; 
  signal frequ_1_i_cuenta_cmp_eq0002 : STD_LOGIC; 
  signal frequ_1_i_cuenta_cmp_eq000212_479 : STD_LOGIC; 
  signal frequ_1_i_cuenta_cmp_eq000225_480 : STD_LOGIC; 
  signal frequ_1_i_cuenta_cmp_eq00023_481 : STD_LOGIC; 
  signal frequ_1_i_cuenta_cmp_eq000239_482 : STD_LOGIC; 
  signal gen_1_Mrom_cont_rom0000 : STD_LOGIC; 
  signal gen_1_Mrom_cont_rom000010 : STD_LOGIC; 
  signal gen_1_Mrom_cont_rom000011 : STD_LOGIC; 
  signal gen_1_Mrom_cont_rom000012 : STD_LOGIC; 
  signal gen_1_Mrom_cont_rom000013 : STD_LOGIC; 
  signal gen_1_Mrom_cont_rom000014 : STD_LOGIC; 
  signal gen_1_Mrom_cont_rom000015 : STD_LOGIC; 
  signal gen_1_Mrom_cont_rom000016 : STD_LOGIC; 
  signal gen_1_Mrom_cont_rom000017 : STD_LOGIC; 
  signal gen_1_Mrom_cont_rom000018 : STD_LOGIC; 
  signal gen_1_Mrom_cont_rom000019 : STD_LOGIC; 
  signal gen_1_Mrom_cont_rom000023 : STD_LOGIC; 
  signal gen_1_mux10_4_559 : STD_LOGIC; 
  signal gen_1_mux11_3_560 : STD_LOGIC; 
  signal gen_1_mux11_4_561 : STD_LOGIC; 
  signal gen_1_mux1_3_562 : STD_LOGIC; 
  signal gen_1_mux2_3_563 : STD_LOGIC; 
  signal gen_1_mux2_4_564 : STD_LOGIC; 
  signal gen_1_mux3_3_565 : STD_LOGIC; 
  signal gen_1_mux3_4_566 : STD_LOGIC; 
  signal gen_1_mux4_3_567 : STD_LOGIC; 
  signal gen_1_mux4_4_568 : STD_LOGIC; 
  signal gen_1_mux5_3_569 : STD_LOGIC; 
  signal gen_1_mux5_4_570 : STD_LOGIC; 
  signal gen_1_mux6_3_571 : STD_LOGIC; 
  signal gen_1_mux6_4_572 : STD_LOGIC; 
  signal gen_1_mux7_3_573 : STD_LOGIC; 
  signal gen_1_mux7_4_574 : STD_LOGIC; 
  signal gen_1_mux8_3_575 : STD_LOGIC; 
  signal gen_1_mux8_4_576 : STD_LOGIC; 
  signal gen_1_mux9_3_577 : STD_LOGIC; 
  signal gen_1_mux9_4_578 : STD_LOGIC; 
  signal gen_1_mux_3_579 : STD_LOGIC; 
  signal gen_1_mux_4_580 : STD_LOGIC; 
  signal rst_IBUF_608 : STD_LOGIC; 
  signal rst_IBUF1 : STD_LOGIC; 
  signal sw_freq_0_IBUF_612 : STD_LOGIC; 
  signal sw_freq_1_IBUF_613 : STD_LOGIC; 
  signal sw_sign_0_IBUF_616 : STD_LOGIC; 
  signal sw_sign_1_IBUF_617 : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal SPI_1_dat_presente : STD_LOGIC_VECTOR ( 35 downto 0 ); 
  signal SPI_1_dat_siguiente : STD_LOGIC_VECTOR ( 35 downto 0 ); 
  signal clk_25MHz_1_Mcount_i_cuenta_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal clk_25MHz_1_Mcount_i_cuenta_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal clk_25MHz_1_i_cuenta : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal contador_1_contador : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal frequ_1_Madd_i_cuenta_share0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal frequ_1_Madd_i_cuenta_share0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal frequ_1_i_cuenta : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal frequ_1_i_cuenta_cmp_eq00001_wg_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal frequ_1_i_cuenta_cmp_eq00001_wg_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal frequ_1_i_cuenta_mux0001 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal frequ_1_i_cuenta_share0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal gen_1_sign : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal gen_1_sign_mux0001 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  clk_25MHz_1_freq_25MHz : FDC
    port map (
      C => clk_25MHz_1_i_clk_274,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_freq_25MHz_not0001,
      Q => clk_25MHz_1_freq_25MHz1
    );
  clk_25MHz_1_i_clk : FDE
    port map (
      C => clk_BUFGP_324,
      CE => DAC_CLR_OBUF_1,
      D => clk_25MHz_1_i_cuenta_cmp_eq0000,
      Q => clk_25MHz_1_i_clk_274
    );
  clk_25MHz_1_led : FDP
    port map (
      C => clk_BUFGP_324,
      D => N0,
      PRE => rst_IBUF1,
      Q => clk_25MHz_1_led_323
    );
  clk_25MHz_1_i_cuenta_0 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_0,
      Q => clk_25MHz_1_i_cuenta(0)
    );
  clk_25MHz_1_i_cuenta_1 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_1,
      Q => clk_25MHz_1_i_cuenta(1)
    );
  clk_25MHz_1_i_cuenta_2 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_2,
      Q => clk_25MHz_1_i_cuenta(2)
    );
  clk_25MHz_1_i_cuenta_3 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_3,
      Q => clk_25MHz_1_i_cuenta(3)
    );
  clk_25MHz_1_i_cuenta_4 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_4,
      Q => clk_25MHz_1_i_cuenta(4)
    );
  clk_25MHz_1_i_cuenta_5 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_5,
      Q => clk_25MHz_1_i_cuenta(5)
    );
  clk_25MHz_1_i_cuenta_6 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_6,
      Q => clk_25MHz_1_i_cuenta(6)
    );
  clk_25MHz_1_i_cuenta_7 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_7,
      Q => clk_25MHz_1_i_cuenta(7)
    );
  clk_25MHz_1_i_cuenta_8 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_8,
      Q => clk_25MHz_1_i_cuenta(8)
    );
  clk_25MHz_1_i_cuenta_9 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_9,
      Q => clk_25MHz_1_i_cuenta(9)
    );
  clk_25MHz_1_i_cuenta_10 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_10,
      Q => clk_25MHz_1_i_cuenta(10)
    );
  clk_25MHz_1_i_cuenta_11 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_11,
      Q => clk_25MHz_1_i_cuenta(11)
    );
  clk_25MHz_1_i_cuenta_12 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_12,
      Q => clk_25MHz_1_i_cuenta(12)
    );
  clk_25MHz_1_i_cuenta_13 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_13,
      Q => clk_25MHz_1_i_cuenta(13)
    );
  clk_25MHz_1_i_cuenta_14 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_14,
      Q => clk_25MHz_1_i_cuenta(14)
    );
  clk_25MHz_1_i_cuenta_15 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_15,
      Q => clk_25MHz_1_i_cuenta(15)
    );
  clk_25MHz_1_i_cuenta_16 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_16,
      Q => clk_25MHz_1_i_cuenta(16)
    );
  clk_25MHz_1_i_cuenta_17 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_17,
      Q => clk_25MHz_1_i_cuenta(17)
    );
  clk_25MHz_1_i_cuenta_18 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_18,
      Q => clk_25MHz_1_i_cuenta(18)
    );
  clk_25MHz_1_i_cuenta_19 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_19,
      Q => clk_25MHz_1_i_cuenta(19)
    );
  clk_25MHz_1_i_cuenta_20 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_20,
      Q => clk_25MHz_1_i_cuenta(20)
    );
  clk_25MHz_1_i_cuenta_21 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_21,
      Q => clk_25MHz_1_i_cuenta(21)
    );
  clk_25MHz_1_i_cuenta_22 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_22,
      Q => clk_25MHz_1_i_cuenta(22)
    );
  clk_25MHz_1_i_cuenta_23 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_23,
      Q => clk_25MHz_1_i_cuenta(23)
    );
  clk_25MHz_1_i_cuenta_24 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_24,
      Q => clk_25MHz_1_i_cuenta(24)
    );
  clk_25MHz_1_i_cuenta_25 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_25,
      Q => clk_25MHz_1_i_cuenta(25)
    );
  clk_25MHz_1_i_cuenta_26 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_26,
      Q => clk_25MHz_1_i_cuenta(26)
    );
  clk_25MHz_1_i_cuenta_27 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_27,
      Q => clk_25MHz_1_i_cuenta(27)
    );
  clk_25MHz_1_i_cuenta_28 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_28,
      Q => clk_25MHz_1_i_cuenta(28)
    );
  clk_25MHz_1_i_cuenta_29 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_29,
      Q => clk_25MHz_1_i_cuenta(29)
    );
  clk_25MHz_1_i_cuenta_30 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_30,
      Q => clk_25MHz_1_i_cuenta(30)
    );
  clk_25MHz_1_i_cuenta_31 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => clk_25MHz_1_Mcount_i_cuenta_eqn_31,
      Q => clk_25MHz_1_i_cuenta(31)
    );
  contador_1_contador_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => Result_0_1,
      Q => contador_1_contador(0)
    );
  contador_1_contador_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => Result_1_1,
      Q => contador_1_contador(1)
    );
  contador_1_contador_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => Result_2_1,
      Q => contador_1_contador(2)
    );
  contador_1_contador_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => Result_3_1,
      Q => contador_1_contador(3)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => clk_25MHz_1_Mcount_i_cuenta_lut(0),
      O => clk_25MHz_1_Mcount_i_cuenta_cy(0)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => clk_25MHz_1_Mcount_i_cuenta_lut(0),
      O => Result(0)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_1_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(0),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_1_rt_198,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(1)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_1_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(0),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_1_rt_198,
      O => Result(1)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_2_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(1),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_2_rt_220,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(2)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_2_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(1),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_2_rt_220,
      O => Result(2)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_3_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(2),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_3_rt_224,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(3)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_3_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(2),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_3_rt_224,
      O => Result(3)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_4_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(3),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_4_rt_226,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(4)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_4_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(3),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_4_rt_226,
      O => Result(4)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_5_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(4),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_5_rt_228,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(5)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_5_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(4),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_5_rt_228,
      O => Result(5)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_6_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(5),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_6_rt_230,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(6)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_6_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(5),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_6_rt_230,
      O => Result(6)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_7_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(6),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_7_rt_232,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(7)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_7_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(6),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_7_rt_232,
      O => Result(7)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_8_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(7),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_8_rt_234,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(8)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_8_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(7),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_8_rt_234,
      O => Result(8)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_9_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(8),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_9_rt_236,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(9)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_9_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(8),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_9_rt_236,
      O => Result(9)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_10_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(9),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_10_rt_178,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(10)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_10_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(9),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_10_rt_178,
      O => Result(10)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_11_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(10),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_11_rt_180,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(11)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_11_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(10),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_11_rt_180,
      O => Result(11)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_12_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(11),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_12_rt_182,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(12)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_12_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(11),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_12_rt_182,
      O => Result(12)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_13_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(12),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_13_rt_184,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(13)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_13_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(12),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_13_rt_184,
      O => Result(13)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_14_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(13),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_14_rt_186,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(14)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_14_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(13),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_14_rt_186,
      O => Result(14)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_15_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(14),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_15_rt_188,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(15)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_15_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(14),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_15_rt_188,
      O => Result(15)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_16_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(15),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_16_rt_190,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(16)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_16_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(15),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_16_rt_190,
      O => Result(16)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_17_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(16),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_17_rt_192,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(17)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_17_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(16),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_17_rt_192,
      O => Result(17)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_18_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(17),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_18_rt_194,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(18)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_18_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(17),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_18_rt_194,
      O => Result(18)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_19_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(18),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_19_rt_196,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(19)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_19_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(18),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_19_rt_196,
      O => Result(19)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_20_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(19),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_20_rt_200,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(20)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_20_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(19),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_20_rt_200,
      O => Result(20)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_21_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(20),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_21_rt_202,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(21)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_21_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(20),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_21_rt_202,
      O => Result(21)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_22_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(21),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_22_rt_204,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(22)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_22_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(21),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_22_rt_204,
      O => Result(22)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_23_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(22),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_23_rt_206,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(23)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_23_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(22),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_23_rt_206,
      O => Result(23)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_24_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(23),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_24_rt_208,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(24)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_24_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(23),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_24_rt_208,
      O => Result(24)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_25_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(24),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_25_rt_210,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(25)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_25_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(24),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_25_rt_210,
      O => Result(25)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_26_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(25),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_26_rt_212,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(26)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_26_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(25),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_26_rt_212,
      O => Result(26)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_27_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(26),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_27_rt_214,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(27)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_27_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(26),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_27_rt_214,
      O => Result(27)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_28_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(27),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_28_rt_216,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(28)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_28_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(27),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_28_rt_216,
      O => Result(28)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_29_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(28),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_29_rt_218,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(29)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_29_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(28),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_29_rt_218,
      O => Result(29)
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_30_Q : MUXCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(29),
      DI => N0,
      S => clk_25MHz_1_Mcount_i_cuenta_cy_30_rt_222,
      O => clk_25MHz_1_Mcount_i_cuenta_cy(30)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_30_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(29),
      LI => clk_25MHz_1_Mcount_i_cuenta_cy_30_rt_222,
      O => Result(30)
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_31_Q : XORCY
    port map (
      CI => clk_25MHz_1_Mcount_i_cuenta_cy(30),
      LI => clk_25MHz_1_Mcount_i_cuenta_xor_31_rt_270,
      O => Result(31)
    );
  gen_1_mux9_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom0000,
      I2 => gen_1_sign(7),
      O => gen_1_mux9_3_577
    );
  gen_1_mux9_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom000019,
      I2 => contador_1_contador(3),
      O => gen_1_mux9_4_578
    );
  gen_1_mux9_2_f5 : MUXF5
    port map (
      I0 => gen_1_mux9_4_578,
      I1 => gen_1_mux9_3_577,
      S => sw_sign_1_IBUF_617,
      O => gen_1_sign_mux0001(4)
    );
  gen_1_mux11_2_f5 : MUXF5
    port map (
      I0 => gen_1_mux11_4_561,
      I1 => gen_1_mux11_3_560,
      S => sw_sign_1_IBUF_617,
      O => gen_1_sign_mux0001(2)
    );
  gen_1_mux7_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom0000,
      I2 => gen_1_sign(5),
      O => gen_1_mux7_3_573
    );
  gen_1_mux7_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom000017,
      I2 => contador_1_contador(3),
      O => gen_1_mux7_4_574
    );
  gen_1_mux7_2_f5 : MUXF5
    port map (
      I0 => gen_1_mux7_4_574,
      I1 => gen_1_mux7_3_573,
      S => sw_sign_1_IBUF_617,
      O => gen_1_sign_mux0001(6)
    );
  gen_1_mux6_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom0000,
      I2 => gen_1_sign(4),
      O => gen_1_mux6_3_571
    );
  gen_1_mux6_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom000016,
      I2 => contador_1_contador(3),
      O => gen_1_mux6_4_572
    );
  gen_1_mux6_2_f5 : MUXF5
    port map (
      I0 => gen_1_mux6_4_572,
      I1 => gen_1_mux6_3_571,
      S => sw_sign_1_IBUF_617,
      O => gen_1_sign_mux0001(7)
    );
  gen_1_mux8_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom0000,
      I2 => gen_1_sign(6),
      O => gen_1_mux8_3_575
    );
  gen_1_mux8_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom000018,
      I2 => contador_1_contador(3),
      O => gen_1_mux8_4_576
    );
  gen_1_mux8_2_f5 : MUXF5
    port map (
      I0 => gen_1_mux8_4_576,
      I1 => gen_1_mux8_3_575,
      S => sw_sign_1_IBUF_617,
      O => gen_1_sign_mux0001(5)
    );
  gen_1_mux4_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom0000,
      I2 => gen_1_sign(2),
      O => gen_1_mux4_3_567
    );
  gen_1_mux4_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom000014,
      I2 => contador_1_contador(3),
      O => gen_1_mux4_4_568
    );
  gen_1_mux4_2_f5 : MUXF5
    port map (
      I0 => gen_1_mux4_4_568,
      I1 => gen_1_mux4_3_567,
      S => sw_sign_1_IBUF_617,
      O => gen_1_sign_mux0001(9)
    );
  gen_1_mux3_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom0000,
      I2 => gen_1_sign(1),
      O => gen_1_mux3_3_565
    );
  gen_1_mux3_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom000013,
      I2 => contador_1_contador(3),
      O => gen_1_mux3_4_566
    );
  gen_1_mux3_2_f5 : MUXF5
    port map (
      I0 => gen_1_mux3_4_566,
      I1 => gen_1_mux3_3_565,
      S => sw_sign_1_IBUF_617,
      O => gen_1_sign_mux0001(10)
    );
  gen_1_mux5_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom0000,
      I2 => gen_1_sign(3),
      O => gen_1_mux5_3_569
    );
  gen_1_mux5_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom000015,
      I2 => contador_1_contador(3),
      O => gen_1_mux5_4_570
    );
  gen_1_mux5_2_f5 : MUXF5
    port map (
      I0 => gen_1_mux5_4_570,
      I1 => gen_1_mux5_3_569,
      S => sw_sign_1_IBUF_617,
      O => gen_1_sign_mux0001(8)
    );
  gen_1_mux1_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom000010,
      I2 => gen_1_sign(10),
      O => gen_1_mux1_3_562
    );
  gen_1_mux1_2_f5 : MUXF5
    port map (
      I0 => gen_1_mux10_4_559,
      I1 => gen_1_mux1_3_562,
      S => sw_sign_1_IBUF_617,
      O => gen_1_sign_mux0001(1)
    );
  gen_1_mux_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom0000,
      I2 => gen_1_sign(0),
      O => gen_1_mux_3_579
    );
  gen_1_mux_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom000012,
      I2 => contador_1_contador(3),
      O => gen_1_mux_4_580
    );
  gen_1_mux_2_f5 : MUXF5
    port map (
      I0 => gen_1_mux_4_580,
      I1 => gen_1_mux_3_579,
      S => sw_sign_1_IBUF_617,
      O => gen_1_sign_mux0001(11)
    );
  gen_1_mux2_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom000011,
      I2 => gen_1_sign(11),
      O => gen_1_mux2_3_563
    );
  gen_1_mux2_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => gen_1_Mrom_cont_rom000023,
      I2 => contador_1_contador(3),
      O => gen_1_mux2_4_564
    );
  gen_1_mux2_2_f5 : MUXF5
    port map (
      I0 => gen_1_mux2_4_564,
      I1 => gen_1_mux2_3_563,
      S => sw_sign_1_IBUF_617,
      O => gen_1_sign_mux0001(0)
    );
  gen_1_sign_11 : FDC
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => gen_1_sign_mux0001(0),
      Q => gen_1_sign(11)
    );
  gen_1_sign_10 : FDC
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => gen_1_sign_mux0001(1),
      Q => gen_1_sign(10)
    );
  gen_1_sign_9 : FDC
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => gen_1_sign_mux0001(2),
      Q => gen_1_sign(9)
    );
  gen_1_sign_8 : FDC
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => gen_1_sign_mux0001(3),
      Q => gen_1_sign(8)
    );
  gen_1_sign_7 : FDC
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => gen_1_sign_mux0001(4),
      Q => gen_1_sign(7)
    );
  gen_1_sign_6 : FDC
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => gen_1_sign_mux0001(5),
      Q => gen_1_sign(6)
    );
  gen_1_sign_5 : FDC
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => gen_1_sign_mux0001(6),
      Q => gen_1_sign(5)
    );
  gen_1_sign_4 : FDC
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => gen_1_sign_mux0001(7),
      Q => gen_1_sign(4)
    );
  gen_1_sign_3 : FDC
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => gen_1_sign_mux0001(8),
      Q => gen_1_sign(3)
    );
  gen_1_sign_2 : FDC
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => gen_1_sign_mux0001(9),
      Q => gen_1_sign(2)
    );
  gen_1_sign_1 : FDC
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => gen_1_sign_mux0001(10),
      Q => gen_1_sign(1)
    );
  gen_1_sign_0 : FDC
    port map (
      C => frequ_1_freq_421,
      CLR => rst_IBUF1,
      D => gen_1_sign_mux0001(11),
      Q => gen_1_sign(0)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_0 : MUXF5
    port map (
      I0 => frequ_1_Mmux_i_cuenta_mux0001_41_407,
      I1 => frequ_1_Mmux_i_cuenta_mux0001_31_393,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(10)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_1 : MUXF5
    port map (
      I0 => frequ_1_Mmux_i_cuenta_mux0001_42_409,
      I1 => frequ_1_Mmux_i_cuenta_mux0001_32_395,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(11)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_2 : MUXF5
    port map (
      I0 => frequ_1_Mmux_i_cuenta_mux0001_43_416,
      I1 => frequ_1_Mmux_i_cuenta_mux0001_33_402,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(12)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_3 : MUXF5
    port map (
      I0 => frequ_1_Mmux_i_cuenta_mux0001_44_419,
      I1 => frequ_1_Mmux_i_cuenta_mux0001_34_405,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(13)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_21 : MUXF5
    port map (
      I0 => frequ_1_Mmux_i_cuenta_mux0001_422_410,
      I1 => frequ_1_Mmux_i_cuenta_mux0001_322_396,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(2)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_25 : MUXF5
    port map (
      I0 => frequ_1_Mmux_i_cuenta_mux0001_426_412,
      I1 => frequ_1_Mmux_i_cuenta_mux0001_326_398,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(4)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_26 : MUXF5
    port map (
      I0 => frequ_1_Mmux_i_cuenta_mux0001_427_413,
      I1 => frequ_1_Mmux_i_cuenta_mux0001_327_399,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(5)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_27 : MUXF5
    port map (
      I0 => frequ_1_Mmux_i_cuenta_mux0001_428_414,
      I1 => frequ_1_Mmux_i_cuenta_mux0001_328_400,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(6)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_28 : MUXF5
    port map (
      I0 => frequ_1_Mmux_i_cuenta_mux0001_429_415,
      I1 => frequ_1_Mmux_i_cuenta_mux0001_329_401,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(7)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_29 : MUXF5
    port map (
      I0 => frequ_1_Mmux_i_cuenta_mux0001_430_417,
      I1 => frequ_1_Mmux_i_cuenta_mux0001_330_403,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(8)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_30 : MUXF5
    port map (
      I0 => frequ_1_Mmux_i_cuenta_mux0001_431_418,
      I1 => frequ_1_Mmux_i_cuenta_mux0001_331_404,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(9)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_31_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(30),
      LI => frequ_1_Madd_i_cuenta_share0000_xor_31_rt_391,
      O => frequ_1_i_cuenta_share0000(31)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_30_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(29),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_30_rt_375,
      O => frequ_1_i_cuenta_share0000(30)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_30_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(29),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_30_rt_375,
      O => frequ_1_Madd_i_cuenta_share0000_cy(30)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_29_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(28),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_29_rt_371,
      O => frequ_1_i_cuenta_share0000(29)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_29_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(28),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_29_rt_371,
      O => frequ_1_Madd_i_cuenta_share0000_cy(29)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_28_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(27),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_28_rt_369,
      O => frequ_1_i_cuenta_share0000(28)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_28_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(27),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_28_rt_369,
      O => frequ_1_Madd_i_cuenta_share0000_cy(28)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_27_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(26),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_27_rt_367,
      O => frequ_1_i_cuenta_share0000(27)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_27_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(26),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_27_rt_367,
      O => frequ_1_Madd_i_cuenta_share0000_cy(27)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_26_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(25),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_26_rt_365,
      O => frequ_1_i_cuenta_share0000(26)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_26_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(25),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_26_rt_365,
      O => frequ_1_Madd_i_cuenta_share0000_cy(26)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_25_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(24),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_25_rt_363,
      O => frequ_1_i_cuenta_share0000(25)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_25_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(24),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_25_rt_363,
      O => frequ_1_Madd_i_cuenta_share0000_cy(25)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_24_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(23),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_24_rt_361,
      O => frequ_1_i_cuenta_share0000(24)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_24_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(23),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_24_rt_361,
      O => frequ_1_Madd_i_cuenta_share0000_cy(24)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_23_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(22),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_23_rt_359,
      O => frequ_1_i_cuenta_share0000(23)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_23_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(22),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_23_rt_359,
      O => frequ_1_Madd_i_cuenta_share0000_cy(23)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_22_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(21),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_22_rt_357,
      O => frequ_1_i_cuenta_share0000(22)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_22_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(21),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_22_rt_357,
      O => frequ_1_Madd_i_cuenta_share0000_cy(22)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_21_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(20),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_21_rt_355,
      O => frequ_1_i_cuenta_share0000(21)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_21_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(20),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_21_rt_355,
      O => frequ_1_Madd_i_cuenta_share0000_cy(21)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_20_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(19),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_20_rt_353,
      O => frequ_1_i_cuenta_share0000(20)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_20_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(19),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_20_rt_353,
      O => frequ_1_Madd_i_cuenta_share0000_cy(20)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_19_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(18),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_19_rt_349,
      O => frequ_1_i_cuenta_share0000(19)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_19_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(18),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_19_rt_349,
      O => frequ_1_Madd_i_cuenta_share0000_cy(19)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_18_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(17),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_18_rt_347,
      O => frequ_1_i_cuenta_share0000(18)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_18_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(17),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_18_rt_347,
      O => frequ_1_Madd_i_cuenta_share0000_cy(18)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_17_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(16),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_17_rt_345,
      O => frequ_1_i_cuenta_share0000(17)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_17_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(16),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_17_rt_345,
      O => frequ_1_Madd_i_cuenta_share0000_cy(17)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_16_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(15),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_16_rt_343,
      O => frequ_1_i_cuenta_share0000(16)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_16_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(15),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_16_rt_343,
      O => frequ_1_Madd_i_cuenta_share0000_cy(16)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_15_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(14),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_15_rt_341,
      O => frequ_1_i_cuenta_share0000(15)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_15_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(14),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_15_rt_341,
      O => frequ_1_Madd_i_cuenta_share0000_cy(15)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_14_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(13),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_14_rt_339,
      O => frequ_1_i_cuenta_share0000(14)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_14_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(13),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_14_rt_339,
      O => frequ_1_Madd_i_cuenta_share0000_cy(14)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_13_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(12),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_13_rt_337,
      O => frequ_1_i_cuenta_share0000(13)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_13_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(12),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_13_rt_337,
      O => frequ_1_Madd_i_cuenta_share0000_cy(13)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_12_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(11),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_12_rt_335,
      O => frequ_1_i_cuenta_share0000(12)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_12_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(11),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_12_rt_335,
      O => frequ_1_Madd_i_cuenta_share0000_cy(12)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_11_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(10),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_11_rt_333,
      O => frequ_1_i_cuenta_share0000(11)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_11_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(10),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_11_rt_333,
      O => frequ_1_Madd_i_cuenta_share0000_cy(11)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_10_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(9),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_10_rt_331,
      O => frequ_1_i_cuenta_share0000(10)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_10_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(9),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_10_rt_331,
      O => frequ_1_Madd_i_cuenta_share0000_cy(10)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_9_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(8),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_9_rt_389,
      O => frequ_1_i_cuenta_share0000(9)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_9_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(8),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_9_rt_389,
      O => frequ_1_Madd_i_cuenta_share0000_cy(9)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_8_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(7),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_8_rt_387,
      O => frequ_1_i_cuenta_share0000(8)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_8_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(7),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_8_rt_387,
      O => frequ_1_Madd_i_cuenta_share0000_cy(8)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_7_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(6),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_7_rt_385,
      O => frequ_1_i_cuenta_share0000(7)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_7_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(6),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_7_rt_385,
      O => frequ_1_Madd_i_cuenta_share0000_cy(7)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_6_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(5),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_6_rt_383,
      O => frequ_1_i_cuenta_share0000(6)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_6_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(5),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_6_rt_383,
      O => frequ_1_Madd_i_cuenta_share0000_cy(6)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_5_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(4),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_5_rt_381,
      O => frequ_1_i_cuenta_share0000(5)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_5_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(4),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_5_rt_381,
      O => frequ_1_Madd_i_cuenta_share0000_cy(5)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_4_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(3),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_4_rt_379,
      O => frequ_1_i_cuenta_share0000(4)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_4_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(3),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_4_rt_379,
      O => frequ_1_Madd_i_cuenta_share0000_cy(4)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_3_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(2),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_3_rt_377,
      O => frequ_1_i_cuenta_share0000(3)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_3_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(2),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_3_rt_377,
      O => frequ_1_Madd_i_cuenta_share0000_cy(3)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_2_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(1),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_2_rt_373,
      O => frequ_1_i_cuenta_share0000(2)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_2_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(1),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_2_rt_373,
      O => frequ_1_Madd_i_cuenta_share0000_cy(2)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_1_Q : XORCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(0),
      LI => frequ_1_Madd_i_cuenta_share0000_cy_1_rt_351,
      O => frequ_1_i_cuenta_share0000(1)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_1_Q : MUXCY
    port map (
      CI => frequ_1_Madd_i_cuenta_share0000_cy(0),
      DI => N0,
      S => frequ_1_Madd_i_cuenta_share0000_cy_1_rt_351,
      O => frequ_1_Madd_i_cuenta_share0000_cy(1)
    );
  frequ_1_Madd_i_cuenta_share0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => frequ_1_Madd_i_cuenta_share0000_lut(0),
      O => frequ_1_i_cuenta_share0000(0)
    );
  frequ_1_Madd_i_cuenta_share0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => frequ_1_Madd_i_cuenta_share0000_lut(0),
      O => frequ_1_Madd_i_cuenta_share0000_cy(0)
    );
  frequ_1_freq : FDC
    port map (
      C => frequ_1_i_clk_423,
      CLR => rst_IBUF1,
      D => frequ_1_freq_not0001,
      Q => frequ_1_freq_421
    );
  frequ_1_i_cuenta_31 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(0),
      Q => frequ_1_i_cuenta(31)
    );
  frequ_1_i_cuenta_30 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(1),
      Q => frequ_1_i_cuenta(30)
    );
  frequ_1_i_cuenta_29 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(2),
      Q => frequ_1_i_cuenta(29)
    );
  frequ_1_i_cuenta_28 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(3),
      Q => frequ_1_i_cuenta(28)
    );
  frequ_1_i_cuenta_27 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(4),
      Q => frequ_1_i_cuenta(27)
    );
  frequ_1_i_cuenta_26 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(5),
      Q => frequ_1_i_cuenta(26)
    );
  frequ_1_i_cuenta_25 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(6),
      Q => frequ_1_i_cuenta(25)
    );
  frequ_1_i_cuenta_24 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(7),
      Q => frequ_1_i_cuenta(24)
    );
  frequ_1_i_cuenta_23 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(8),
      Q => frequ_1_i_cuenta(23)
    );
  frequ_1_i_cuenta_22 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(9),
      Q => frequ_1_i_cuenta(22)
    );
  frequ_1_i_cuenta_21 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(10),
      Q => frequ_1_i_cuenta(21)
    );
  frequ_1_i_cuenta_20 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(11),
      Q => frequ_1_i_cuenta(20)
    );
  frequ_1_i_cuenta_19 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(12),
      Q => frequ_1_i_cuenta(19)
    );
  frequ_1_i_cuenta_18 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(13),
      Q => frequ_1_i_cuenta(18)
    );
  frequ_1_i_cuenta_17 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(14),
      Q => frequ_1_i_cuenta(17)
    );
  frequ_1_i_cuenta_16 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(15),
      Q => frequ_1_i_cuenta(16)
    );
  frequ_1_i_cuenta_15 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(16),
      Q => frequ_1_i_cuenta(15)
    );
  frequ_1_i_cuenta_14 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(17),
      Q => frequ_1_i_cuenta(14)
    );
  frequ_1_i_cuenta_13 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(18),
      Q => frequ_1_i_cuenta(13)
    );
  frequ_1_i_cuenta_12 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(19),
      Q => frequ_1_i_cuenta(12)
    );
  frequ_1_i_cuenta_11 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(20),
      Q => frequ_1_i_cuenta(11)
    );
  frequ_1_i_cuenta_10 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(21),
      Q => frequ_1_i_cuenta(10)
    );
  frequ_1_i_cuenta_9 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(22),
      Q => frequ_1_i_cuenta(9)
    );
  frequ_1_i_cuenta_8 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(23),
      Q => frequ_1_i_cuenta(8)
    );
  frequ_1_i_cuenta_7 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(24),
      Q => frequ_1_i_cuenta(7)
    );
  frequ_1_i_cuenta_6 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(25),
      Q => frequ_1_i_cuenta(6)
    );
  frequ_1_i_cuenta_5 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(26),
      Q => frequ_1_i_cuenta(5)
    );
  frequ_1_i_cuenta_4 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(27),
      Q => frequ_1_i_cuenta(4)
    );
  frequ_1_i_cuenta_3 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(28),
      Q => frequ_1_i_cuenta(3)
    );
  frequ_1_i_cuenta_2 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(29),
      Q => frequ_1_i_cuenta(2)
    );
  frequ_1_i_cuenta_1 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(30),
      Q => frequ_1_i_cuenta(1)
    );
  frequ_1_i_cuenta_0 : FDC
    port map (
      C => clk_BUFGP_324,
      CLR => rst_IBUF1,
      D => frequ_1_i_cuenta_mux0001(31),
      Q => frequ_1_i_cuenta(0)
    );
  frequ_1_i_clk : FDE
    port map (
      C => clk_BUFGP_324,
      CE => DAC_CLR_OBUF_1,
      D => frequ_1_i_clk_mux0001,
      Q => frequ_1_i_clk_423
    );
  SPI_1_dat_siguiente_35 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(34),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(35)
    );
  SPI_1_dat_siguiente_34 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(33),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(34)
    );
  SPI_1_dat_siguiente_33 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(32),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(33)
    );
  SPI_1_dat_siguiente_32 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(31),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(32)
    );
  SPI_1_dat_siguiente_31 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(30),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(31)
    );
  SPI_1_dat_siguiente_30 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(29),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(30)
    );
  SPI_1_dat_siguiente_29 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(28),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(29)
    );
  SPI_1_dat_siguiente_28 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(27),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(28)
    );
  SPI_1_dat_siguiente_27 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(26),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(27)
    );
  SPI_1_dat_siguiente_26 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(25),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(26)
    );
  SPI_1_dat_siguiente_25 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(24),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(25)
    );
  SPI_1_dat_siguiente_24 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(23),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(24)
    );
  SPI_1_dat_siguiente_23 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(22),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(23)
    );
  SPI_1_dat_siguiente_22 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(21),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(22)
    );
  SPI_1_dat_siguiente_21 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(20),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(21)
    );
  SPI_1_dat_siguiente_20 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(19),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(20)
    );
  SPI_1_dat_siguiente_19 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(18),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(19)
    );
  SPI_1_dat_siguiente_18 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(17),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(18)
    );
  SPI_1_dat_siguiente_17 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(16),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(17)
    );
  SPI_1_dat_siguiente_16 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(15),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(16)
    );
  SPI_1_dat_siguiente_15 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(14),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(15)
    );
  SPI_1_dat_siguiente_14 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(13),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(14)
    );
  SPI_1_dat_siguiente_13 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(12),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(13)
    );
  SPI_1_dat_siguiente_12 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(11),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(12)
    );
  SPI_1_dat_siguiente_11 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(10),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(11)
    );
  SPI_1_dat_siguiente_10 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(9),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(10)
    );
  SPI_1_dat_siguiente_9 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(8),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(9)
    );
  SPI_1_dat_siguiente_8 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(7),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(8)
    );
  SPI_1_dat_siguiente_7 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(6),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(7)
    );
  SPI_1_dat_siguiente_6 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(5),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(6)
    );
  SPI_1_dat_siguiente_5 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(4),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(5)
    );
  SPI_1_dat_siguiente_4 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(3),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(4)
    );
  SPI_1_dat_siguiente_3 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(2),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(3)
    );
  SPI_1_dat_siguiente_2 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(1),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(2)
    );
  SPI_1_dat_siguiente_1 : LD_1
    generic map(
      INIT => '0'
    )
    port map (
      D => SPI_1_dat_presente(0),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(1)
    );
  SPI_1_dat_siguiente_0 : LD_1
    generic map(
      INIT => '1'
    )
    port map (
      D => SPI_1_dat_presente(35),
      G => rst_IBUF_608,
      Q => SPI_1_dat_siguiente(0)
    );
  SPI_1_DAC_CS : LD_1
    port map (
      D => SPI_1_DAC_CS_mux0001,
      G => rst_IBUF_608,
      Q => SPI_1_DAC_CS_86
    );
  SPI_1_SPI_MOSI : LD_1
    port map (
      D => SPI_1_SPI_MOSI_mux0001,
      G => rst_IBUF_608,
      Q => SPI_1_SPI_MOSI_88
    );
  SPI_1_dat_presente_35 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(35),
      Q => SPI_1_dat_presente(35)
    );
  SPI_1_dat_presente_34 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(34),
      Q => SPI_1_dat_presente(34)
    );
  SPI_1_dat_presente_33 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(33),
      Q => SPI_1_dat_presente(33)
    );
  SPI_1_dat_presente_32 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(32),
      Q => SPI_1_dat_presente(32)
    );
  SPI_1_dat_presente_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(31),
      Q => SPI_1_dat_presente(31)
    );
  SPI_1_dat_presente_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(30),
      Q => SPI_1_dat_presente(30)
    );
  SPI_1_dat_presente_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(29),
      Q => SPI_1_dat_presente(29)
    );
  SPI_1_dat_presente_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(28),
      Q => SPI_1_dat_presente(28)
    );
  SPI_1_dat_presente_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(27),
      Q => SPI_1_dat_presente(27)
    );
  SPI_1_dat_presente_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(26),
      Q => SPI_1_dat_presente(26)
    );
  SPI_1_dat_presente_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(25),
      Q => SPI_1_dat_presente(25)
    );
  SPI_1_dat_presente_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(24),
      Q => SPI_1_dat_presente(24)
    );
  SPI_1_dat_presente_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(23),
      Q => SPI_1_dat_presente(23)
    );
  SPI_1_dat_presente_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(22),
      Q => SPI_1_dat_presente(22)
    );
  SPI_1_dat_presente_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(21),
      Q => SPI_1_dat_presente(21)
    );
  SPI_1_dat_presente_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(20),
      Q => SPI_1_dat_presente(20)
    );
  SPI_1_dat_presente_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(19),
      Q => SPI_1_dat_presente(19)
    );
  SPI_1_dat_presente_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(18),
      Q => SPI_1_dat_presente(18)
    );
  SPI_1_dat_presente_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(17),
      Q => SPI_1_dat_presente(17)
    );
  SPI_1_dat_presente_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(16),
      Q => SPI_1_dat_presente(16)
    );
  SPI_1_dat_presente_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(15),
      Q => SPI_1_dat_presente(15)
    );
  SPI_1_dat_presente_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(14),
      Q => SPI_1_dat_presente(14)
    );
  SPI_1_dat_presente_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(13),
      Q => SPI_1_dat_presente(13)
    );
  SPI_1_dat_presente_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(12),
      Q => SPI_1_dat_presente(12)
    );
  SPI_1_dat_presente_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(11),
      Q => SPI_1_dat_presente(11)
    );
  SPI_1_dat_presente_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(10),
      Q => SPI_1_dat_presente(10)
    );
  SPI_1_dat_presente_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(9),
      Q => SPI_1_dat_presente(9)
    );
  SPI_1_dat_presente_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(8),
      Q => SPI_1_dat_presente(8)
    );
  SPI_1_dat_presente_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(7),
      Q => SPI_1_dat_presente(7)
    );
  SPI_1_dat_presente_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(6),
      Q => SPI_1_dat_presente(6)
    );
  SPI_1_dat_presente_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(5),
      Q => SPI_1_dat_presente(5)
    );
  SPI_1_dat_presente_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(4),
      Q => SPI_1_dat_presente(4)
    );
  SPI_1_dat_presente_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(3),
      Q => SPI_1_dat_presente(3)
    );
  SPI_1_dat_presente_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(2),
      Q => SPI_1_dat_presente(2)
    );
  SPI_1_dat_presente_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(1),
      Q => SPI_1_dat_presente(1)
    );
  SPI_1_dat_presente_0 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_25MHz_1_freq_25MHz_271,
      D => SPI_1_dat_siguiente(0),
      Q => SPI_1_dat_presente(0)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(8),
      I1 => clk_25MHz_1_i_cuenta(9),
      I2 => clk_25MHz_1_i_cuenta(7),
      I3 => clk_25MHz_1_i_cuenta(10),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(0)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(0),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy(0)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(11),
      I1 => clk_25MHz_1_i_cuenta(12),
      I2 => clk_25MHz_1_i_cuenta(6),
      I3 => clk_25MHz_1_i_cuenta(13),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(1)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(1),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy(1)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(14),
      I1 => clk_25MHz_1_i_cuenta(15),
      I2 => clk_25MHz_1_i_cuenta(5),
      I3 => clk_25MHz_1_i_cuenta(16),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(2)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(2),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy(2)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(17),
      I1 => clk_25MHz_1_i_cuenta(18),
      I2 => clk_25MHz_1_i_cuenta(4),
      I3 => clk_25MHz_1_i_cuenta(19),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(3)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(3),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy(3)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(20),
      I1 => clk_25MHz_1_i_cuenta(21),
      I2 => clk_25MHz_1_i_cuenta(3),
      I3 => clk_25MHz_1_i_cuenta(22),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(4)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(4),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy(4)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(23),
      I1 => clk_25MHz_1_i_cuenta(24),
      I2 => clk_25MHz_1_i_cuenta(2),
      I3 => clk_25MHz_1_i_cuenta(25),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(5)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(5),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy(5)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(26),
      I1 => clk_25MHz_1_i_cuenta(27),
      I2 => clk_25MHz_1_i_cuenta(1),
      I3 => clk_25MHz_1_i_cuenta(28),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(6)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(6),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy(6)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(29),
      I1 => clk_25MHz_1_i_cuenta(30),
      I2 => clk_25MHz_1_i_cuenta(0),
      I3 => clk_25MHz_1_i_cuenta(31),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(7)
    );
  clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => clk_25MHz_1_i_cuenta_cmp_eq0000_wg_lut(7),
      O => clk_25MHz_1_i_cuenta_cmp_eq0000
    );
  frequ_1_i_cuenta_cmp_eq00001_wg_lut_0_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => frequ_1_i_cuenta(22),
      I1 => frequ_1_i_cuenta(26),
      I2 => frequ_1_i_cuenta(24),
      O => frequ_1_i_cuenta_cmp_eq00001_wg_lut(0)
    );
  frequ_1_i_cuenta_cmp_eq00001_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => frequ_1_i_cuenta_cmp_eq00001_wg_lut(0),
      O => frequ_1_i_cuenta_cmp_eq00001_wg_cy(0)
    );
  frequ_1_i_cuenta_cmp_eq00001_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => frequ_1_i_cuenta(23),
      I1 => frequ_1_i_cuenta(19),
      I2 => frequ_1_i_cuenta(27),
      I3 => frequ_1_i_cuenta(21),
      O => frequ_1_i_cuenta_cmp_eq00001_wg_lut(1)
    );
  frequ_1_i_cuenta_cmp_eq00001_wg_cy_1_Q : MUXCY
    port map (
      CI => frequ_1_i_cuenta_cmp_eq00001_wg_cy(0),
      DI => N0,
      S => frequ_1_i_cuenta_cmp_eq00001_wg_lut(1),
      O => frequ_1_i_cuenta_cmp_eq00001_wg_cy(1)
    );
  frequ_1_i_cuenta_cmp_eq00001_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => frequ_1_i_cuenta(20),
      I1 => frequ_1_i_cuenta(15),
      I2 => frequ_1_i_cuenta(25),
      I3 => frequ_1_i_cuenta(18),
      O => frequ_1_i_cuenta_cmp_eq00001_wg_lut(2)
    );
  frequ_1_i_cuenta_cmp_eq00001_wg_cy_2_Q : MUXCY
    port map (
      CI => frequ_1_i_cuenta_cmp_eq00001_wg_cy(1),
      DI => N0,
      S => frequ_1_i_cuenta_cmp_eq00001_wg_lut(2),
      O => frequ_1_i_cuenta_cmp_eq00001_wg_cy(2)
    );
  frequ_1_i_cuenta_cmp_eq00001_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => frequ_1_i_cuenta(17),
      I1 => frequ_1_i_cuenta(29),
      I2 => frequ_1_i_cuenta(8),
      I3 => frequ_1_i_cuenta(16),
      O => frequ_1_i_cuenta_cmp_eq00001_wg_lut(3)
    );
  frequ_1_i_cuenta_cmp_eq00001_wg_cy_3_Q : MUXCY
    port map (
      CI => frequ_1_i_cuenta_cmp_eq00001_wg_cy(2),
      DI => N0,
      S => frequ_1_i_cuenta_cmp_eq00001_wg_lut(3),
      O => frequ_1_i_cuenta_cmp_eq00001_wg_cy(3)
    );
  frequ_1_i_cuenta_cmp_eq00001_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => frequ_1_i_cuenta(10),
      I1 => frequ_1_i_cuenta(1),
      I2 => frequ_1_i_cuenta(7),
      I3 => frequ_1_i_cuenta(30),
      O => frequ_1_i_cuenta_cmp_eq00001_wg_lut(4)
    );
  frequ_1_i_cuenta_cmp_eq00001_wg_cy_4_Q : MUXCY
    port map (
      CI => frequ_1_i_cuenta_cmp_eq00001_wg_cy(3),
      DI => N0,
      S => frequ_1_i_cuenta_cmp_eq00001_wg_lut(4),
      O => frequ_1_i_cuenta_cmp_eq00001_wg_cy(4)
    );
  frequ_1_i_cuenta_cmp_eq00001_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => frequ_1_i_cuenta(4),
      I1 => frequ_1_i_cuenta(31),
      I2 => frequ_1_i_cuenta(28),
      I3 => frequ_1_i_cuenta(0),
      O => frequ_1_i_cuenta_cmp_eq00001_wg_lut(5)
    );
  frequ_1_i_cuenta_cmp_eq00001_wg_cy_5_Q : MUXCY
    port map (
      CI => frequ_1_i_cuenta_cmp_eq00001_wg_cy(4),
      DI => N0,
      S => frequ_1_i_cuenta_cmp_eq00001_wg_lut(5),
      O => frequ_1_N01
    );
  SPI_1_DAC_CS_mux00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => SPI_1_dat_presente(34),
      I1 => SPI_1_dat_presente(35),
      O => SPI_1_DAC_CS_mux0001
    );
  contador_1_Mcount_contador_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => contador_1_contador(1),
      I1 => contador_1_contador(0),
      O => Result_1_1
    );
  contador_1_Mcount_contador_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => contador_1_contador(2),
      I1 => contador_1_contador(1),
      I2 => contador_1_contador(0),
      O => Result_2_1
    );
  contador_1_Mcount_contador_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => contador_1_contador(3),
      I1 => contador_1_contador(1),
      I2 => contador_1_contador(0),
      I3 => contador_1_contador(2),
      O => Result_3_1
    );
  SPI_1_SPI_MOSI_mux00014 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => SPI_1_dat_presente(5),
      I1 => SPI_1_dat_presente(4),
      I2 => SPI_1_dat_presente(3),
      I3 => SPI_1_dat_presente(31),
      O => SPI_1_SPI_MOSI_mux00014_94
    );
  SPI_1_SPI_MOSI_mux00019 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => SPI_1_dat_presente(30),
      I1 => SPI_1_dat_presente(2),
      I2 => SPI_1_dat_presente(13),
      I3 => SPI_1_dat_presente(12),
      O => SPI_1_SPI_MOSI_mux00019_99
    );
  SPI_1_SPI_MOSI_mux000121 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => SPI_1_dat_presente(29),
      I1 => gen_1_sign(0),
      I2 => SPI_1_dat_presente(28),
      I3 => gen_1_sign(1),
      O => SPI_1_SPI_MOSI_mux000121_91
    );
  SPI_1_SPI_MOSI_mux000126 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => SPI_1_dat_presente(27),
      I1 => gen_1_sign(2),
      I2 => SPI_1_dat_presente(26),
      I3 => gen_1_sign(3),
      O => SPI_1_SPI_MOSI_mux000126_92
    );
  SPI_1_SPI_MOSI_mux000127 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => SPI_1_SPI_MOSI_mux000121_91,
      I1 => SPI_1_SPI_MOSI_mux000126_92,
      O => SPI_1_SPI_MOSI_mux000127_93
    );
  SPI_1_SPI_MOSI_mux000154 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => SPI_1_dat_presente(23),
      I1 => gen_1_sign(6),
      I2 => SPI_1_dat_presente(22),
      I3 => gen_1_sign(7),
      O => SPI_1_SPI_MOSI_mux000154_95
    );
  SPI_1_SPI_MOSI_mux000166 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => SPI_1_dat_presente(21),
      I1 => gen_1_sign(8),
      I2 => SPI_1_dat_presente(20),
      I3 => gen_1_sign(9),
      O => SPI_1_SPI_MOSI_mux000166_96
    );
  SPI_1_SPI_MOSI_mux000171 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => SPI_1_dat_presente(19),
      I1 => gen_1_sign(10),
      I2 => SPI_1_dat_presente(18),
      I3 => gen_1_sign(11),
      O => SPI_1_SPI_MOSI_mux000171_97
    );
  SPI_1_SPI_MOSI_mux000192 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => SPI_1_SPI_MOSI_mux00014_94,
      I1 => SPI_1_SPI_MOSI_mux00019_99,
      I2 => SPI_1_SPI_MOSI_mux000127_93,
      I3 => SPI_1_SPI_MOSI_mux000180_98,
      O => SPI_1_SPI_MOSI_mux000192_100
    );
  SPI_1_SPI_MOSI_mux0001105 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => SPI_1_dat_presente(1),
      I1 => SPI_1_dat_presente(0),
      I2 => SPI_1_dat_presente(35),
      I3 => SPI_1_dat_presente(34),
      O => SPI_1_SPI_MOSI_mux0001105_90
    );
  SPI_1_SPI_MOSI_mux0001111 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => SPI_1_SPI_MOSI_mux000192_100,
      I1 => SPI_1_SPI_MOSI_88,
      I2 => SPI_1_SPI_MOSI_mux0001105_90,
      O => SPI_1_SPI_MOSI_mux0001
    );
  gen_1_Mrom_cont_rom00001111 : LUT3
    generic map(
      INIT => X"7E"
    )
    port map (
      I0 => contador_1_contador(3),
      I1 => contador_1_contador(1),
      I2 => contador_1_contador(2),
      O => gen_1_Mrom_cont_rom000011
    );
  gen_1_Mrom_cont_rom0000101 : LUT3
    generic map(
      INIT => X"7E"
    )
    port map (
      I0 => contador_1_contador(3),
      I1 => contador_1_contador(0),
      I2 => contador_1_contador(2),
      O => gen_1_Mrom_cont_rom000010
    );
  gen_1_Mrom_cont_rom0000231 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => contador_1_contador(2),
      I1 => contador_1_contador(3),
      I2 => contador_1_contador(1),
      I3 => contador_1_contador(0),
      O => gen_1_Mrom_cont_rom000023
    );
  gen_1_Mrom_cont_rom00001911 : LUT4
    generic map(
      INIT => X"0301"
    )
    port map (
      I0 => contador_1_contador(1),
      I1 => contador_1_contador(2),
      I2 => contador_1_contador(3),
      I3 => contador_1_contador(0),
      O => gen_1_Mrom_cont_rom000019
    );
  gen_1_Mrom_cont_rom00001721 : LUT4
    generic map(
      INIT => X"0111"
    )
    port map (
      I0 => contador_1_contador(2),
      I1 => contador_1_contador(3),
      I2 => contador_1_contador(0),
      I3 => contador_1_contador(1),
      O => gen_1_Mrom_cont_rom000017
    );
  gen_1_Mrom_cont_rom0000181 : LUT4
    generic map(
      INIT => X"0145"
    )
    port map (
      I0 => contador_1_contador(3),
      I1 => contador_1_contador(0),
      I2 => contador_1_contador(1),
      I3 => contador_1_contador(2),
      O => gen_1_Mrom_cont_rom000018
    );
  gen_1_Mrom_cont_rom0000151 : LUT4
    generic map(
      INIT => X"1455"
    )
    port map (
      I0 => contador_1_contador(3),
      I1 => contador_1_contador(1),
      I2 => contador_1_contador(2),
      I3 => contador_1_contador(0),
      O => gen_1_Mrom_cont_rom000015
    );
  gen_1_Mrom_cont_rom00001411 : LUT4
    generic map(
      INIT => X"5041"
    )
    port map (
      I0 => contador_1_contador(3),
      I1 => contador_1_contador(2),
      I2 => contador_1_contador(0),
      I3 => contador_1_contador(1),
      O => gen_1_Mrom_cont_rom000014
    );
  gen_1_Mrom_cont_rom00001631 : LUT4
    generic map(
      INIT => X"0041"
    )
    port map (
      I0 => contador_1_contador(1),
      I1 => contador_1_contador(0),
      I2 => contador_1_contador(2),
      I3 => contador_1_contador(3),
      O => gen_1_Mrom_cont_rom000016
    );
  gen_1_Mrom_cont_rom00001 : LUT4
    generic map(
      INIT => X"342C"
    )
    port map (
      I0 => contador_1_contador(0),
      I1 => contador_1_contador(3),
      I2 => contador_1_contador(2),
      I3 => contador_1_contador(1),
      O => gen_1_Mrom_cont_rom0000
    );
  gen_1_Mrom_cont_rom00001311 : LUT4
    generic map(
      INIT => X"0157"
    )
    port map (
      I0 => contador_1_contador(3),
      I1 => contador_1_contador(2),
      I2 => contador_1_contador(1),
      I3 => contador_1_contador(0),
      O => gen_1_Mrom_cont_rom000013
    );
  gen_1_Mrom_cont_rom00001221 : LUT4
    generic map(
      INIT => X"ABAD"
    )
    port map (
      I0 => contador_1_contador(3),
      I1 => contador_1_contador(0),
      I2 => contador_1_contador(1),
      I3 => contador_1_contador(2),
      O => gen_1_Mrom_cont_rom000012
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(9),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_9
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(8),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_8
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(7),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_7
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_61 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(6),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_6
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_51 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(5),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_5
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_41 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(4),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_4
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_32 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(3),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_3
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_210 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(2),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_2
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_110 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(1),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_1
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_01 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(0),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_0
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_101 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(10),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_10
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(11),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_11
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_121 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(12),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_12
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(13),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_13
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(14),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_14
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(15),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_15
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_161 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(16),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_16
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_171 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(17),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_17
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_181 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(18),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_18
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_191 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(19),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_19
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_201 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(20),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_20
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_211 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(21),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_21
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_221 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(22),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_22
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_231 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(23),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_23
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_241 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(24),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_24
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_251 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(25),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_25
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_261 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(26),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_26
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_271 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(27),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_27
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_281 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(28),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_28
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_291 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(29),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_29
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_301 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(30),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_30
    );
  clk_25MHz_1_Mcount_i_cuenta_eqn_311 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta_cmp_eq0000,
      I1 => Result(31),
      O => clk_25MHz_1_Mcount_i_cuenta_eqn_31
    );
  frequ_1_i_cuenta_cmp_eq000112 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => frequ_1_i_cuenta(2),
      I1 => frequ_1_i_cuenta(6),
      I2 => frequ_1_i_cuenta(3),
      I3 => frequ_1_i_cuenta_cmp_eq00013_476,
      O => frequ_1_i_cuenta_cmp_eq000112_474
    );
  frequ_1_i_cuenta_cmp_eq000140 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => frequ_1_i_cuenta_cmp_eq000126_475,
      I1 => frequ_1_N01,
      I2 => frequ_1_i_cuenta_cmp_eq000112_474,
      O => frequ_1_i_cuenta_cmp_eq0001
    );
  frequ_1_i_cuenta_cmp_eq000212 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => frequ_1_i_cuenta(12),
      I1 => frequ_1_i_cuenta(2),
      I2 => frequ_1_i_cuenta(13),
      I3 => frequ_1_i_cuenta_cmp_eq00023_481,
      O => frequ_1_i_cuenta_cmp_eq000212_479
    );
  frequ_1_i_cuenta_cmp_eq000239 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => N43,
      I1 => frequ_1_N01,
      I2 => frequ_1_i_cuenta_cmp_eq000212_479,
      O => frequ_1_i_cuenta_cmp_eq0002
    );
  frequ_1_i_cuenta_cmp_eq000010 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => frequ_1_i_cuenta(11),
      I1 => frequ_1_i_cuenta(5),
      I2 => frequ_1_i_cuenta(2),
      I3 => frequ_1_i_cuenta(3),
      O => frequ_1_i_cuenta_cmp_eq000010_458
    );
  frequ_1_i_cuenta_cmp_eq000045 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N45,
      I1 => frequ_1_i_cuenta_cmp_eq000018_459,
      I2 => frequ_1_i_cuenta_cmp_eq000010_458,
      I3 => frequ_1_N01,
      O => frequ_1_i_cuenta_cmp_eq0000
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF1
    );
  sw_freq_1_IBUF : IBUF
    port map (
      I => sw_freq(1),
      O => sw_freq_1_IBUF_613
    );
  sw_freq_0_IBUF : IBUF
    port map (
      I => sw_freq(0),
      O => sw_freq_0_IBUF_612
    );
  sw_sign_1_IBUF : IBUF
    port map (
      I => sw_sign(1),
      O => sw_sign_1_IBUF_617
    );
  sw_sign_0_IBUF : IBUF
    port map (
      I => sw_sign(0),
      O => sw_sign_0_IBUF_616
    );
  led2_OBUF : OBUF
    port map (
      I => DAC_CLR_OBUF_1,
      O => led2
    );
  DAC_CLR_OBUF : OBUF
    port map (
      I => DAC_CLR_OBUF_1,
      O => DAC_CLR
    );
  DAC_CS_OBUF : OBUF
    port map (
      I => SPI_1_DAC_CS_86,
      O => DAC_CS
    );
  SPI_SCK_OBUF : OBUF
    port map (
      I => clk_25MHz_1_freq_25MHz1,
      O => SPI_SCK
    );
  SPI_MOSI_OBUF : OBUF
    port map (
      I => SPI_1_SPI_MOSI_88,
      O => SPI_MOSI
    );
  led_OBUF : OBUF
    port map (
      I => clk_25MHz_1_led_323,
      O => led
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(1),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_1_rt_198
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(2),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_2_rt_220
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(3),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_3_rt_224
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(4),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_4_rt_226
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(5),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_5_rt_228
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(6),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_6_rt_230
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(7),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_7_rt_232
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(8),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_8_rt_234
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(9),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_9_rt_236
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(10),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_10_rt_178
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(11),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_11_rt_180
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(12),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_12_rt_182
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(13),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_13_rt_184
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(14),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_14_rt_186
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(15),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_15_rt_188
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(16),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_16_rt_190
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(17),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_17_rt_192
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(18),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_18_rt_194
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(19),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_19_rt_196
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(20),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_20_rt_200
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(21),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_21_rt_202
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(22),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_22_rt_204
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(23),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_23_rt_206
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(24),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_24_rt_208
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(25),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_25_rt_210
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(26),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_26_rt_212
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(27),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_27_rt_214
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(28),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_28_rt_216
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(29),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_29_rt_218
    );
  clk_25MHz_1_Mcount_i_cuenta_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(30),
      O => clk_25MHz_1_Mcount_i_cuenta_cy_30_rt_222
    );
  frequ_1_Madd_i_cuenta_share0000_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(30),
      O => frequ_1_Madd_i_cuenta_share0000_cy_30_rt_375
    );
  frequ_1_Madd_i_cuenta_share0000_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(29),
      O => frequ_1_Madd_i_cuenta_share0000_cy_29_rt_371
    );
  frequ_1_Madd_i_cuenta_share0000_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(28),
      O => frequ_1_Madd_i_cuenta_share0000_cy_28_rt_369
    );
  frequ_1_Madd_i_cuenta_share0000_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(27),
      O => frequ_1_Madd_i_cuenta_share0000_cy_27_rt_367
    );
  frequ_1_Madd_i_cuenta_share0000_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(26),
      O => frequ_1_Madd_i_cuenta_share0000_cy_26_rt_365
    );
  frequ_1_Madd_i_cuenta_share0000_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(25),
      O => frequ_1_Madd_i_cuenta_share0000_cy_25_rt_363
    );
  frequ_1_Madd_i_cuenta_share0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(24),
      O => frequ_1_Madd_i_cuenta_share0000_cy_24_rt_361
    );
  frequ_1_Madd_i_cuenta_share0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(23),
      O => frequ_1_Madd_i_cuenta_share0000_cy_23_rt_359
    );
  frequ_1_Madd_i_cuenta_share0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(22),
      O => frequ_1_Madd_i_cuenta_share0000_cy_22_rt_357
    );
  frequ_1_Madd_i_cuenta_share0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(21),
      O => frequ_1_Madd_i_cuenta_share0000_cy_21_rt_355
    );
  frequ_1_Madd_i_cuenta_share0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(20),
      O => frequ_1_Madd_i_cuenta_share0000_cy_20_rt_353
    );
  frequ_1_Madd_i_cuenta_share0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(19),
      O => frequ_1_Madd_i_cuenta_share0000_cy_19_rt_349
    );
  frequ_1_Madd_i_cuenta_share0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(18),
      O => frequ_1_Madd_i_cuenta_share0000_cy_18_rt_347
    );
  frequ_1_Madd_i_cuenta_share0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(17),
      O => frequ_1_Madd_i_cuenta_share0000_cy_17_rt_345
    );
  frequ_1_Madd_i_cuenta_share0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(16),
      O => frequ_1_Madd_i_cuenta_share0000_cy_16_rt_343
    );
  frequ_1_Madd_i_cuenta_share0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(15),
      O => frequ_1_Madd_i_cuenta_share0000_cy_15_rt_341
    );
  frequ_1_Madd_i_cuenta_share0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(14),
      O => frequ_1_Madd_i_cuenta_share0000_cy_14_rt_339
    );
  frequ_1_Madd_i_cuenta_share0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(13),
      O => frequ_1_Madd_i_cuenta_share0000_cy_13_rt_337
    );
  frequ_1_Madd_i_cuenta_share0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(12),
      O => frequ_1_Madd_i_cuenta_share0000_cy_12_rt_335
    );
  frequ_1_Madd_i_cuenta_share0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(11),
      O => frequ_1_Madd_i_cuenta_share0000_cy_11_rt_333
    );
  frequ_1_Madd_i_cuenta_share0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(10),
      O => frequ_1_Madd_i_cuenta_share0000_cy_10_rt_331
    );
  frequ_1_Madd_i_cuenta_share0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(9),
      O => frequ_1_Madd_i_cuenta_share0000_cy_9_rt_389
    );
  frequ_1_Madd_i_cuenta_share0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(8),
      O => frequ_1_Madd_i_cuenta_share0000_cy_8_rt_387
    );
  frequ_1_Madd_i_cuenta_share0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(7),
      O => frequ_1_Madd_i_cuenta_share0000_cy_7_rt_385
    );
  frequ_1_Madd_i_cuenta_share0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(6),
      O => frequ_1_Madd_i_cuenta_share0000_cy_6_rt_383
    );
  frequ_1_Madd_i_cuenta_share0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(5),
      O => frequ_1_Madd_i_cuenta_share0000_cy_5_rt_381
    );
  frequ_1_Madd_i_cuenta_share0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(4),
      O => frequ_1_Madd_i_cuenta_share0000_cy_4_rt_379
    );
  frequ_1_Madd_i_cuenta_share0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(3),
      O => frequ_1_Madd_i_cuenta_share0000_cy_3_rt_377
    );
  frequ_1_Madd_i_cuenta_share0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(2),
      O => frequ_1_Madd_i_cuenta_share0000_cy_2_rt_373
    );
  frequ_1_Madd_i_cuenta_share0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(1),
      O => frequ_1_Madd_i_cuenta_share0000_cy_1_rt_351
    );
  clk_25MHz_1_Mcount_i_cuenta_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_25MHz_1_i_cuenta(31),
      O => clk_25MHz_1_Mcount_i_cuenta_xor_31_rt_270
    );
  frequ_1_Madd_i_cuenta_share0000_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => frequ_1_i_cuenta(31),
      O => frequ_1_Madd_i_cuenta_share0000_xor_31_rt_391
    );
  frequ_1_Mmux_i_cuenta_mux0001_4 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(31),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => frequ_1_Mmux_i_cuenta_mux0001_4_406
    );
  frequ_1_Mmux_i_cuenta_mux0001_411 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(30),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => frequ_1_Mmux_i_cuenta_mux0001_411_408
    );
  frequ_1_Mmux_i_cuenta_mux0001_422 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(29),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => frequ_1_Mmux_i_cuenta_mux0001_422_410
    );
  frequ_1_Mmux_i_cuenta_mux0001_425 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(28),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => frequ_1_Mmux_i_cuenta_mux0001_425_411
    );
  frequ_1_Mmux_i_cuenta_mux0001_426 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(27),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => frequ_1_Mmux_i_cuenta_mux0001_426_412
    );
  frequ_1_Mmux_i_cuenta_mux0001_427 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(26),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => frequ_1_Mmux_i_cuenta_mux0001_427_413
    );
  frequ_1_Mmux_i_cuenta_mux0001_428 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(25),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => frequ_1_Mmux_i_cuenta_mux0001_428_414
    );
  frequ_1_Mmux_i_cuenta_mux0001_429 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(24),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => frequ_1_Mmux_i_cuenta_mux0001_429_415
    );
  frequ_1_Mmux_i_cuenta_mux0001_430 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(23),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => frequ_1_Mmux_i_cuenta_mux0001_430_417
    );
  frequ_1_Mmux_i_cuenta_mux0001_431 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(22),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => frequ_1_Mmux_i_cuenta_mux0001_431_418
    );
  frequ_1_Mmux_i_cuenta_mux0001_41 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(21),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => frequ_1_Mmux_i_cuenta_mux0001_41_407
    );
  frequ_1_Mmux_i_cuenta_mux0001_42 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(20),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => frequ_1_Mmux_i_cuenta_mux0001_42_409
    );
  frequ_1_Mmux_i_cuenta_mux0001_3 : LUT4
    generic map(
      INIT => X"8D88"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(31),
      I2 => frequ_1_i_cuenta_cmp_eq0000,
      I3 => frequ_1_i_cuenta_share0000(31),
      O => frequ_1_Mmux_i_cuenta_mux0001_3_392
    );
  frequ_1_Mmux_i_cuenta_mux0001_311 : LUT4
    generic map(
      INIT => X"8D88"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(30),
      I2 => frequ_1_i_cuenta_cmp_eq0000,
      I3 => frequ_1_i_cuenta_share0000(30),
      O => frequ_1_Mmux_i_cuenta_mux0001_311_394
    );
  frequ_1_Mmux_i_cuenta_mux0001_322 : LUT4
    generic map(
      INIT => X"8D88"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(29),
      I2 => frequ_1_i_cuenta_cmp_eq0000,
      I3 => frequ_1_i_cuenta_share0000(29),
      O => frequ_1_Mmux_i_cuenta_mux0001_322_396
    );
  frequ_1_Mmux_i_cuenta_mux0001_325 : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(28),
      I2 => frequ_1_i_cuenta_share0000(28),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => frequ_1_Mmux_i_cuenta_mux0001_325_397
    );
  frequ_1_Mmux_i_cuenta_mux0001_326 : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(27),
      I2 => frequ_1_i_cuenta_share0000(27),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => frequ_1_Mmux_i_cuenta_mux0001_326_398
    );
  frequ_1_Mmux_i_cuenta_mux0001_327 : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(26),
      I2 => frequ_1_i_cuenta_share0000(26),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => frequ_1_Mmux_i_cuenta_mux0001_327_399
    );
  frequ_1_Mmux_i_cuenta_mux0001_328 : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(25),
      I2 => frequ_1_i_cuenta_share0000(25),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => frequ_1_Mmux_i_cuenta_mux0001_328_400
    );
  frequ_1_Mmux_i_cuenta_mux0001_329 : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(24),
      I2 => frequ_1_i_cuenta_share0000(24),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => frequ_1_Mmux_i_cuenta_mux0001_329_401
    );
  frequ_1_Mmux_i_cuenta_mux0001_330 : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(23),
      I2 => frequ_1_i_cuenta_share0000(23),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => frequ_1_Mmux_i_cuenta_mux0001_330_403
    );
  frequ_1_Mmux_i_cuenta_mux0001_331 : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(22),
      I2 => frequ_1_i_cuenta_share0000(22),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => frequ_1_Mmux_i_cuenta_mux0001_331_404
    );
  frequ_1_Mmux_i_cuenta_mux0001_31 : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(21),
      I2 => frequ_1_i_cuenta_share0000(21),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => frequ_1_Mmux_i_cuenta_mux0001_31_393
    );
  frequ_1_Mmux_i_cuenta_mux0001_32 : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(20),
      I2 => frequ_1_i_cuenta_share0000(20),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => frequ_1_Mmux_i_cuenta_mux0001_32_395
    );
  frequ_1_Mmux_i_cuenta_mux0001_43 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(19),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => frequ_1_Mmux_i_cuenta_mux0001_43_416
    );
  frequ_1_Mmux_i_cuenta_mux0001_44 : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(18),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => frequ_1_Mmux_i_cuenta_mux0001_44_419
    );
  frequ_1_Mmux_i_cuenta_mux0001_33 : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(19),
      I2 => frequ_1_i_cuenta_share0000(19),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => frequ_1_Mmux_i_cuenta_mux0001_33_402
    );
  frequ_1_Mmux_i_cuenta_mux0001_34 : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(18),
      I2 => frequ_1_i_cuenta_share0000(18),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => frequ_1_Mmux_i_cuenta_mux0001_34_405
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_24 : MUXF5
    port map (
      I0 => frequ_1_Mmux_i_cuenta_mux0001_425_411,
      I1 => frequ_1_Mmux_i_cuenta_mux0001_325_397,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(3)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_10 : MUXF5
    port map (
      I0 => frequ_1_Mmux_i_cuenta_mux0001_411_408,
      I1 => frequ_1_Mmux_i_cuenta_mux0001_311_394,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(1)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5 : MUXF5
    port map (
      I0 => frequ_1_Mmux_i_cuenta_mux0001_4_406,
      I1 => frequ_1_Mmux_i_cuenta_mux0001_3_392,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(0)
    );
  frequ_1_Mmux_i_clk_mux0001_2_f5 : MUXF5
    port map (
      I0 => N01,
      I1 => N11,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_clk_mux0001
    );
  frequ_1_Mmux_i_clk_mux0001_2_f5_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_cmp_eq0002,
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      O => N01
    );
  frequ_1_Mmux_i_clk_mux0001_2_f5_G : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_clk_423,
      I2 => frequ_1_i_cuenta_cmp_eq0000,
      O => N11
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_23 : MUXF5
    port map (
      I0 => N2,
      I1 => N3,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(31)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_23_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(0),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => N2
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_23_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(0),
      I2 => frequ_1_i_cuenta_share0000(0),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => N3
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_22 : MUXF5
    port map (
      I0 => N4,
      I1 => N5,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(30)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_22_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(1),
      I2 => frequ_1_i_cuenta_cmp_eq000140_477,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => N4
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_22_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(1),
      I2 => frequ_1_i_cuenta_share0000(1),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => N5
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_20 : MUXF5
    port map (
      I0 => N6,
      I1 => N7,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(29)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_20_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(2),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq000239_482,
      O => N6
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_20_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(2),
      I2 => frequ_1_i_cuenta_share0000(2),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => N7
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_19 : MUXF5
    port map (
      I0 => N8,
      I1 => N9,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(28)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_19_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(3),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq0002,
      O => N8
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_19_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(3),
      I2 => frequ_1_i_cuenta_share0000(3),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => N9
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_18 : MUXF5
    port map (
      I0 => N10,
      I1 => N111,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(27)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_18_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(4),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq0002,
      O => N10
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_18_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(4),
      I2 => frequ_1_i_cuenta_share0000(4),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => N111
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_17 : MUXF5
    port map (
      I0 => N12,
      I1 => N13,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(26)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_17_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(5),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq0002,
      O => N12
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_17_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(5),
      I2 => frequ_1_i_cuenta_share0000(5),
      I3 => frequ_1_i_cuenta_cmp_eq000045_472,
      O => N13
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_16 : MUXF5
    port map (
      I0 => N14,
      I1 => N15,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(25)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_16_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(6),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq0002,
      O => N14
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_16_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(6),
      I2 => frequ_1_i_cuenta_share0000(6),
      I3 => frequ_1_i_cuenta_cmp_eq0000,
      O => N15
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_15 : MUXF5
    port map (
      I0 => N16,
      I1 => N17,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(24)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_15_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(7),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq0002,
      O => N16
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_15_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(7),
      I2 => frequ_1_i_cuenta_share0000(7),
      I3 => frequ_1_i_cuenta_cmp_eq0000,
      O => N17
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_14 : MUXF5
    port map (
      I0 => N18,
      I1 => N19,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(23)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_14_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(8),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq0002,
      O => N18
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_14_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(8),
      I2 => frequ_1_i_cuenta_share0000(8),
      I3 => frequ_1_i_cuenta_cmp_eq0000,
      O => N19
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_13 : MUXF5
    port map (
      I0 => N20,
      I1 => N21,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(22)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_13_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(9),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq0002,
      O => N20
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_13_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(9),
      I2 => frequ_1_i_cuenta_share0000(9),
      I3 => frequ_1_i_cuenta_cmp_eq0000,
      O => N21
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_12 : MUXF5
    port map (
      I0 => N22,
      I1 => N23,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(21)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_12_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(10),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq0002,
      O => N22
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_12_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(10),
      I2 => frequ_1_i_cuenta_share0000(10),
      I3 => frequ_1_i_cuenta_cmp_eq0000,
      O => N23
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_11 : MUXF5
    port map (
      I0 => N24,
      I1 => N25,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(20)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_11_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(11),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq0002,
      O => N24
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_11_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(11),
      I2 => frequ_1_i_cuenta_share0000(11),
      I3 => frequ_1_i_cuenta_cmp_eq0000,
      O => N25
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_9 : MUXF5
    port map (
      I0 => N26,
      I1 => N27,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(19)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_9_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(12),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq0002,
      O => N26
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_9_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(12),
      I2 => frequ_1_i_cuenta_share0000(12),
      I3 => frequ_1_i_cuenta_cmp_eq0000,
      O => N27
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_8 : MUXF5
    port map (
      I0 => N28,
      I1 => N29,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(18)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_8_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(13),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq0002,
      O => N28
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_8_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(13),
      I2 => frequ_1_i_cuenta_share0000(13),
      I3 => frequ_1_i_cuenta_cmp_eq0000,
      O => N29
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_7 : MUXF5
    port map (
      I0 => N30,
      I1 => N31,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(17)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_7_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(14),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq0002,
      O => N30
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_7_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(14),
      I2 => frequ_1_i_cuenta_share0000(14),
      I3 => frequ_1_i_cuenta_cmp_eq0000,
      O => N31
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_6 : MUXF5
    port map (
      I0 => N32,
      I1 => N33,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(16)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_6_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(15),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq0002,
      O => N32
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_6_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(15),
      I2 => frequ_1_i_cuenta_share0000(15),
      I3 => frequ_1_i_cuenta_cmp_eq0000,
      O => N33
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_5 : MUXF5
    port map (
      I0 => N34,
      I1 => N35,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(15)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_5_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(16),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq0002,
      O => N34
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_5_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(16),
      I2 => frequ_1_i_cuenta_share0000(16),
      I3 => frequ_1_i_cuenta_cmp_eq0000,
      O => N35
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_4 : MUXF5
    port map (
      I0 => N36,
      I1 => N37,
      S => sw_freq_1_IBUF_613,
      O => frequ_1_i_cuenta_mux0001(14)
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_4_F : LUT4
    generic map(
      INIT => X"084C"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta_share0000(17),
      I2 => frequ_1_i_cuenta_cmp_eq0001,
      I3 => frequ_1_i_cuenta_cmp_eq0002,
      O => N36
    );
  frequ_1_Mmux_i_cuenta_mux0001_2_f5_4_G : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => sw_freq_0_IBUF_612,
      I1 => frequ_1_i_cuenta(17),
      I2 => frequ_1_i_cuenta_share0000(17),
      I3 => frequ_1_i_cuenta_cmp_eq0000,
      O => N37
    );
  gen_1_mux10_4 : LUT4
    generic map(
      INIT => X"8889"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => contador_1_contador(3),
      I2 => contador_1_contador(1),
      I3 => contador_1_contador(2),
      O => gen_1_mux10_4_559
    );
  gen_1_mux11_4 : LUT4
    generic map(
      INIT => X"8889"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => contador_1_contador(3),
      I2 => contador_1_contador(0),
      I3 => contador_1_contador(2),
      O => gen_1_mux11_4_561
    );
  SPI_1_SPI_MOSI_mux000180_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => gen_1_sign(4),
      I1 => SPI_1_dat_presente(25),
      I2 => gen_1_sign(5),
      I3 => SPI_1_dat_presente(24),
      O => N38
    );
  SPI_1_SPI_MOSI_mux000180 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => SPI_1_SPI_MOSI_mux000154_95,
      I1 => SPI_1_SPI_MOSI_mux000166_96,
      I2 => SPI_1_SPI_MOSI_mux000171_97,
      I3 => N38,
      O => SPI_1_SPI_MOSI_mux000180_98
    );
  gen_1_mux11_3 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => contador_1_contador(2),
      I2 => contador_1_contador(3),
      I3 => gen_1_sign(9),
      O => gen_1_mux11_3_560
    );
  frequ_1_i_cuenta_cmp_eq000239_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => frequ_1_i_cuenta_cmp_eq000225_480,
      I1 => frequ_1_N01,
      I2 => frequ_1_i_cuenta_cmp_eq000212_479,
      O => frequ_1_i_cuenta_cmp_eq000239_482
    );
  frequ_1_i_cuenta_cmp_eq000140_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => N42,
      I1 => frequ_1_N01,
      I2 => frequ_1_i_cuenta_cmp_eq000112_474,
      O => frequ_1_i_cuenta_cmp_eq000140_477
    );
  frequ_1_i_cuenta_cmp_eq000045_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => frequ_1_i_cuenta_cmp_eq000022_471,
      I1 => N44,
      I2 => frequ_1_i_cuenta_cmp_eq000010_458,
      I3 => frequ_1_N01,
      O => frequ_1_i_cuenta_cmp_eq000045_472
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_324
    );
  rst_IBUF_BUFG : BUFG
    port map (
      I => rst_IBUF1,
      O => rst_IBUF_608
    );
  clk_25MHz_1_freq_25MHz_BUFG : BUFG
    port map (
      I => clk_25MHz_1_freq_25MHz1,
      O => clk_25MHz_1_freq_25MHz_271
    );
  clk_25MHz_1_Mcount_i_cuenta_lut_0_INV_0 : INV
    port map (
      I => clk_25MHz_1_i_cuenta(0),
      O => clk_25MHz_1_Mcount_i_cuenta_lut(0)
    );
  frequ_1_Madd_i_cuenta_share0000_lut_0_INV_0 : INV
    port map (
      I => frequ_1_i_cuenta(0),
      O => frequ_1_Madd_i_cuenta_share0000_lut(0)
    );
  SPI_1_led21_INV_0 : INV
    port map (
      I => rst_IBUF1,
      O => DAC_CLR_OBUF_1
    );
  frequ_1_freq_not00011_INV_0 : INV
    port map (
      I => frequ_1_freq_421,
      O => frequ_1_freq_not0001
    );
  contador_1_Mcount_contador_xor_0_11_INV_0 : INV
    port map (
      I => contador_1_contador(0),
      O => Result_0_1
    );
  clk_25MHz_1_freq_25MHz_not00011_INV_0 : INV
    port map (
      I => clk_25MHz_1_freq_25MHz1,
      O => clk_25MHz_1_freq_25MHz_not0001
    );
  gen_1_mux10_2_f51 : MUXF5
    port map (
      I0 => N40,
      I1 => N41,
      S => sw_sign_1_IBUF_617,
      O => gen_1_sign_mux0001(3)
    );
  gen_1_mux10_2_f51_F : LUT4
    generic map(
      INIT => X"8889"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => contador_1_contador(3),
      I2 => contador_1_contador(1),
      I3 => contador_1_contador(2),
      O => N40
    );
  gen_1_mux10_2_f51_G : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => sw_sign_0_IBUF_616,
      I1 => contador_1_contador(2),
      I2 => contador_1_contador(3),
      I3 => gen_1_sign(8),
      O => N41
    );
  frequ_1_i_cuenta_cmp_eq00013 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => frequ_1_i_cuenta(9),
      I1 => frequ_1_i_cuenta(12),
      LO => frequ_1_i_cuenta_cmp_eq00013_476
    );
  frequ_1_i_cuenta_cmp_eq000126 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => frequ_1_i_cuenta(11),
      I1 => frequ_1_i_cuenta(5),
      I2 => frequ_1_i_cuenta(14),
      I3 => frequ_1_i_cuenta(13),
      LO => N42,
      O => frequ_1_i_cuenta_cmp_eq000126_475
    );
  frequ_1_i_cuenta_cmp_eq00023 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => frequ_1_i_cuenta(14),
      I1 => frequ_1_i_cuenta(5),
      LO => frequ_1_i_cuenta_cmp_eq00023_481
    );
  frequ_1_i_cuenta_cmp_eq000225 : LUT4_D
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => frequ_1_i_cuenta(6),
      I1 => frequ_1_i_cuenta(9),
      I2 => frequ_1_i_cuenta(3),
      I3 => frequ_1_i_cuenta(11),
      LO => N43,
      O => frequ_1_i_cuenta_cmp_eq000225_480
    );
  frequ_1_i_cuenta_cmp_eq000018 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => frequ_1_i_cuenta(9),
      I1 => frequ_1_i_cuenta(13),
      I2 => frequ_1_i_cuenta(6),
      LO => N44,
      O => frequ_1_i_cuenta_cmp_eq000018_459
    );
  frequ_1_i_cuenta_cmp_eq000022 : LUT2_D
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => frequ_1_i_cuenta(14),
      I1 => frequ_1_i_cuenta(12),
      LO => N45,
      O => frequ_1_i_cuenta_cmp_eq000022_471
    );

end Structure;

