-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "01/06/2024 21:48:20"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FinalProject IS
    PORT (
	inputData : IN std_logic_vector(7 DOWNTO 0);
	op : IN std_logic_vector(3 DOWNTO 0);
	rs : IN std_logic_vector(1 DOWNTO 0);
	rt : IN std_logic_vector(1 DOWNTO 0);
	clk : IN std_logic;
	btn : IN std_logic;
	sel : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(0 TO 6);
	HEX1 : BUFFER std_logic_vector(0 TO 6);
	HEX2 : BUFFER std_logic_vector(0 TO 6);
	HEX3 : BUFFER std_logic_vector(0 TO 6);
	HEX4 : BUFFER std_logic_vector(0 TO 6);
	HEX5 : BUFFER std_logic_vector(0 TO 6);
	HEX6 : BUFFER std_logic_vector(0 TO 6);
	HEX7 : BUFFER std_logic_vector(0 TO 6);
	hazard : BUFFER std_logic;
	cycle : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END FinalProject;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hazard	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputData[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputData[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputData[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputData[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputData[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputData[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputData[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputData[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[3]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt[0]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs[1]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FinalProject IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inputData : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rs : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rt : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_btn : std_logic;
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL ww_hazard : std_logic;
SIGNAL ww_cycle : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \btnDebounce|btn_current~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \hazard~output_o\ : std_logic;
SIGNAL \cycle[0]~output_o\ : std_logic;
SIGNAL \cycle[1]~output_o\ : std_logic;
SIGNAL \cycle[2]~output_o\ : std_logic;
SIGNAL \cycle[3]~output_o\ : std_logic;
SIGNAL \inputData[2]~input_o\ : std_logic;
SIGNAL \inputData[1]~input_o\ : std_logic;
SIGNAL \inputData[3]~input_o\ : std_logic;
SIGNAL \inputData[0]~input_o\ : std_logic;
SIGNAL \print0|Mux6~0_combout\ : std_logic;
SIGNAL \print0|Mux5~0_combout\ : std_logic;
SIGNAL \print0|Mux4~0_combout\ : std_logic;
SIGNAL \print0|Mux3~0_combout\ : std_logic;
SIGNAL \print0|Mux2~0_combout\ : std_logic;
SIGNAL \print0|Mux1~0_combout\ : std_logic;
SIGNAL \print0|Mux0~0_combout\ : std_logic;
SIGNAL \inputData[5]~input_o\ : std_logic;
SIGNAL \inputData[7]~input_o\ : std_logic;
SIGNAL \inputData[6]~input_o\ : std_logic;
SIGNAL \inputData[4]~input_o\ : std_logic;
SIGNAL \print1|Mux6~0_combout\ : std_logic;
SIGNAL \print1|Mux5~0_combout\ : std_logic;
SIGNAL \print1|Mux4~0_combout\ : std_logic;
SIGNAL \print1|Mux3~0_combout\ : std_logic;
SIGNAL \print1|Mux2~0_combout\ : std_logic;
SIGNAL \print1|Mux1~0_combout\ : std_logic;
SIGNAL \print1|Mux0~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \btn~input_o\ : std_logic;
SIGNAL \btnDebounce|counter[0]~20_combout\ : std_logic;
SIGNAL \btnDebounce|counter[9]~42\ : std_logic;
SIGNAL \btnDebounce|counter[10]~43_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \btnDebounce|counter[10]~44\ : std_logic;
SIGNAL \btnDebounce|counter[11]~45_combout\ : std_logic;
SIGNAL \btnDebounce|counter[11]~46\ : std_logic;
SIGNAL \btnDebounce|counter[12]~47_combout\ : std_logic;
SIGNAL \btnDebounce|counter[12]~48\ : std_logic;
SIGNAL \btnDebounce|counter[13]~49_combout\ : std_logic;
SIGNAL \btnDebounce|counter[13]~50\ : std_logic;
SIGNAL \btnDebounce|counter[14]~51_combout\ : std_logic;
SIGNAL \btnDebounce|counter[14]~52\ : std_logic;
SIGNAL \btnDebounce|counter[15]~53_combout\ : std_logic;
SIGNAL \btnDebounce|counter[15]~54\ : std_logic;
SIGNAL \btnDebounce|counter[16]~55_combout\ : std_logic;
SIGNAL \btnDebounce|counter[16]~56\ : std_logic;
SIGNAL \btnDebounce|counter[17]~57_combout\ : std_logic;
SIGNAL \btnDebounce|counter[17]~58\ : std_logic;
SIGNAL \btnDebounce|counter[18]~59_combout\ : std_logic;
SIGNAL \btnDebounce|counter[18]~60\ : std_logic;
SIGNAL \btnDebounce|counter[19]~61_combout\ : std_logic;
SIGNAL \btnDebounce|process_0~1_combout\ : std_logic;
SIGNAL \btnDebounce|counter[19]~22_combout\ : std_logic;
SIGNAL \btnDebounce|Equal1~4_combout\ : std_logic;
SIGNAL \btnDebounce|Equal1~5_combout\ : std_logic;
SIGNAL \btnDebounce|counter[19]~23_combout\ : std_logic;
SIGNAL \btnDebounce|Equal1~0_combout\ : std_logic;
SIGNAL \btnDebounce|Equal1~1_combout\ : std_logic;
SIGNAL \btnDebounce|Equal1~2_combout\ : std_logic;
SIGNAL \btnDebounce|Equal1~3_combout\ : std_logic;
SIGNAL \btnDebounce|counter[19]~24_combout\ : std_logic;
SIGNAL \btnDebounce|counter[0]~21\ : std_logic;
SIGNAL \btnDebounce|counter[1]~25_combout\ : std_logic;
SIGNAL \btnDebounce|counter[1]~26\ : std_logic;
SIGNAL \btnDebounce|counter[2]~27_combout\ : std_logic;
SIGNAL \btnDebounce|counter[2]~28\ : std_logic;
SIGNAL \btnDebounce|counter[3]~29_combout\ : std_logic;
SIGNAL \btnDebounce|counter[3]~30\ : std_logic;
SIGNAL \btnDebounce|counter[4]~31_combout\ : std_logic;
SIGNAL \btnDebounce|counter[4]~32\ : std_logic;
SIGNAL \btnDebounce|counter[5]~33_combout\ : std_logic;
SIGNAL \btnDebounce|counter[5]~34\ : std_logic;
SIGNAL \btnDebounce|counter[6]~35_combout\ : std_logic;
SIGNAL \btnDebounce|counter[6]~feeder_combout\ : std_logic;
SIGNAL \btnDebounce|counter[6]~36\ : std_logic;
SIGNAL \btnDebounce|counter[7]~37_combout\ : std_logic;
SIGNAL \btnDebounce|counter[7]~38\ : std_logic;
SIGNAL \btnDebounce|counter[8]~39_combout\ : std_logic;
SIGNAL \btnDebounce|counter[8]~40\ : std_logic;
SIGNAL \btnDebounce|counter[9]~41_combout\ : std_logic;
SIGNAL \btnDebounce|counter[9]~feeder_combout\ : std_logic;
SIGNAL \btnDebounce|process_0~0_combout\ : std_logic;
SIGNAL \btnDebounce|process_0~2_combout\ : std_logic;
SIGNAL \btnDebounce|btn_temp~0_combout\ : std_logic;
SIGNAL \btnDebounce|btn_temp~q\ : std_logic;
SIGNAL \btnDebounce|btn_current~0_combout\ : std_logic;
SIGNAL \btnDebounce|btn_current~feeder_combout\ : std_logic;
SIGNAL \btnDebounce|btn_current~q\ : std_logic;
SIGNAL \btnDebounce|btn_current~clkctrl_outclk\ : std_logic;
SIGNAL \op[3]~input_o\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \info_register[1].op[1]~feeder_combout\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \info_register[0].op[0]~feeder_combout\ : std_logic;
SIGNAL \info_register[2].op[0]~feeder_combout\ : std_logic;
SIGNAL \info_register[2].result[5]~4_combout\ : std_logic;
SIGNAL \info_register[2].result[5]~3_combout\ : std_logic;
SIGNAL \info_register[3].result[2]~feeder_combout\ : std_logic;
SIGNAL \info_register[3].op[0]~feeder_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \rs[0]~input_o\ : std_logic;
SIGNAL \rs[1]~input_o\ : std_logic;
SIGNAL \info_register[0].rs[1]~feeder_combout\ : std_logic;
SIGNAL \info_register[1].rs[1]~feeder_combout\ : std_logic;
SIGNAL \info_register[2].rs[1]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \reg[3][2]~q\ : std_logic;
SIGNAL \reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \reg[1][2]~q\ : std_logic;
SIGNAL \reg[0][2]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \reg[0][2]~q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \reg[2][2]~q\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \info_register[2].readDataRs[2]~feeder_combout\ : std_logic;
SIGNAL \rt[0]~input_o\ : std_logic;
SIGNAL \info_register[0].rt[0]~feeder_combout\ : std_logic;
SIGNAL \rt[1]~input_o\ : std_logic;
SIGNAL \info_register[0].rt[1]~feeder_combout\ : std_logic;
SIGNAL \info_register[1].rt[1]~feeder_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \info_register~12_combout\ : std_logic;
SIGNAL \info_register[2].result[5]~1_combout\ : std_logic;
SIGNAL \info_register[2].result[5]~2_combout\ : std_logic;
SIGNAL \info_register~11_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \info_register[2].result[5]~0_combout\ : std_logic;
SIGNAL \info_register[0].inputData[1]~feeder_combout\ : std_logic;
SIGNAL \info_register[1].inputData[1]~feeder_combout\ : std_logic;
SIGNAL \reg[3][1]~q\ : std_logic;
SIGNAL \reg[1][1]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \reg[2][1]~q\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \info_register~5_combout\ : std_logic;
SIGNAL \info_register[0].inputData[3]~feeder_combout\ : std_logic;
SIGNAL \info_register[1].inputData[3]~feeder_combout\ : std_logic;
SIGNAL \reg[3][3]~q\ : std_logic;
SIGNAL \reg[0][3]~q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \reg[1][3]~q\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \info_register[2].readDataRs[3]~feeder_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \info_register~18_combout\ : std_logic;
SIGNAL \info_register~17_combout\ : std_logic;
SIGNAL \info_register~19_combout\ : std_logic;
SIGNAL \info_register~20_combout\ : std_logic;
SIGNAL \reg[0][0]~q\ : std_logic;
SIGNAL \reg[2][0]~q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \reg[3][0]~q\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \reg[3][7]~q\ : std_logic;
SIGNAL \reg[0][7]~q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \reg[1][7]~q\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \reg[3][6]~q\ : std_logic;
SIGNAL \reg[0][6]~q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \reg[2][6]~feeder_combout\ : std_logic;
SIGNAL \reg[2][6]~q\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[9]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[9]~11_combout\ : std_logic;
SIGNAL \info_register~34_combout\ : std_logic;
SIGNAL \info_register~33_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \reg[1][5]~q\ : std_logic;
SIGNAL \reg[3][5]~feeder_combout\ : std_logic;
SIGNAL \reg[3][5]~q\ : std_logic;
SIGNAL \reg[2][5]~feeder_combout\ : std_logic;
SIGNAL \reg[2][5]~q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \info_register[0].inputData[4]~feeder_combout\ : std_logic;
SIGNAL \info_register[1].inputData[4]~feeder_combout\ : std_logic;
SIGNAL \reg[1][4]~q\ : std_logic;
SIGNAL \reg[3][4]~feeder_combout\ : std_logic;
SIGNAL \reg[3][4]~q\ : std_logic;
SIGNAL \reg[0][4]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \info_register~23_combout\ : std_logic;
SIGNAL \info_register~24_combout\ : std_logic;
SIGNAL \info_register~25_combout\ : std_logic;
SIGNAL \info_register~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[18]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \info_register~45_combout\ : std_logic;
SIGNAL \info_register~46_combout\ : std_logic;
SIGNAL \info_register[3].result[4]~feeder_combout\ : std_logic;
SIGNAL \reg[2][4]~q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \info_register~35_combout\ : std_logic;
SIGNAL \info_register[0].inputData[6]~feeder_combout\ : std_logic;
SIGNAL \info_register[1].inputData[6]~feeder_combout\ : std_logic;
SIGNAL \info_register~36_combout\ : std_logic;
SIGNAL \info_register~37_combout\ : std_logic;
SIGNAL \info_register~38_combout\ : std_logic;
SIGNAL \reg[1][6]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \info_register~21_combout\ : std_logic;
SIGNAL \info_register~22_combout\ : std_logic;
SIGNAL \info_register[3].result[3]~feeder_combout\ : std_logic;
SIGNAL \reg[2][3]~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \info_register~30_combout\ : std_logic;
SIGNAL \info_register~27_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \info_register~28_combout\ : std_logic;
SIGNAL \info_register~29_combout\ : std_logic;
SIGNAL \info_register~31_combout\ : std_logic;
SIGNAL \info_register~32_combout\ : std_logic;
SIGNAL \info_register[3].result[5]~feeder_combout\ : std_logic;
SIGNAL \reg[0][5]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[27]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[0]~12_combout\ : std_logic;
SIGNAL \info_register[1].inputData[7]~feeder_combout\ : std_logic;
SIGNAL \info_register~42_combout\ : std_logic;
SIGNAL \info_register~40_combout\ : std_logic;
SIGNAL \info_register~39_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \info_register~41_combout\ : std_logic;
SIGNAL \info_register~43_combout\ : std_logic;
SIGNAL \info_register~44_combout\ : std_logic;
SIGNAL \info_register[3].result[7]~feeder_combout\ : std_logic;
SIGNAL \reg[2][7]~feeder_combout\ : std_logic;
SIGNAL \reg[2][7]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[36]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[45]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \info_register~2_combout\ : std_logic;
SIGNAL \info_register~3_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \info_register~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \info_register~1_combout\ : std_logic;
SIGNAL \info_register~4_combout\ : std_logic;
SIGNAL \info_register~6_combout\ : std_logic;
SIGNAL \reg[1][0]~q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \info_register~8_combout\ : std_logic;
SIGNAL \info_register~7_combout\ : std_logic;
SIGNAL \info_register~9_combout\ : std_logic;
SIGNAL \info_register~10_combout\ : std_logic;
SIGNAL \info_register~47_combout\ : std_logic;
SIGNAL \info_register~48_combout\ : std_logic;
SIGNAL \info_register[3].result[1]~feeder_combout\ : std_logic;
SIGNAL \reg[0][1]~q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \info_register~13_combout\ : std_logic;
SIGNAL \info_register[0].inputData[2]~feeder_combout\ : std_logic;
SIGNAL \info_register[1].inputData[2]~feeder_combout\ : std_logic;
SIGNAL \info_register~14_combout\ : std_logic;
SIGNAL \info_register~15_combout\ : std_logic;
SIGNAL \info_register~16_combout\ : std_logic;
SIGNAL \print2|Mux6~0_combout\ : std_logic;
SIGNAL \print2|Mux5~0_combout\ : std_logic;
SIGNAL \print2|Mux4~0_combout\ : std_logic;
SIGNAL \print2|Mux3~0_combout\ : std_logic;
SIGNAL \print2|Mux2~0_combout\ : std_logic;
SIGNAL \print2|Mux1~0_combout\ : std_logic;
SIGNAL \print2|Mux0~0_combout\ : std_logic;
SIGNAL \print3|Mux6~0_combout\ : std_logic;
SIGNAL \print3|Mux5~0_combout\ : std_logic;
SIGNAL \print3|Mux4~0_combout\ : std_logic;
SIGNAL \print3|Mux3~0_combout\ : std_logic;
SIGNAL \print3|Mux2~0_combout\ : std_logic;
SIGNAL \print3|Mux1~0_combout\ : std_logic;
SIGNAL \print3|Mux0~0_combout\ : std_logic;
SIGNAL \print4|Mux6~0_combout\ : std_logic;
SIGNAL \print4|Mux5~0_combout\ : std_logic;
SIGNAL \print4|Mux4~0_combout\ : std_logic;
SIGNAL \print4|Mux3~0_combout\ : std_logic;
SIGNAL \print4|Mux2~0_combout\ : std_logic;
SIGNAL \print4|Mux1~0_combout\ : std_logic;
SIGNAL \print4|Mux0~0_combout\ : std_logic;
SIGNAL \print5|Mux6~0_combout\ : std_logic;
SIGNAL \print5|Mux5~0_combout\ : std_logic;
SIGNAL \print5|Mux4~0_combout\ : std_logic;
SIGNAL \print5|Mux3~0_combout\ : std_logic;
SIGNAL \print5|Mux2~0_combout\ : std_logic;
SIGNAL \print5|Mux1~0_combout\ : std_logic;
SIGNAL \print5|Mux0~0_combout\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \print6|Mux6~0_combout\ : std_logic;
SIGNAL \print6|Mux5~0_combout\ : std_logic;
SIGNAL \print6|Mux4~0_combout\ : std_logic;
SIGNAL \print6|Mux3~0_combout\ : std_logic;
SIGNAL \print6|Mux2~0_combout\ : std_logic;
SIGNAL \print6|Mux1~0_combout\ : std_logic;
SIGNAL \print6|Mux0~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \print7|Mux6~0_combout\ : std_logic;
SIGNAL \print7|Mux5~0_combout\ : std_logic;
SIGNAL \print7|Mux4~0_combout\ : std_logic;
SIGNAL \print7|Mux3~0_combout\ : std_logic;
SIGNAL \print7|Mux2~0_combout\ : std_logic;
SIGNAL \print7|Mux1~0_combout\ : std_logic;
SIGNAL \print7|Mux0~0_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \cycle[1]~0_combout\ : std_logic;
SIGNAL \cycle[1]~reg0_q\ : std_logic;
SIGNAL \cycle[2]~reg0feeder_combout\ : std_logic;
SIGNAL \cycle[2]~reg0_q\ : std_logic;
SIGNAL \cycle[3]~reg0feeder_combout\ : std_logic;
SIGNAL \cycle[3]~reg0_q\ : std_logic;
SIGNAL \info_register[2].result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \btnDebounce|counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \info_register[2].readDataRt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \info_register[2].op\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \info_register[2].readDataRs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \info_register[2].inputData\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \info_register[1].readDataRt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \info_register[3].result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \info_register[3].rs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \info_register[3].op\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \info_register[1].op\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \info_register[1].readDataRs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \info_register[1].inputData\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \info_register[1].rt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \info_register[2].rs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \info_register[0].op\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \info_register[1].rs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \info_register[0].inputData\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \info_register[0].rt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \info_register[0].rs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \print7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \print6|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \print5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \print4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \print3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \print2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \print1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \print0|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_inputData <= inputData;
ww_op <= op;
ww_rs <= rs;
ww_rt <= rt;
ww_clk <= clk;
ww_btn <= btn;
ww_sel <= sel;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
hazard <= ww_hazard;
cycle <= ww_cycle;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\btnDebounce|btn_current~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \btnDebounce|btn_current~q\);
\btnDebounce|ALT_INV_btn_current~clkctrl_outclk\ <= NOT \btnDebounce|btn_current~clkctrl_outclk\;
\ALT_INV_Equal10~0_combout\ <= NOT \Equal10~0_combout\;
\print7|ALT_INV_Mux6~0_combout\ <= NOT \print7|Mux6~0_combout\;
\print6|ALT_INV_Mux6~0_combout\ <= NOT \print6|Mux6~0_combout\;
\print5|ALT_INV_Mux6~0_combout\ <= NOT \print5|Mux6~0_combout\;
\print4|ALT_INV_Mux6~0_combout\ <= NOT \print4|Mux6~0_combout\;
\print3|ALT_INV_Mux6~0_combout\ <= NOT \print3|Mux6~0_combout\;
\print2|ALT_INV_Mux6~0_combout\ <= NOT \print2|Mux6~0_combout\;
\print1|ALT_INV_Mux6~0_combout\ <= NOT \print1|Mux6~0_combout\;
\print0|ALT_INV_Mux6~0_combout\ <= NOT \print0|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print5|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print5|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print6|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print6|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print7|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \print7|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\hazard~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hazard~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\cycle[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal10~0_combout\,
	devoe => ww_devoe,
	o => \cycle[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\cycle[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cycle[1]~reg0_q\,
	devoe => ww_devoe,
	o => \cycle[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\cycle[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cycle[2]~reg0_q\,
	devoe => ww_devoe,
	o => \cycle[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\cycle[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cycle[3]~reg0_q\,
	devoe => ww_devoe,
	o => \cycle[3]~output_o\);

-- Location: IOIBUF_X115_Y15_N8
\inputData[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputData(2),
	o => \inputData[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\inputData[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputData(1),
	o => \inputData[1]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\inputData[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputData(3),
	o => \inputData[3]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\inputData[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputData(0),
	o => \inputData[0]~input_o\);

-- Location: LCCOMB_X111_Y18_N20
\print0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print0|Mux6~0_combout\ = (\inputData[0]~input_o\ & ((\inputData[3]~input_o\) # (\inputData[2]~input_o\ $ (\inputData[1]~input_o\)))) # (!\inputData[0]~input_o\ & ((\inputData[1]~input_o\) # (\inputData[2]~input_o\ $ (\inputData[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputData[2]~input_o\,
	datab => \inputData[1]~input_o\,
	datac => \inputData[3]~input_o\,
	datad => \inputData[0]~input_o\,
	combout => \print0|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y18_N6
\print0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print0|Mux5~0_combout\ = (\inputData[2]~input_o\ & (\inputData[0]~input_o\ & (\inputData[1]~input_o\ $ (\inputData[3]~input_o\)))) # (!\inputData[2]~input_o\ & (!\inputData[3]~input_o\ & ((\inputData[1]~input_o\) # (\inputData[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputData[2]~input_o\,
	datab => \inputData[1]~input_o\,
	datac => \inputData[3]~input_o\,
	datad => \inputData[0]~input_o\,
	combout => \print0|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y18_N16
\print0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print0|Mux4~0_combout\ = (\inputData[1]~input_o\ & (((!\inputData[3]~input_o\ & \inputData[0]~input_o\)))) # (!\inputData[1]~input_o\ & ((\inputData[2]~input_o\ & (!\inputData[3]~input_o\)) # (!\inputData[2]~input_o\ & ((\inputData[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputData[2]~input_o\,
	datab => \inputData[1]~input_o\,
	datac => \inputData[3]~input_o\,
	datad => \inputData[0]~input_o\,
	combout => \print0|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y18_N14
\print0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print0|Mux3~0_combout\ = (\inputData[0]~input_o\ & (\inputData[2]~input_o\ $ ((!\inputData[1]~input_o\)))) # (!\inputData[0]~input_o\ & ((\inputData[2]~input_o\ & (!\inputData[1]~input_o\ & !\inputData[3]~input_o\)) # (!\inputData[2]~input_o\ & 
-- (\inputData[1]~input_o\ & \inputData[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputData[2]~input_o\,
	datab => \inputData[1]~input_o\,
	datac => \inputData[3]~input_o\,
	datad => \inputData[0]~input_o\,
	combout => \print0|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y18_N28
\print0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print0|Mux2~0_combout\ = (\inputData[2]~input_o\ & (\inputData[3]~input_o\ & ((\inputData[1]~input_o\) # (!\inputData[0]~input_o\)))) # (!\inputData[2]~input_o\ & (\inputData[1]~input_o\ & (!\inputData[3]~input_o\ & !\inputData[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputData[2]~input_o\,
	datab => \inputData[1]~input_o\,
	datac => \inputData[3]~input_o\,
	datad => \inputData[0]~input_o\,
	combout => \print0|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y18_N22
\print0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print0|Mux1~0_combout\ = (\inputData[1]~input_o\ & ((\inputData[0]~input_o\ & ((\inputData[3]~input_o\))) # (!\inputData[0]~input_o\ & (\inputData[2]~input_o\)))) # (!\inputData[1]~input_o\ & (\inputData[2]~input_o\ & (\inputData[3]~input_o\ $ 
-- (\inputData[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputData[2]~input_o\,
	datab => \inputData[1]~input_o\,
	datac => \inputData[3]~input_o\,
	datad => \inputData[0]~input_o\,
	combout => \print0|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y18_N4
\print0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print0|Mux0~0_combout\ = (\inputData[2]~input_o\ & ((\inputData[3]~input_o\ & (!\inputData[1]~input_o\ & \inputData[0]~input_o\)) # (!\inputData[3]~input_o\ & ((!\inputData[0]~input_o\))))) # (!\inputData[2]~input_o\ & (\inputData[0]~input_o\ & 
-- (\inputData[1]~input_o\ $ (!\inputData[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputData[2]~input_o\,
	datab => \inputData[1]~input_o\,
	datac => \inputData[3]~input_o\,
	datad => \inputData[0]~input_o\,
	combout => \print0|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\inputData[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputData(5),
	o => \inputData[5]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\inputData[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputData(7),
	o => \inputData[7]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\inputData[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputData(6),
	o => \inputData[6]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\inputData[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputData(4),
	o => \inputData[4]~input_o\);

-- Location: LCCOMB_X114_Y18_N4
\print1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print1|Mux6~0_combout\ = (\inputData[4]~input_o\ & ((\inputData[7]~input_o\) # (\inputData[5]~input_o\ $ (\inputData[6]~input_o\)))) # (!\inputData[4]~input_o\ & ((\inputData[5]~input_o\) # (\inputData[7]~input_o\ $ (\inputData[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputData[5]~input_o\,
	datab => \inputData[7]~input_o\,
	datac => \inputData[6]~input_o\,
	datad => \inputData[4]~input_o\,
	combout => \print1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y18_N2
\print1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print1|Mux5~0_combout\ = (\inputData[5]~input_o\ & (!\inputData[7]~input_o\ & ((\inputData[4]~input_o\) # (!\inputData[6]~input_o\)))) # (!\inputData[5]~input_o\ & (\inputData[4]~input_o\ & (\inputData[7]~input_o\ $ (!\inputData[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputData[5]~input_o\,
	datab => \inputData[7]~input_o\,
	datac => \inputData[6]~input_o\,
	datad => \inputData[4]~input_o\,
	combout => \print1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y18_N12
\print1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print1|Mux4~0_combout\ = (\inputData[5]~input_o\ & (!\inputData[7]~input_o\ & ((\inputData[4]~input_o\)))) # (!\inputData[5]~input_o\ & ((\inputData[6]~input_o\ & (!\inputData[7]~input_o\)) # (!\inputData[6]~input_o\ & ((\inputData[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputData[5]~input_o\,
	datab => \inputData[7]~input_o\,
	datac => \inputData[6]~input_o\,
	datad => \inputData[4]~input_o\,
	combout => \print1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y18_N18
\print1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print1|Mux3~0_combout\ = (\inputData[4]~input_o\ & (\inputData[5]~input_o\ $ (((!\inputData[6]~input_o\))))) # (!\inputData[4]~input_o\ & ((\inputData[5]~input_o\ & (\inputData[7]~input_o\ & !\inputData[6]~input_o\)) # (!\inputData[5]~input_o\ & 
-- (!\inputData[7]~input_o\ & \inputData[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputData[5]~input_o\,
	datab => \inputData[7]~input_o\,
	datac => \inputData[6]~input_o\,
	datad => \inputData[4]~input_o\,
	combout => \print1|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y18_N8
\print1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print1|Mux2~0_combout\ = (\inputData[7]~input_o\ & (\inputData[6]~input_o\ & ((\inputData[5]~input_o\) # (!\inputData[4]~input_o\)))) # (!\inputData[7]~input_o\ & (\inputData[5]~input_o\ & (!\inputData[6]~input_o\ & !\inputData[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputData[5]~input_o\,
	datab => \inputData[7]~input_o\,
	datac => \inputData[6]~input_o\,
	datad => \inputData[4]~input_o\,
	combout => \print1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y18_N22
\print1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print1|Mux1~0_combout\ = (\inputData[5]~input_o\ & ((\inputData[4]~input_o\ & (\inputData[7]~input_o\)) # (!\inputData[4]~input_o\ & ((\inputData[6]~input_o\))))) # (!\inputData[5]~input_o\ & (\inputData[6]~input_o\ & (\inputData[7]~input_o\ $ 
-- (\inputData[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputData[5]~input_o\,
	datab => \inputData[7]~input_o\,
	datac => \inputData[6]~input_o\,
	datad => \inputData[4]~input_o\,
	combout => \print1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y18_N28
\print1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print1|Mux0~0_combout\ = (\inputData[7]~input_o\ & (\inputData[4]~input_o\ & (\inputData[5]~input_o\ $ (\inputData[6]~input_o\)))) # (!\inputData[7]~input_o\ & ((\inputData[6]~input_o\ & ((!\inputData[4]~input_o\))) # (!\inputData[6]~input_o\ & 
-- (!\inputData[5]~input_o\ & \inputData[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputData[5]~input_o\,
	datab => \inputData[7]~input_o\,
	datac => \inputData[6]~input_o\,
	datad => \inputData[4]~input_o\,
	combout => \print1|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\btn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn,
	o => \btn~input_o\);

-- Location: LCCOMB_X113_Y38_N12
\btnDebounce|counter[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[0]~20_combout\ = \btnDebounce|counter\(0) $ (VCC)
-- \btnDebounce|counter[0]~21\ = CARRY(\btnDebounce|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter\(0),
	datad => VCC,
	combout => \btnDebounce|counter[0]~20_combout\,
	cout => \btnDebounce|counter[0]~21\);

-- Location: LCCOMB_X113_Y38_N30
\btnDebounce|counter[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[9]~41_combout\ = (\btnDebounce|counter\(9) & (!\btnDebounce|counter[8]~40\)) # (!\btnDebounce|counter\(9) & ((\btnDebounce|counter[8]~40\) # (GND)))
-- \btnDebounce|counter[9]~42\ = CARRY((!\btnDebounce|counter[8]~40\) # (!\btnDebounce|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btnDebounce|counter\(9),
	datad => VCC,
	cin => \btnDebounce|counter[8]~40\,
	combout => \btnDebounce|counter[9]~41_combout\,
	cout => \btnDebounce|counter[9]~42\);

-- Location: LCCOMB_X113_Y37_N0
\btnDebounce|counter[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[10]~43_combout\ = (\btnDebounce|counter\(10) & (\btnDebounce|counter[9]~42\ $ (GND))) # (!\btnDebounce|counter\(10) & (!\btnDebounce|counter[9]~42\ & VCC))
-- \btnDebounce|counter[10]~44\ = CARRY((\btnDebounce|counter\(10) & !\btnDebounce|counter[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btnDebounce|counter\(10),
	datad => VCC,
	cin => \btnDebounce|counter[9]~42\,
	combout => \btnDebounce|counter[10]~43_combout\,
	cout => \btnDebounce|counter[10]~44\);

-- Location: LCCOMB_X113_Y38_N2
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X113_Y37_N1
\btnDebounce|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[10]~43_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(10));

-- Location: LCCOMB_X113_Y37_N2
\btnDebounce|counter[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[11]~45_combout\ = (\btnDebounce|counter\(11) & (!\btnDebounce|counter[10]~44\)) # (!\btnDebounce|counter\(11) & ((\btnDebounce|counter[10]~44\) # (GND)))
-- \btnDebounce|counter[11]~46\ = CARRY((!\btnDebounce|counter[10]~44\) # (!\btnDebounce|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter\(11),
	datad => VCC,
	cin => \btnDebounce|counter[10]~44\,
	combout => \btnDebounce|counter[11]~45_combout\,
	cout => \btnDebounce|counter[11]~46\);

-- Location: FF_X113_Y37_N3
\btnDebounce|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[11]~45_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(11));

-- Location: LCCOMB_X113_Y37_N4
\btnDebounce|counter[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[12]~47_combout\ = (\btnDebounce|counter\(12) & (\btnDebounce|counter[11]~46\ $ (GND))) # (!\btnDebounce|counter\(12) & (!\btnDebounce|counter[11]~46\ & VCC))
-- \btnDebounce|counter[12]~48\ = CARRY((\btnDebounce|counter\(12) & !\btnDebounce|counter[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter\(12),
	datad => VCC,
	cin => \btnDebounce|counter[11]~46\,
	combout => \btnDebounce|counter[12]~47_combout\,
	cout => \btnDebounce|counter[12]~48\);

-- Location: FF_X113_Y37_N5
\btnDebounce|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[12]~47_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(12));

-- Location: LCCOMB_X113_Y37_N6
\btnDebounce|counter[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[13]~49_combout\ = (\btnDebounce|counter\(13) & (!\btnDebounce|counter[12]~48\)) # (!\btnDebounce|counter\(13) & ((\btnDebounce|counter[12]~48\) # (GND)))
-- \btnDebounce|counter[13]~50\ = CARRY((!\btnDebounce|counter[12]~48\) # (!\btnDebounce|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btnDebounce|counter\(13),
	datad => VCC,
	cin => \btnDebounce|counter[12]~48\,
	combout => \btnDebounce|counter[13]~49_combout\,
	cout => \btnDebounce|counter[13]~50\);

-- Location: FF_X113_Y37_N7
\btnDebounce|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[13]~49_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(13));

-- Location: LCCOMB_X113_Y37_N8
\btnDebounce|counter[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[14]~51_combout\ = (\btnDebounce|counter\(14) & (\btnDebounce|counter[13]~50\ $ (GND))) # (!\btnDebounce|counter\(14) & (!\btnDebounce|counter[13]~50\ & VCC))
-- \btnDebounce|counter[14]~52\ = CARRY((\btnDebounce|counter\(14) & !\btnDebounce|counter[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter\(14),
	datad => VCC,
	cin => \btnDebounce|counter[13]~50\,
	combout => \btnDebounce|counter[14]~51_combout\,
	cout => \btnDebounce|counter[14]~52\);

-- Location: FF_X113_Y37_N9
\btnDebounce|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[14]~51_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(14));

-- Location: LCCOMB_X113_Y37_N10
\btnDebounce|counter[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[15]~53_combout\ = (\btnDebounce|counter\(15) & (!\btnDebounce|counter[14]~52\)) # (!\btnDebounce|counter\(15) & ((\btnDebounce|counter[14]~52\) # (GND)))
-- \btnDebounce|counter[15]~54\ = CARRY((!\btnDebounce|counter[14]~52\) # (!\btnDebounce|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btnDebounce|counter\(15),
	datad => VCC,
	cin => \btnDebounce|counter[14]~52\,
	combout => \btnDebounce|counter[15]~53_combout\,
	cout => \btnDebounce|counter[15]~54\);

-- Location: FF_X113_Y37_N11
\btnDebounce|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[15]~53_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(15));

-- Location: LCCOMB_X113_Y37_N12
\btnDebounce|counter[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[16]~55_combout\ = (\btnDebounce|counter\(16) & (\btnDebounce|counter[15]~54\ $ (GND))) # (!\btnDebounce|counter\(16) & (!\btnDebounce|counter[15]~54\ & VCC))
-- \btnDebounce|counter[16]~56\ = CARRY((\btnDebounce|counter\(16) & !\btnDebounce|counter[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter\(16),
	datad => VCC,
	cin => \btnDebounce|counter[15]~54\,
	combout => \btnDebounce|counter[16]~55_combout\,
	cout => \btnDebounce|counter[16]~56\);

-- Location: FF_X113_Y37_N13
\btnDebounce|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[16]~55_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(16));

-- Location: LCCOMB_X113_Y37_N14
\btnDebounce|counter[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[17]~57_combout\ = (\btnDebounce|counter\(17) & (!\btnDebounce|counter[16]~56\)) # (!\btnDebounce|counter\(17) & ((\btnDebounce|counter[16]~56\) # (GND)))
-- \btnDebounce|counter[17]~58\ = CARRY((!\btnDebounce|counter[16]~56\) # (!\btnDebounce|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btnDebounce|counter\(17),
	datad => VCC,
	cin => \btnDebounce|counter[16]~56\,
	combout => \btnDebounce|counter[17]~57_combout\,
	cout => \btnDebounce|counter[17]~58\);

-- Location: FF_X113_Y37_N15
\btnDebounce|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[17]~57_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(17));

-- Location: LCCOMB_X113_Y37_N16
\btnDebounce|counter[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[18]~59_combout\ = (\btnDebounce|counter\(18) & (\btnDebounce|counter[17]~58\ $ (GND))) # (!\btnDebounce|counter\(18) & (!\btnDebounce|counter[17]~58\ & VCC))
-- \btnDebounce|counter[18]~60\ = CARRY((\btnDebounce|counter\(18) & !\btnDebounce|counter[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btnDebounce|counter\(18),
	datad => VCC,
	cin => \btnDebounce|counter[17]~58\,
	combout => \btnDebounce|counter[18]~59_combout\,
	cout => \btnDebounce|counter[18]~60\);

-- Location: FF_X113_Y37_N17
\btnDebounce|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[18]~59_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(18));

-- Location: LCCOMB_X113_Y37_N18
\btnDebounce|counter[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[19]~61_combout\ = \btnDebounce|counter[18]~60\ $ (\btnDebounce|counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \btnDebounce|counter\(19),
	cin => \btnDebounce|counter[18]~60\,
	combout => \btnDebounce|counter[19]~61_combout\);

-- Location: FF_X113_Y37_N19
\btnDebounce|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[19]~61_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(19));

-- Location: LCCOMB_X113_Y37_N22
\btnDebounce|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|process_0~1_combout\ = (!\btnDebounce|counter\(16) & (!\btnDebounce|counter\(14) & (!\btnDebounce|counter\(17) & !\btnDebounce|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter\(16),
	datab => \btnDebounce|counter\(14),
	datac => \btnDebounce|counter\(17),
	datad => \btnDebounce|counter\(18),
	combout => \btnDebounce|process_0~1_combout\);

-- Location: LCCOMB_X113_Y37_N24
\btnDebounce|counter[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[19]~22_combout\ = (\btnDebounce|counter\(19)) # ((\btnDebounce|counter\(6)) # ((\btnDebounce|counter\(9)) # (!\btnDebounce|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter\(19),
	datab => \btnDebounce|counter\(6),
	datac => \btnDebounce|process_0~1_combout\,
	datad => \btnDebounce|counter\(9),
	combout => \btnDebounce|counter[19]~22_combout\);

-- Location: LCCOMB_X113_Y37_N30
\btnDebounce|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|Equal1~4_combout\ = (\btnDebounce|counter\(16) & (\btnDebounce|counter\(14) & (\btnDebounce|counter\(6) & \btnDebounce|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter\(16),
	datab => \btnDebounce|counter\(14),
	datac => \btnDebounce|counter\(6),
	datad => \btnDebounce|counter\(9),
	combout => \btnDebounce|Equal1~4_combout\);

-- Location: LCCOMB_X113_Y37_N20
\btnDebounce|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|Equal1~5_combout\ = (\btnDebounce|counter\(18) & (\btnDebounce|counter\(19) & (\btnDebounce|Equal1~4_combout\ & \btnDebounce|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter\(18),
	datab => \btnDebounce|counter\(19),
	datac => \btnDebounce|Equal1~4_combout\,
	datad => \btnDebounce|counter\(17),
	combout => \btnDebounce|Equal1~5_combout\);

-- Location: LCCOMB_X113_Y37_N26
\btnDebounce|counter[19]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[19]~23_combout\ = \btnDebounce|Equal1~5_combout\ $ (((!\btnDebounce|counter[19]~22_combout\ & !\btn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btnDebounce|counter[19]~22_combout\,
	datac => \btn~input_o\,
	datad => \btnDebounce|Equal1~5_combout\,
	combout => \btnDebounce|counter[19]~23_combout\);

-- Location: LCCOMB_X113_Y38_N6
\btnDebounce|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|Equal1~0_combout\ = (!\btnDebounce|counter\(0) & (!\btnDebounce|counter\(3) & (!\btnDebounce|counter\(1) & !\btnDebounce|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter\(0),
	datab => \btnDebounce|counter\(3),
	datac => \btnDebounce|counter\(1),
	datad => \btnDebounce|counter\(2),
	combout => \btnDebounce|Equal1~0_combout\);

-- Location: LCCOMB_X113_Y38_N8
\btnDebounce|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|Equal1~1_combout\ = (!\btnDebounce|counter\(5) & (!\btnDebounce|counter\(4) & (!\btnDebounce|counter\(7) & !\btnDebounce|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter\(5),
	datab => \btnDebounce|counter\(4),
	datac => \btnDebounce|counter\(7),
	datad => \btnDebounce|counter\(8),
	combout => \btnDebounce|Equal1~1_combout\);

-- Location: LCCOMB_X113_Y37_N28
\btnDebounce|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|Equal1~2_combout\ = (!\btnDebounce|counter\(13) & (!\btnDebounce|counter\(10) & (!\btnDebounce|counter\(12) & !\btnDebounce|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter\(13),
	datab => \btnDebounce|counter\(10),
	datac => \btnDebounce|counter\(12),
	datad => \btnDebounce|counter\(11),
	combout => \btnDebounce|Equal1~2_combout\);

-- Location: LCCOMB_X113_Y38_N10
\btnDebounce|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|Equal1~3_combout\ = (\btnDebounce|Equal1~0_combout\ & (\btnDebounce|Equal1~1_combout\ & (!\btnDebounce|counter\(15) & \btnDebounce|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|Equal1~0_combout\,
	datab => \btnDebounce|Equal1~1_combout\,
	datac => \btnDebounce|counter\(15),
	datad => \btnDebounce|Equal1~2_combout\,
	combout => \btnDebounce|Equal1~3_combout\);

-- Location: LCCOMB_X114_Y37_N10
\btnDebounce|counter[19]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[19]~24_combout\ = (\btnDebounce|Equal1~3_combout\ & (\btnDebounce|counter[19]~23_combout\ $ (((!\btnDebounce|counter[19]~22_combout\ & !\btnDebounce|btn_current~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter[19]~23_combout\,
	datab => \btnDebounce|counter[19]~22_combout\,
	datac => \btnDebounce|Equal1~3_combout\,
	datad => \btnDebounce|btn_current~q\,
	combout => \btnDebounce|counter[19]~24_combout\);

-- Location: FF_X113_Y38_N13
\btnDebounce|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[0]~20_combout\,
	asdata => \btnDebounce|process_0~2_combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(0));

-- Location: LCCOMB_X113_Y38_N14
\btnDebounce|counter[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[1]~25_combout\ = (\btnDebounce|counter\(1) & (!\btnDebounce|counter[0]~21\)) # (!\btnDebounce|counter\(1) & ((\btnDebounce|counter[0]~21\) # (GND)))
-- \btnDebounce|counter[1]~26\ = CARRY((!\btnDebounce|counter[0]~21\) # (!\btnDebounce|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btnDebounce|counter\(1),
	datad => VCC,
	cin => \btnDebounce|counter[0]~21\,
	combout => \btnDebounce|counter[1]~25_combout\,
	cout => \btnDebounce|counter[1]~26\);

-- Location: FF_X113_Y38_N15
\btnDebounce|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[1]~25_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(1));

-- Location: LCCOMB_X113_Y38_N16
\btnDebounce|counter[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[2]~27_combout\ = (\btnDebounce|counter\(2) & (\btnDebounce|counter[1]~26\ $ (GND))) # (!\btnDebounce|counter\(2) & (!\btnDebounce|counter[1]~26\ & VCC))
-- \btnDebounce|counter[2]~28\ = CARRY((\btnDebounce|counter\(2) & !\btnDebounce|counter[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btnDebounce|counter\(2),
	datad => VCC,
	cin => \btnDebounce|counter[1]~26\,
	combout => \btnDebounce|counter[2]~27_combout\,
	cout => \btnDebounce|counter[2]~28\);

-- Location: FF_X113_Y38_N17
\btnDebounce|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[2]~27_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(2));

-- Location: LCCOMB_X113_Y38_N18
\btnDebounce|counter[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[3]~29_combout\ = (\btnDebounce|counter\(3) & (!\btnDebounce|counter[2]~28\)) # (!\btnDebounce|counter\(3) & ((\btnDebounce|counter[2]~28\) # (GND)))
-- \btnDebounce|counter[3]~30\ = CARRY((!\btnDebounce|counter[2]~28\) # (!\btnDebounce|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btnDebounce|counter\(3),
	datad => VCC,
	cin => \btnDebounce|counter[2]~28\,
	combout => \btnDebounce|counter[3]~29_combout\,
	cout => \btnDebounce|counter[3]~30\);

-- Location: FF_X113_Y38_N19
\btnDebounce|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[3]~29_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(3));

-- Location: LCCOMB_X113_Y38_N20
\btnDebounce|counter[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[4]~31_combout\ = (\btnDebounce|counter\(4) & (\btnDebounce|counter[3]~30\ $ (GND))) # (!\btnDebounce|counter\(4) & (!\btnDebounce|counter[3]~30\ & VCC))
-- \btnDebounce|counter[4]~32\ = CARRY((\btnDebounce|counter\(4) & !\btnDebounce|counter[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btnDebounce|counter\(4),
	datad => VCC,
	cin => \btnDebounce|counter[3]~30\,
	combout => \btnDebounce|counter[4]~31_combout\,
	cout => \btnDebounce|counter[4]~32\);

-- Location: FF_X113_Y38_N21
\btnDebounce|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[4]~31_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(4));

-- Location: LCCOMB_X113_Y38_N22
\btnDebounce|counter[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[5]~33_combout\ = (\btnDebounce|counter\(5) & (!\btnDebounce|counter[4]~32\)) # (!\btnDebounce|counter\(5) & ((\btnDebounce|counter[4]~32\) # (GND)))
-- \btnDebounce|counter[5]~34\ = CARRY((!\btnDebounce|counter[4]~32\) # (!\btnDebounce|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter\(5),
	datad => VCC,
	cin => \btnDebounce|counter[4]~32\,
	combout => \btnDebounce|counter[5]~33_combout\,
	cout => \btnDebounce|counter[5]~34\);

-- Location: FF_X113_Y38_N23
\btnDebounce|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[5]~33_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(5));

-- Location: LCCOMB_X113_Y38_N24
\btnDebounce|counter[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[6]~35_combout\ = (\btnDebounce|counter\(6) & (\btnDebounce|counter[5]~34\ $ (GND))) # (!\btnDebounce|counter\(6) & (!\btnDebounce|counter[5]~34\ & VCC))
-- \btnDebounce|counter[6]~36\ = CARRY((\btnDebounce|counter\(6) & !\btnDebounce|counter[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btnDebounce|counter\(6),
	datad => VCC,
	cin => \btnDebounce|counter[5]~34\,
	combout => \btnDebounce|counter[6]~35_combout\,
	cout => \btnDebounce|counter[6]~36\);

-- Location: LCCOMB_X114_Y37_N12
\btnDebounce|counter[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[6]~feeder_combout\ = \btnDebounce|counter[6]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btnDebounce|counter[6]~35_combout\,
	combout => \btnDebounce|counter[6]~feeder_combout\);

-- Location: FF_X114_Y37_N13
\btnDebounce|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[6]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(6));

-- Location: LCCOMB_X113_Y38_N26
\btnDebounce|counter[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[7]~37_combout\ = (\btnDebounce|counter\(7) & (!\btnDebounce|counter[6]~36\)) # (!\btnDebounce|counter\(7) & ((\btnDebounce|counter[6]~36\) # (GND)))
-- \btnDebounce|counter[7]~38\ = CARRY((!\btnDebounce|counter[6]~36\) # (!\btnDebounce|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter\(7),
	datad => VCC,
	cin => \btnDebounce|counter[6]~36\,
	combout => \btnDebounce|counter[7]~37_combout\,
	cout => \btnDebounce|counter[7]~38\);

-- Location: FF_X113_Y38_N27
\btnDebounce|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[7]~37_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(7));

-- Location: LCCOMB_X113_Y38_N28
\btnDebounce|counter[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[8]~39_combout\ = (\btnDebounce|counter\(8) & (\btnDebounce|counter[7]~38\ $ (GND))) # (!\btnDebounce|counter\(8) & (!\btnDebounce|counter[7]~38\ & VCC))
-- \btnDebounce|counter[8]~40\ = CARRY((\btnDebounce|counter\(8) & !\btnDebounce|counter[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \btnDebounce|counter\(8),
	datad => VCC,
	cin => \btnDebounce|counter[7]~38\,
	combout => \btnDebounce|counter[8]~39_combout\,
	cout => \btnDebounce|counter[8]~40\);

-- Location: FF_X113_Y38_N29
\btnDebounce|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[8]~39_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(8));

-- Location: LCCOMB_X114_Y37_N26
\btnDebounce|counter[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|counter[9]~feeder_combout\ = \btnDebounce|counter[9]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btnDebounce|counter[9]~41_combout\,
	combout => \btnDebounce|counter[9]~feeder_combout\);

-- Location: FF_X114_Y37_N27
\btnDebounce|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|counter[9]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \btnDebounce|counter[19]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|counter\(9));

-- Location: LCCOMB_X114_Y37_N18
\btnDebounce|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|process_0~0_combout\ = (!\btnDebounce|counter\(9) & (!\btnDebounce|counter\(6) & (\btn~input_o\ $ (\btnDebounce|btn_current~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|counter\(9),
	datab => \btn~input_o\,
	datac => \btnDebounce|btn_current~q\,
	datad => \btnDebounce|counter\(6),
	combout => \btnDebounce|process_0~0_combout\);

-- Location: LCCOMB_X113_Y38_N4
\btnDebounce|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|process_0~2_combout\ = (\btnDebounce|process_0~0_combout\ & (!\btnDebounce|counter\(19) & (\btnDebounce|Equal1~3_combout\ & \btnDebounce|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|process_0~0_combout\,
	datab => \btnDebounce|counter\(19),
	datac => \btnDebounce|Equal1~3_combout\,
	datad => \btnDebounce|process_0~1_combout\,
	combout => \btnDebounce|process_0~2_combout\);

-- Location: LCCOMB_X113_Y38_N0
\btnDebounce|btn_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|btn_temp~0_combout\ = (\btnDebounce|process_0~2_combout\ & (\btn~input_o\)) # (!\btnDebounce|process_0~2_combout\ & ((\btnDebounce|btn_temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~input_o\,
	datac => \btnDebounce|btn_temp~q\,
	datad => \btnDebounce|process_0~2_combout\,
	combout => \btnDebounce|btn_temp~0_combout\);

-- Location: FF_X113_Y38_N1
\btnDebounce|btn_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|btn_temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|btn_temp~q\);

-- Location: LCCOMB_X114_Y37_N24
\btnDebounce|btn_current~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|btn_current~0_combout\ = (\btnDebounce|Equal1~5_combout\ & ((\btnDebounce|Equal1~3_combout\ & (\btnDebounce|btn_temp~q\)) # (!\btnDebounce|Equal1~3_combout\ & ((\btnDebounce|btn_current~q\))))) # (!\btnDebounce|Equal1~5_combout\ & 
-- (((\btnDebounce|btn_current~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|btn_temp~q\,
	datab => \btnDebounce|Equal1~5_combout\,
	datac => \btnDebounce|Equal1~3_combout\,
	datad => \btnDebounce|btn_current~q\,
	combout => \btnDebounce|btn_current~0_combout\);

-- Location: LCCOMB_X114_Y37_N0
\btnDebounce|btn_current~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \btnDebounce|btn_current~feeder_combout\ = \btnDebounce|btn_current~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btnDebounce|btn_current~0_combout\,
	combout => \btnDebounce|btn_current~feeder_combout\);

-- Location: FF_X114_Y37_N1
\btnDebounce|btn_current\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btnDebounce|btn_current~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btnDebounce|btn_current~q\);

-- Location: CLKCTRL_G9
\btnDebounce|btn_current~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \btnDebounce|btn_current~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \btnDebounce|btn_current~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y5_N15
\op[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(3),
	o => \op[3]~input_o\);

-- Location: FF_X89_Y6_N25
\info_register[0].op[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \op[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].op\(3));

-- Location: FF_X89_Y6_N21
\info_register[1].op[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[0].op\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].op\(3));

-- Location: FF_X89_Y6_N29
\info_register[2].op[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].op\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].op\(3));

-- Location: IOIBUF_X115_Y4_N15
\op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: FF_X89_Y7_N15
\info_register[0].op[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \op[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].op\(2));

-- Location: FF_X89_Y7_N29
\info_register[1].op[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[0].op\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].op\(2));

-- Location: FF_X89_Y7_N31
\info_register[2].op[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].op\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].op\(2));

-- Location: IOIBUF_X115_Y16_N8
\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: FF_X92_Y7_N17
\info_register[0].op[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \op[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].op\(1));

-- Location: LCCOMB_X92_Y7_N30
\info_register[1].op[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[1].op[1]~feeder_combout\ = \info_register[0].op\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[0].op\(1),
	combout => \info_register[1].op[1]~feeder_combout\);

-- Location: FF_X92_Y7_N31
\info_register[1].op[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[1].op[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].op\(1));

-- Location: FF_X92_Y7_N23
\info_register[2].op[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].op\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].op\(1));

-- Location: IOIBUF_X115_Y4_N22
\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: LCCOMB_X89_Y7_N26
\info_register[0].op[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[0].op[0]~feeder_combout\ = \op[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \op[0]~input_o\,
	combout => \info_register[0].op[0]~feeder_combout\);

-- Location: FF_X89_Y7_N27
\info_register[0].op[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[0].op[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].op\(0));

-- Location: FF_X89_Y7_N13
\info_register[1].op[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[0].op\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].op\(0));

-- Location: LCCOMB_X89_Y7_N8
\info_register[2].op[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[2].op[0]~feeder_combout\ = \info_register[1].op\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[1].op\(0),
	combout => \info_register[2].op[0]~feeder_combout\);

-- Location: FF_X89_Y7_N9
\info_register[2].op[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[2].op[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].op\(0));

-- Location: LCCOMB_X92_Y7_N14
\info_register[2].result[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[2].result[5]~4_combout\ = (\info_register[2].op\(3) & ((\info_register[2].op\(2)) # ((\info_register[2].op\(1)) # (\info_register[2].op\(0))))) # (!\info_register[2].op\(3) & (\info_register[2].op\(2) & (\info_register[2].op\(1) & 
-- \info_register[2].op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].op\(3),
	datab => \info_register[2].op\(2),
	datac => \info_register[2].op\(1),
	datad => \info_register[2].op\(0),
	combout => \info_register[2].result[5]~4_combout\);

-- Location: LCCOMB_X90_Y7_N10
\info_register[2].result[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[2].result[5]~3_combout\ = (\info_register[2].op\(3)) # ((\info_register[2].op\(2)) # (\info_register[2].op\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].op\(3),
	datab => \info_register[2].op\(2),
	datad => \info_register[2].op\(1),
	combout => \info_register[2].result[5]~3_combout\);

-- Location: LCCOMB_X94_Y8_N30
\info_register[3].result[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[3].result[2]~feeder_combout\ = \info_register[2].result\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[2].result\(2),
	combout => \info_register[3].result[2]~feeder_combout\);

-- Location: FF_X94_Y8_N31
\info_register[3].result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[3].result[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[3].result\(2));

-- Location: LCCOMB_X92_Y7_N12
\info_register[3].op[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[3].op[0]~feeder_combout\ = \info_register[2].op\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[2].op\(0),
	combout => \info_register[3].op[0]~feeder_combout\);

-- Location: FF_X92_Y7_N13
\info_register[3].op[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[3].op[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[3].op\(0));

-- Location: FF_X92_Y7_N15
\info_register[3].op[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[2].op\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[3].op\(1));

-- Location: FF_X92_Y7_N11
\info_register[3].op[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[2].op\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[3].op\(2));

-- Location: FF_X92_Y7_N29
\info_register[3].op[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[2].op\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[3].op\(3));

-- Location: LCCOMB_X92_Y7_N10
\Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (\info_register[3].op\(0) & (\info_register[3].op\(1) & (\info_register[3].op\(2) & \info_register[3].op\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[3].op\(0),
	datab => \info_register[3].op\(1),
	datac => \info_register[3].op\(2),
	datad => \info_register[3].op\(3),
	combout => \Equal9~0_combout\);

-- Location: IOIBUF_X115_Y7_N15
\rs[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs(0),
	o => \rs[0]~input_o\);

-- Location: FF_X98_Y7_N21
\info_register[0].rs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \rs[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].rs\(0));

-- Location: FF_X94_Y7_N1
\info_register[1].rs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[0].rs\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].rs\(0));

-- Location: FF_X92_Y7_N5
\info_register[2].rs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].rs\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].rs\(0));

-- Location: FF_X92_Y7_N3
\info_register[3].rs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[2].rs\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[3].rs\(0));

-- Location: IOIBUF_X115_Y9_N22
\rs[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs(1),
	o => \rs[1]~input_o\);

-- Location: LCCOMB_X107_Y6_N24
\info_register[0].rs[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[0].rs[1]~feeder_combout\ = \rs[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rs[1]~input_o\,
	combout => \info_register[0].rs[1]~feeder_combout\);

-- Location: FF_X107_Y6_N25
\info_register[0].rs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[0].rs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].rs\(1));

-- Location: LCCOMB_X95_Y6_N0
\info_register[1].rs[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[1].rs[1]~feeder_combout\ = \info_register[0].rs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[0].rs\(1),
	combout => \info_register[1].rs[1]~feeder_combout\);

-- Location: FF_X95_Y6_N1
\info_register[1].rs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[1].rs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].rs\(1));

-- Location: LCCOMB_X92_Y7_N26
\info_register[2].rs[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[2].rs[1]~feeder_combout\ = \info_register[1].rs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[1].rs\(1),
	combout => \info_register[2].rs[1]~feeder_combout\);

-- Location: FF_X92_Y7_N27
\info_register[2].rs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[2].rs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].rs\(1));

-- Location: FF_X92_Y7_N25
\info_register[3].rs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[2].rs\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[3].rs\(1));

-- Location: LCCOMB_X92_Y7_N22
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!\Equal9~0_combout\ & (\info_register[3].rs\(0) & \info_register[3].rs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \info_register[3].rs\(0),
	datad => \info_register[3].rs\(1),
	combout => \Decoder0~3_combout\);

-- Location: FF_X95_Y8_N5
\reg[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(2),
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][2]~q\);

-- Location: LCCOMB_X95_Y7_N0
\reg[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[1][2]~feeder_combout\ = \info_register[3].result\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[3].result\(2),
	combout => \reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X92_Y7_N2
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\Equal9~0_combout\ & (\info_register[3].rs\(0) & !\info_register[3].rs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datac => \info_register[3].rs\(0),
	datad => \info_register[3].rs\(1),
	combout => \Decoder0~0_combout\);

-- Location: FF_X95_Y7_N1
\reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \reg[1][2]~feeder_combout\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][2]~q\);

-- Location: LCCOMB_X95_Y7_N22
\reg[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[0][2]~feeder_combout\ = \info_register[3].result\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[3].result\(2),
	combout => \reg[0][2]~feeder_combout\);

-- Location: LCCOMB_X92_Y7_N24
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\Equal9~0_combout\ & (!\info_register[3].rs\(1) & !\info_register[3].rs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datac => \info_register[3].rs\(1),
	datad => \info_register[3].rs\(0),
	combout => \Decoder0~2_combout\);

-- Location: FF_X95_Y7_N23
\reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \reg[0][2]~feeder_combout\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][2]~q\);

-- Location: LCCOMB_X94_Y8_N28
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\info_register[1].rs\(0) & ((\reg[1][2]~q\) # ((\info_register[1].rs\(1))))) # (!\info_register[1].rs\(0) & (((\reg[0][2]~q\ & !\info_register[1].rs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[1].rs\(0),
	datab => \reg[1][2]~q\,
	datac => \reg[0][2]~q\,
	datad => \info_register[1].rs\(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X92_Y7_N0
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\Equal9~0_combout\ & (!\info_register[3].rs\(0) & \info_register[3].rs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \info_register[3].rs\(0),
	datad => \info_register[3].rs\(1),
	combout => \Decoder0~1_combout\);

-- Location: FF_X94_Y8_N5
\reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(2),
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][2]~q\);

-- Location: LCCOMB_X94_Y8_N24
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & ((\reg[3][2]~q\) # ((!\info_register[1].rs\(1))))) # (!\Mux13~0_combout\ & (((\reg[2][2]~q\ & \info_register[1].rs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][2]~q\,
	datab => \Mux13~0_combout\,
	datac => \reg[2][2]~q\,
	datad => \info_register[1].rs\(1),
	combout => \Mux13~1_combout\);

-- Location: FF_X94_Y8_N25
\info_register[1].readDataRs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRs\(2));

-- Location: LCCOMB_X90_Y8_N12
\info_register[2].readDataRs[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[2].readDataRs[2]~feeder_combout\ = \info_register[1].readDataRs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[1].readDataRs\(2),
	combout => \info_register[2].readDataRs[2]~feeder_combout\);

-- Location: FF_X90_Y8_N13
\info_register[2].readDataRs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[2].readDataRs[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRs\(2));

-- Location: IOIBUF_X115_Y10_N8
\rt[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rt(0),
	o => \rt[0]~input_o\);

-- Location: LCCOMB_X106_Y7_N14
\info_register[0].rt[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[0].rt[0]~feeder_combout\ = \rt[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rt[0]~input_o\,
	combout => \info_register[0].rt[0]~feeder_combout\);

-- Location: FF_X106_Y7_N15
\info_register[0].rt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[0].rt[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].rt\(0));

-- Location: FF_X94_Y7_N21
\info_register[1].rt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[0].rt\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].rt\(0));

-- Location: IOIBUF_X115_Y6_N15
\rt[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rt(1),
	o => \rt[1]~input_o\);

-- Location: LCCOMB_X103_Y6_N28
\info_register[0].rt[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[0].rt[1]~feeder_combout\ = \rt[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rt[1]~input_o\,
	combout => \info_register[0].rt[1]~feeder_combout\);

-- Location: FF_X103_Y6_N29
\info_register[0].rt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[0].rt[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].rt\(1));

-- Location: LCCOMB_X95_Y6_N2
\info_register[1].rt[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[1].rt[1]~feeder_combout\ = \info_register[0].rt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[0].rt\(1),
	combout => \info_register[1].rt[1]~feeder_combout\);

-- Location: FF_X95_Y6_N3
\info_register[1].rt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[1].rt[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].rt\(1));

-- Location: LCCOMB_X94_Y8_N22
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\info_register[1].rt\(1) & ((\reg[2][2]~q\) # ((\info_register[1].rt\(0))))) # (!\info_register[1].rt\(1) & (((\reg[0][2]~q\ & !\info_register[1].rt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[1].rt\(1),
	datab => \reg[2][2]~q\,
	datac => \reg[0][2]~q\,
	datad => \info_register[1].rt\(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X94_Y8_N2
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\info_register[1].rt\(0) & ((\Mux5~0_combout\ & ((\reg[3][2]~q\))) # (!\Mux5~0_combout\ & (\reg[1][2]~q\)))) # (!\info_register[1].rt\(0) & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[1].rt\(0),
	datab => \reg[1][2]~q\,
	datac => \Mux5~0_combout\,
	datad => \reg[3][2]~q\,
	combout => \Mux5~1_combout\);

-- Location: FF_X94_Y8_N3
\info_register[1].readDataRt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRt\(2));

-- Location: FF_X87_Y6_N1
\info_register[2].readDataRt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].readDataRt\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRt\(2));

-- Location: LCCOMB_X89_Y7_N10
\info_register~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~12_combout\ = (\info_register[2].op\(1) & (!\info_register[2].readDataRs\(2) & (\info_register[2].op\(2) & !\info_register[2].readDataRt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].op\(1),
	datab => \info_register[2].readDataRs\(2),
	datac => \info_register[2].op\(2),
	datad => \info_register[2].readDataRt\(2),
	combout => \info_register~12_combout\);

-- Location: LCCOMB_X89_Y7_N12
\info_register[2].result[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[2].result[5]~1_combout\ = (\info_register[2].op\(2) & ((\info_register[2].op\(1)) # (\info_register[2].op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].op\(1),
	datab => \info_register[2].op\(0),
	datad => \info_register[2].op\(2),
	combout => \info_register[2].result[5]~1_combout\);

-- Location: LCCOMB_X89_Y7_N28
\info_register[2].result[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[2].result[5]~2_combout\ = (\info_register[2].op\(1)) # (!\info_register[2].op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].op\(1),
	datad => \info_register[2].op\(2),
	combout => \info_register[2].result[5]~2_combout\);

-- Location: LCCOMB_X89_Y7_N24
\info_register~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~11_combout\ = (!\info_register[2].result[5]~2_combout\ & ((\info_register[2].readDataRt\(2) & ((\info_register[2].readDataRs\(2)) # (\info_register[2].result[5]~1_combout\))) # (!\info_register[2].readDataRt\(2) & 
-- (\info_register[2].readDataRs\(2) & \info_register[2].result[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(2),
	datab => \info_register[2].readDataRs\(2),
	datac => \info_register[2].result[5]~1_combout\,
	datad => \info_register[2].result[5]~2_combout\,
	combout => \info_register~11_combout\);

-- Location: LCCOMB_X88_Y6_N4
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\info_register[2].op\(1) & (!\info_register[2].op\(3) & (!\info_register[2].op\(2) & !\info_register[2].op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].op\(1),
	datab => \info_register[2].op\(3),
	datac => \info_register[2].op\(2),
	datad => \info_register[2].op\(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X88_Y7_N30
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \info_register[2].readDataRt\(2) $ (\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \info_register[2].readDataRt\(2),
	datad => \Equal2~0_combout\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X90_Y7_N8
\info_register[2].result[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[2].result[5]~0_combout\ = (\info_register[2].op\(3)) # ((\info_register[2].op\(0) & (!\info_register[2].op\(2) & !\info_register[2].op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].op\(0),
	datab => \info_register[2].op\(2),
	datac => \info_register[2].op\(3),
	datad => \info_register[2].op\(1),
	combout => \info_register[2].result[5]~0_combout\);

-- Location: LCCOMB_X106_Y7_N24
\info_register[0].inputData[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[0].inputData[1]~feeder_combout\ = \inputData[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inputData[1]~input_o\,
	combout => \info_register[0].inputData[1]~feeder_combout\);

-- Location: FF_X106_Y7_N25
\info_register[0].inputData[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[0].inputData[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].inputData\(1));

-- Location: LCCOMB_X98_Y7_N18
\info_register[1].inputData[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[1].inputData[1]~feeder_combout\ = \info_register[0].inputData\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[0].inputData\(1),
	combout => \info_register[1].inputData[1]~feeder_combout\);

-- Location: FF_X98_Y7_N19
\info_register[1].inputData[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[1].inputData[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].inputData\(1));

-- Location: FF_X90_Y7_N29
\info_register[2].inputData[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].inputData\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].inputData\(1));

-- Location: FF_X95_Y8_N25
\reg[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(1),
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][1]~q\);

-- Location: FF_X95_Y7_N9
\reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(1),
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][1]~q\);

-- Location: LCCOMB_X95_Y7_N10
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\info_register[1].rt\(0) & ((\info_register[1].rt\(1)) # ((\reg[1][1]~q\)))) # (!\info_register[1].rt\(0) & (!\info_register[1].rt\(1) & (\reg[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[1].rt\(0),
	datab => \info_register[1].rt\(1),
	datac => \reg[0][1]~q\,
	datad => \reg[1][1]~q\,
	combout => \Mux6~0_combout\);

-- Location: FF_X95_Y8_N19
\reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(1),
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][1]~q\);

-- Location: LCCOMB_X94_Y7_N28
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & ((\reg[3][1]~q\) # ((!\info_register[1].rt\(1))))) # (!\Mux6~0_combout\ & (((\reg[2][1]~q\ & \info_register[1].rt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][1]~q\,
	datab => \Mux6~0_combout\,
	datac => \reg[2][1]~q\,
	datad => \info_register[1].rt\(1),
	combout => \Mux6~1_combout\);

-- Location: FF_X94_Y7_N29
\info_register[1].readDataRt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRt\(1));

-- Location: FF_X87_Y6_N31
\info_register[2].readDataRt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].readDataRt\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRt\(1));

-- Location: LCCOMB_X88_Y7_N24
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \info_register[2].readDataRt\(1) $ (\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info_register[2].readDataRt\(1),
	datad => \Equal2~0_combout\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X92_Y6_N0
\info_register~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~5_combout\ = (!\info_register[2].op\(2) & (!\info_register[2].op\(0) & (\info_register[2].op\(3) & !\info_register[2].op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].op\(2),
	datab => \info_register[2].op\(0),
	datac => \info_register[2].op\(3),
	datad => \info_register[2].op\(1),
	combout => \info_register~5_combout\);

-- Location: LCCOMB_X89_Y6_N18
\info_register[0].inputData[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[0].inputData[3]~feeder_combout\ = \inputData[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inputData[3]~input_o\,
	combout => \info_register[0].inputData[3]~feeder_combout\);

-- Location: FF_X89_Y6_N19
\info_register[0].inputData[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[0].inputData[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].inputData\(3));

-- Location: LCCOMB_X89_Y6_N0
\info_register[1].inputData[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[1].inputData[3]~feeder_combout\ = \info_register[0].inputData\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[0].inputData\(3),
	combout => \info_register[1].inputData[3]~feeder_combout\);

-- Location: FF_X89_Y6_N1
\info_register[1].inputData[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[1].inputData[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].inputData\(3));

-- Location: FF_X90_Y7_N23
\info_register[2].inputData[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].inputData\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].inputData\(3));

-- Location: FF_X95_Y8_N9
\reg[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(3),
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][3]~q\);

-- Location: FF_X95_Y7_N31
\reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(3),
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][3]~q\);

-- Location: LCCOMB_X95_Y6_N8
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\info_register[1].rs\(0) & (((\info_register[1].rs\(1))))) # (!\info_register[1].rs\(0) & ((\info_register[1].rs\(1) & (\reg[2][3]~q\)) # (!\info_register[1].rs\(1) & ((\reg[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[2][3]~q\,
	datab => \info_register[1].rs\(0),
	datac => \reg[0][3]~q\,
	datad => \info_register[1].rs\(1),
	combout => \Mux12~0_combout\);

-- Location: FF_X95_Y7_N13
\reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(3),
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][3]~q\);

-- Location: LCCOMB_X95_Y6_N28
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\info_register[1].rs\(0) & ((\Mux12~0_combout\ & (\reg[3][3]~q\)) # (!\Mux12~0_combout\ & ((\reg[1][3]~q\))))) # (!\info_register[1].rs\(0) & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][3]~q\,
	datab => \info_register[1].rs\(0),
	datac => \Mux12~0_combout\,
	datad => \reg[1][3]~q\,
	combout => \Mux12~1_combout\);

-- Location: FF_X95_Y6_N29
\info_register[1].readDataRs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRs\(3));

-- Location: LCCOMB_X89_Y6_N4
\info_register[2].readDataRs[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[2].readDataRs[3]~feeder_combout\ = \info_register[1].readDataRs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[1].readDataRs\(3),
	combout => \info_register[2].readDataRs[3]~feeder_combout\);

-- Location: FF_X89_Y6_N5
\info_register[2].readDataRs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[2].readDataRs[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRs\(3));

-- Location: LCCOMB_X88_Y7_N0
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \info_register[2].readDataRt\(3) $ (\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(3),
	datad => \Equal2~0_combout\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X88_Y7_N12
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8_combout\ & ((\info_register[2].readDataRs\(2) & (!\Add0~7\)) # (!\info_register[2].readDataRs\(2) & ((\Add0~7\) # (GND))))) # (!\Add0~8_combout\ & ((\info_register[2].readDataRs\(2) & (\Add0~7\ & VCC)) # 
-- (!\info_register[2].readDataRs\(2) & (!\Add0~7\))))
-- \Add0~10\ = CARRY((\Add0~8_combout\ & ((!\Add0~7\) # (!\info_register[2].readDataRs\(2)))) # (!\Add0~8_combout\ & (!\info_register[2].readDataRs\(2) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \info_register[2].readDataRs\(2),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X88_Y7_N14
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\info_register[2].readDataRs\(3) $ (\Add0~11_combout\ $ (\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((\info_register[2].readDataRs\(3) & ((!\Add0~10\) # (!\Add0~11_combout\))) # (!\info_register[2].readDataRs\(3) & (!\Add0~11_combout\ & !\Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(3),
	datab => \Add0~11_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X89_Y7_N20
\info_register~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~18_combout\ = (!\info_register[2].readDataRs\(3) & (!\info_register[2].readDataRt\(3) & (\info_register[2].op\(1) & \info_register[2].op\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(3),
	datab => \info_register[2].readDataRt\(3),
	datac => \info_register[2].op\(1),
	datad => \info_register[2].op\(2),
	combout => \info_register~18_combout\);

-- Location: LCCOMB_X89_Y7_N22
\info_register~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~17_combout\ = (!\info_register[2].result[5]~2_combout\ & ((\info_register[2].readDataRs\(3) & ((\info_register[2].readDataRt\(3)) # (\info_register[2].result[5]~1_combout\))) # (!\info_register[2].readDataRs\(3) & 
-- (\info_register[2].readDataRt\(3) & \info_register[2].result[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(3),
	datab => \info_register[2].readDataRt\(3),
	datac => \info_register[2].result[5]~1_combout\,
	datad => \info_register[2].result[5]~2_combout\,
	combout => \info_register~17_combout\);

-- Location: LCCOMB_X89_Y7_N0
\info_register~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~19_combout\ = (\info_register~18_combout\) # ((\info_register~17_combout\) # ((\Add0~12_combout\ & !\info_register[2].op\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \info_register~18_combout\,
	datac => \info_register~17_combout\,
	datad => \info_register[2].op\(2),
	combout => \info_register~19_combout\);

-- Location: LCCOMB_X90_Y7_N22
\info_register~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~20_combout\ = (\info_register[2].result[5]~3_combout\ & ((\info_register[2].result[5]~0_combout\) # ((\info_register~19_combout\)))) # (!\info_register[2].result[5]~3_combout\ & (!\info_register[2].result[5]~0_combout\ & 
-- (\info_register[2].inputData\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result[5]~3_combout\,
	datab => \info_register[2].result[5]~0_combout\,
	datac => \info_register[2].inputData\(3),
	datad => \info_register~19_combout\,
	combout => \info_register~20_combout\);

-- Location: FF_X95_Y7_N3
\reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(0),
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][0]~q\);

-- Location: FF_X95_Y8_N1
\reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(0),
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][0]~q\);

-- Location: LCCOMB_X94_Y7_N22
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\info_register[1].rt\(0) & (\info_register[1].rt\(1))) # (!\info_register[1].rt\(0) & ((\info_register[1].rt\(1) & ((\reg[2][0]~q\))) # (!\info_register[1].rt\(1) & (\reg[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[1].rt\(0),
	datab => \info_register[1].rt\(1),
	datac => \reg[0][0]~q\,
	datad => \reg[2][0]~q\,
	combout => \Mux7~0_combout\);

-- Location: FF_X95_Y8_N29
\reg[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(0),
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][0]~q\);

-- Location: LCCOMB_X94_Y7_N26
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & ((\reg[3][0]~q\) # ((!\info_register[1].rt\(0))))) # (!\Mux7~0_combout\ & (((\info_register[1].rt\(0) & \reg[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \reg[3][0]~q\,
	datac => \info_register[1].rt\(0),
	datad => \reg[1][0]~q\,
	combout => \Mux7~1_combout\);

-- Location: FF_X94_Y7_N27
\info_register[1].readDataRt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRt\(0));

-- Location: FF_X87_Y6_N9
\info_register[2].readDataRt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].readDataRt\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRt\(0));

-- Location: FF_X96_Y7_N9
\reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(7),
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][7]~q\);

-- Location: FF_X92_Y7_N19
\reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(7),
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][7]~q\);

-- Location: LCCOMB_X92_Y7_N18
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\info_register[1].rs\(0) & (((\info_register[1].rs\(1))))) # (!\info_register[1].rs\(0) & ((\info_register[1].rs\(1) & (\reg[2][7]~q\)) # (!\info_register[1].rs\(1) & ((\reg[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[2][7]~q\,
	datab => \info_register[1].rs\(0),
	datac => \reg[0][7]~q\,
	datad => \info_register[1].rs\(1),
	combout => \Mux8~0_combout\);

-- Location: FF_X96_Y7_N13
\reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(7),
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][7]~q\);

-- Location: LCCOMB_X92_Y7_N6
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & ((\reg[3][7]~q\) # ((!\info_register[1].rs\(0))))) # (!\Mux8~0_combout\ & (((\info_register[1].rs\(0) & \reg[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][7]~q\,
	datab => \Mux8~0_combout\,
	datac => \info_register[1].rs\(0),
	datad => \reg[1][7]~q\,
	combout => \Mux8~1_combout\);

-- Location: FF_X92_Y7_N7
\info_register[1].readDataRs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRs\(7));

-- Location: FF_X87_Y6_N29
\info_register[2].readDataRs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].readDataRs\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRs\(7));

-- Location: FF_X96_Y7_N19
\reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(6),
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][6]~q\);

-- Location: FF_X95_Y7_N19
\reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(6),
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][6]~q\);

-- Location: LCCOMB_X94_Y7_N0
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\info_register[1].rs\(1) & (((\info_register[1].rs\(0))))) # (!\info_register[1].rs\(1) & ((\info_register[1].rs\(0) & (\reg[1][6]~q\)) # (!\info_register[1].rs\(0) & ((\reg[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[1][6]~q\,
	datab => \info_register[1].rs\(1),
	datac => \info_register[1].rs\(0),
	datad => \reg[0][6]~q\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X94_Y7_N14
\reg[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[2][6]~feeder_combout\ = \info_register[3].result\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[3].result\(6),
	combout => \reg[2][6]~feeder_combout\);

-- Location: FF_X94_Y7_N15
\reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \reg[2][6]~feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][6]~q\);

-- Location: LCCOMB_X94_Y7_N8
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & ((\reg[3][6]~q\) # ((!\info_register[1].rs\(1))))) # (!\Mux9~0_combout\ & (((\reg[2][6]~q\ & \info_register[1].rs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][6]~q\,
	datab => \Mux9~0_combout\,
	datac => \reg[2][6]~q\,
	datad => \info_register[1].rs\(1),
	combout => \Mux9~1_combout\);

-- Location: FF_X94_Y7_N9
\info_register[1].readDataRs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRs\(6));

-- Location: FF_X87_Y6_N7
\info_register[2].readDataRs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].readDataRs\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRs\(6));

-- Location: LCCOMB_X87_Y6_N28
\Div0|auto_generated|divider|divider|selnose[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[9]~7_combout\ = (\info_register[2].readDataRt\(1) & (((\info_register[2].readDataRt\(0) & !\info_register[2].readDataRs\(6))) # (!\info_register[2].readDataRs\(7)))) # (!\info_register[2].readDataRt\(1) & 
-- (\info_register[2].readDataRt\(0) & ((!\info_register[2].readDataRs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(1),
	datab => \info_register[2].readDataRt\(0),
	datac => \info_register[2].readDataRs\(7),
	datad => \info_register[2].readDataRs\(6),
	combout => \Div0|auto_generated|divider|divider|selnose[9]~7_combout\);

-- Location: LCCOMB_X87_Y7_N0
\Div0|auto_generated|divider|divider|selnose[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[9]~11_combout\ = (\Div0|auto_generated|divider|divider|selnose[9]~7_combout\) # ((\info_register[2].readDataRt\(3)) # ((\info_register[2].readDataRt\(2)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[27]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[9]~7_combout\,
	datab => \info_register[2].readDataRt\(3),
	datac => \Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	datad => \info_register[2].readDataRt\(2),
	combout => \Div0|auto_generated|divider|divider|selnose[9]~11_combout\);

-- Location: LCCOMB_X91_Y7_N12
\info_register~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~34_combout\ = (!\info_register[2].readDataRs\(6) & (!\info_register[2].readDataRt\(6) & (\info_register[2].op\(2) & \info_register[2].op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(6),
	datab => \info_register[2].readDataRt\(6),
	datac => \info_register[2].op\(2),
	datad => \info_register[2].op\(1),
	combout => \info_register~34_combout\);

-- Location: LCCOMB_X91_Y7_N10
\info_register~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~33_combout\ = (!\info_register[2].result[5]~2_combout\ & ((\info_register[2].readDataRs\(6) & ((\info_register[2].readDataRt\(6)) # (\info_register[2].result[5]~1_combout\))) # (!\info_register[2].readDataRs\(6) & 
-- (\info_register[2].readDataRt\(6) & \info_register[2].result[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result[5]~2_combout\,
	datab => \info_register[2].readDataRs\(6),
	datac => \info_register[2].readDataRt\(6),
	datad => \info_register[2].result[5]~1_combout\,
	combout => \info_register~33_combout\);

-- Location: LCCOMB_X88_Y7_N28
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \info_register[2].readDataRt\(6) $ (\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info_register[2].readDataRt\(6),
	datad => \Equal2~0_combout\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X88_Y7_N26
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \info_register[2].readDataRt\(5) $ (\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info_register[2].readDataRt\(5),
	datad => \Equal2~0_combout\,
	combout => \Add0~17_combout\);

-- Location: FF_X95_Y7_N29
\reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(5),
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][5]~q\);

-- Location: LCCOMB_X96_Y7_N30
\reg[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[3][5]~feeder_combout\ = \info_register[3].result\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[3].result\(5),
	combout => \reg[3][5]~feeder_combout\);

-- Location: FF_X96_Y7_N31
\reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \reg[3][5]~feeder_combout\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][5]~q\);

-- Location: LCCOMB_X97_Y7_N4
\reg[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[2][5]~feeder_combout\ = \info_register[3].result\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[3].result\(5),
	combout => \reg[2][5]~feeder_combout\);

-- Location: FF_X97_Y7_N5
\reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \reg[2][5]~feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][5]~q\);

-- Location: LCCOMB_X95_Y6_N10
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\info_register[1].rs\(0) & (((\info_register[1].rs\(1))))) # (!\info_register[1].rs\(0) & ((\info_register[1].rs\(1) & (\reg[2][5]~q\)) # (!\info_register[1].rs\(1) & ((\reg[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[2][5]~q\,
	datab => \info_register[1].rs\(0),
	datac => \reg[0][5]~q\,
	datad => \info_register[1].rs\(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X95_Y6_N18
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\info_register[1].rs\(0) & ((\Mux10~0_combout\ & ((\reg[3][5]~q\))) # (!\Mux10~0_combout\ & (\reg[1][5]~q\)))) # (!\info_register[1].rs\(0) & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[1][5]~q\,
	datab => \info_register[1].rs\(0),
	datac => \reg[3][5]~q\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: FF_X95_Y6_N19
\info_register[1].readDataRs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRs\(5));

-- Location: FF_X87_Y6_N5
\info_register[2].readDataRs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].readDataRs\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRs\(5));

-- Location: LCCOMB_X114_Y18_N10
\info_register[0].inputData[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[0].inputData[4]~feeder_combout\ = \inputData[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inputData[4]~input_o\,
	combout => \info_register[0].inputData[4]~feeder_combout\);

-- Location: FF_X114_Y18_N11
\info_register[0].inputData[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[0].inputData[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].inputData\(4));

-- Location: LCCOMB_X114_Y18_N26
\info_register[1].inputData[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[1].inputData[4]~feeder_combout\ = \info_register[0].inputData\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[0].inputData\(4),
	combout => \info_register[1].inputData[4]~feeder_combout\);

-- Location: FF_X114_Y18_N27
\info_register[1].inputData[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[1].inputData[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].inputData\(4));

-- Location: FF_X90_Y7_N25
\info_register[2].inputData[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].inputData\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].inputData\(4));

-- Location: FF_X95_Y7_N7
\reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(4),
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][4]~q\);

-- Location: LCCOMB_X96_Y7_N4
\reg[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[3][4]~feeder_combout\ = \info_register[3].result\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[3].result\(4),
	combout => \reg[3][4]~feeder_combout\);

-- Location: FF_X96_Y7_N5
\reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \reg[3][4]~feeder_combout\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[3][4]~q\);

-- Location: FF_X95_Y7_N17
\reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(4),
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][4]~q\);

-- Location: LCCOMB_X94_Y7_N16
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\info_register[1].rt\(0) & (\info_register[1].rt\(1))) # (!\info_register[1].rt\(0) & ((\info_register[1].rt\(1) & (\reg[2][4]~q\)) # (!\info_register[1].rt\(1) & ((\reg[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[1].rt\(0),
	datab => \info_register[1].rt\(1),
	datac => \reg[2][4]~q\,
	datad => \reg[0][4]~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X94_Y7_N18
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\info_register[1].rt\(0) & ((\Mux3~0_combout\ & ((\reg[3][4]~q\))) # (!\Mux3~0_combout\ & (\reg[1][4]~q\)))) # (!\info_register[1].rt\(0) & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[1][4]~q\,
	datab => \reg[3][4]~q\,
	datac => \info_register[1].rt\(0),
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: FF_X94_Y7_N19
\info_register[1].readDataRt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRt\(4));

-- Location: FF_X87_Y6_N21
\info_register[2].readDataRt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].readDataRt\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRt\(4));

-- Location: LCCOMB_X88_Y7_N4
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \info_register[2].readDataRt\(4) $ (\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info_register[2].readDataRt\(4),
	datad => \Equal2~0_combout\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X88_Y7_N16
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\info_register[2].readDataRs\(4) & ((\Add0~14_combout\ & (!\Add0~13\)) # (!\Add0~14_combout\ & (\Add0~13\ & VCC)))) # (!\info_register[2].readDataRs\(4) & ((\Add0~14_combout\ & ((\Add0~13\) # (GND))) # (!\Add0~14_combout\ & 
-- (!\Add0~13\))))
-- \Add0~16\ = CARRY((\info_register[2].readDataRs\(4) & (\Add0~14_combout\ & !\Add0~13\)) # (!\info_register[2].readDataRs\(4) & ((\Add0~14_combout\) # (!\Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(4),
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X89_Y7_N16
\info_register~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~23_combout\ = (!\info_register[2].result[5]~2_combout\ & ((\info_register[2].readDataRt\(4) & ((\info_register[2].readDataRs\(4)) # (\info_register[2].result[5]~1_combout\))) # (!\info_register[2].readDataRt\(4) & 
-- (\info_register[2].readDataRs\(4) & \info_register[2].result[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(4),
	datab => \info_register[2].readDataRs\(4),
	datac => \info_register[2].result[5]~1_combout\,
	datad => \info_register[2].result[5]~2_combout\,
	combout => \info_register~23_combout\);

-- Location: LCCOMB_X89_Y7_N2
\info_register~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~24_combout\ = (\info_register[2].op\(2) & (!\info_register[2].readDataRt\(4) & (\info_register[2].op\(1) & !\info_register[2].readDataRs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].op\(2),
	datab => \info_register[2].readDataRt\(4),
	datac => \info_register[2].op\(1),
	datad => \info_register[2].readDataRs\(4),
	combout => \info_register~24_combout\);

-- Location: LCCOMB_X89_Y7_N18
\info_register~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~25_combout\ = (\info_register~23_combout\) # ((\info_register~24_combout\) # ((\Add0~15_combout\ & !\info_register[2].op\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \info_register~23_combout\,
	datac => \info_register~24_combout\,
	datad => \info_register[2].op\(2),
	combout => \info_register~25_combout\);

-- Location: LCCOMB_X90_Y7_N24
\info_register~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~26_combout\ = (\info_register[2].result[5]~3_combout\ & ((\info_register[2].result[5]~0_combout\) # ((\info_register~25_combout\)))) # (!\info_register[2].result[5]~3_combout\ & (!\info_register[2].result[5]~0_combout\ & 
-- (\info_register[2].inputData\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result[5]~3_combout\,
	datab => \info_register[2].result[5]~0_combout\,
	datac => \info_register[2].inputData\(4),
	datad => \info_register~25_combout\,
	combout => \info_register~26_combout\);

-- Location: LCCOMB_X87_Y6_N30
\Div0|auto_generated|divider|divider|selnose[18]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[18]~8_combout\ = (!\info_register[2].readDataRt\(3) & \Div0|auto_generated|divider|divider|selnose[27]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(3),
	datad => \Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose[18]~8_combout\);

-- Location: LCCOMB_X87_Y6_N10
\Div0|auto_generated|divider|divider|StageOut[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~0_combout\ = (\info_register[2].readDataRt\(3)) # ((\info_register[2].readDataRt\(1) & (\info_register[2].readDataRt\(0) & !\info_register[2].readDataRs\(6))) # (!\info_register[2].readDataRt\(1) & 
-- (!\info_register[2].readDataRt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(1),
	datab => \info_register[2].readDataRt\(0),
	datac => \info_register[2].readDataRt\(3),
	datad => \info_register[2].readDataRs\(6),
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~0_combout\);

-- Location: LCCOMB_X87_Y6_N0
\Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\info_register[2].readDataRs\(7) & ((\Div0|auto_generated|divider|divider|StageOut[9]~0_combout\) # ((\info_register[2].readDataRt\(2)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[27]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(7),
	datab => \Div0|auto_generated|divider|divider|StageOut[9]~0_combout\,
	datac => \info_register[2].readDataRt\(2),
	datad => \Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X87_Y6_N8
\Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\info_register[2].readDataRt\(2)) # ((\info_register[2].readDataRt\(3)) # (!\info_register[2].readDataRt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info_register[2].readDataRt\(2),
	datac => \info_register[2].readDataRt\(0),
	datad => \info_register[2].readDataRt\(3),
	combout => \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X87_Y6_N6
\Div0|auto_generated|divider|divider|StageOut[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ = \info_register[2].readDataRs\(6) $ (((!\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & (!\Div0|auto_generated|divider|divider|selnose[9]~7_combout\ & 
-- \Div0|auto_generated|divider|divider|selnose[27]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[9]~7_combout\,
	datac => \info_register[2].readDataRs\(6),
	datad => \Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[8]~3_combout\);

-- Location: LCCOMB_X87_Y6_N12
\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\info_register[2].readDataRt\(0) & (\info_register[2].readDataRs\(5) $ (VCC))) # (!\info_register[2].readDataRt\(0) & ((\info_register[2].readDataRs\(5)) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\info_register[2].readDataRs\(5)) # (!\info_register[2].readDataRt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(0),
	datab => \info_register[2].readDataRs\(5),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X87_Y6_N14
\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\info_register[2].readDataRt\(1) & ((\Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\info_register[2].readDataRt\(1) & ((\Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\info_register[2].readDataRt\(1) & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\Div0|auto_generated|divider|divider|StageOut[8]~3_combout\))) # 
-- (!\info_register[2].readDataRt\(1) & (!\Div0|auto_generated|divider|divider|StageOut[8]~3_combout\ & !\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(1),
	datab => \Div0|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X87_Y6_N16
\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ $ (\info_register[2].readDataRt\(2) $ (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\info_register[2].readDataRt\(2)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & (!\info_register[2].readDataRt\(2) & !\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \info_register[2].readDataRt\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X87_Y6_N18
\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X87_Y6_N22
\Div0|auto_generated|divider|divider|StageOut[18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ = (\Div0|auto_generated|divider|divider|selnose[18]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[18]~8_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[18]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~4_combout\);

-- Location: LCCOMB_X88_Y6_N24
\Div0|auto_generated|divider|divider|StageOut[17]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ = (\Div0|auto_generated|divider|divider|selnose[18]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[8]~3_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[18]~8_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[8]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[18]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~5_combout\);

-- Location: LCCOMB_X87_Y6_N4
\Div0|auto_generated|divider|divider|StageOut[16]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ = (\Div0|auto_generated|divider|divider|selnose[18]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\info_register[2].readDataRs\(5)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))) # (!\Div0|auto_generated|divider|divider|selnose[18]~8_combout\ & 
-- (((\info_register[2].readDataRs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[18]~8_combout\,
	datac => \info_register[2].readDataRs\(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LCCOMB_X88_Y6_N14
\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\info_register[2].readDataRt\(0) & (\info_register[2].readDataRs\(4) $ (VCC))) # (!\info_register[2].readDataRt\(0) & ((\info_register[2].readDataRs\(4)) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\info_register[2].readDataRs\(4)) # (!\info_register[2].readDataRt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(0),
	datab => \info_register[2].readDataRs\(4),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X88_Y6_N16
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\info_register[2].readDataRt\(1) & ((\Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\info_register[2].readDataRt\(1) & ((\Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\info_register[2].readDataRt\(1) & ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (!\Div0|auto_generated|divider|divider|StageOut[16]~6_combout\))) # 
-- (!\info_register[2].readDataRt\(1) & (!\Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(1),
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X88_Y6_N18
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\info_register[2].readDataRt\(2) $ (\Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\info_register[2].readDataRt\(2) & (\Div0|auto_generated|divider|divider|StageOut[17]~5_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # 
-- (!\info_register[2].readDataRt\(2) & ((\Div0|auto_generated|divider|divider|StageOut[17]~5_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(2),
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X88_Y6_N20
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\info_register[2].readDataRt\(3) & ((\Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # (!\info_register[2].readDataRt\(3) & ((\Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\info_register[2].readDataRt\(3) & ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[18]~4_combout\))) # 
-- (!\info_register[2].readDataRt\(3) & (!\Div0|auto_generated|divider|divider|StageOut[18]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(3),
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X88_Y6_N22
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X89_Y6_N2
\info_register~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~45_combout\ = (\info_register~26_combout\ & (((\Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)))) # (!\info_register~26_combout\ & 
-- (\info_register[2].readDataRt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register~26_combout\,
	datab => \info_register[2].readDataRt\(4),
	datac => \Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \info_register~45_combout\);

-- Location: LCCOMB_X90_Y7_N6
\info_register~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~46_combout\ = (!\info_register[2].result[5]~4_combout\ & ((\info_register[2].result[5]~0_combout\ & (\info_register~45_combout\)) # (!\info_register[2].result[5]~0_combout\ & ((\info_register~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result[5]~4_combout\,
	datab => \info_register[2].result[5]~0_combout\,
	datac => \info_register~45_combout\,
	datad => \info_register~26_combout\,
	combout => \info_register~46_combout\);

-- Location: FF_X90_Y7_N7
\info_register[2].result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].result\(4));

-- Location: LCCOMB_X98_Y7_N14
\info_register[3].result[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[3].result[4]~feeder_combout\ = \info_register[2].result\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[2].result\(4),
	combout => \info_register[3].result[4]~feeder_combout\);

-- Location: FF_X98_Y7_N15
\info_register[3].result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[3].result[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[3].result\(4));

-- Location: FF_X94_Y7_N17
\reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(4),
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][4]~q\);

-- Location: LCCOMB_X95_Y7_N16
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\info_register[1].rs\(0) & ((\info_register[1].rs\(1)) # ((\reg[1][4]~q\)))) # (!\info_register[1].rs\(0) & (!\info_register[1].rs\(1) & (\reg[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[1].rs\(0),
	datab => \info_register[1].rs\(1),
	datac => \reg[0][4]~q\,
	datad => \reg[1][4]~q\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X94_Y7_N30
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\info_register[1].rs\(1) & ((\Mux11~0_combout\ & ((\reg[3][4]~q\))) # (!\Mux11~0_combout\ & (\reg[2][4]~q\)))) # (!\info_register[1].rs\(1) & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[2][4]~q\,
	datab => \info_register[1].rs\(1),
	datac => \reg[3][4]~q\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: FF_X94_Y7_N31
\info_register[1].readDataRs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRs\(4));

-- Location: FF_X88_Y6_N13
\info_register[2].readDataRs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].readDataRs\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRs\(4));

-- Location: LCCOMB_X88_Y7_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\Add0~17_combout\ $ (\info_register[2].readDataRs\(5) $ (\Add0~16\)))) # (GND)
-- \Add0~19\ = CARRY((\Add0~17_combout\ & (\info_register[2].readDataRs\(5) & !\Add0~16\)) # (!\Add0~17_combout\ & ((\info_register[2].readDataRs\(5)) # (!\Add0~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \info_register[2].readDataRs\(5),
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X88_Y7_N20
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\info_register[2].readDataRs\(6) & ((\Add0~20_combout\ & (!\Add0~19\)) # (!\Add0~20_combout\ & (\Add0~19\ & VCC)))) # (!\info_register[2].readDataRs\(6) & ((\Add0~20_combout\ & ((\Add0~19\) # (GND))) # (!\Add0~20_combout\ & 
-- (!\Add0~19\))))
-- \Add0~22\ = CARRY((\info_register[2].readDataRs\(6) & (\Add0~20_combout\ & !\Add0~19\)) # (!\info_register[2].readDataRs\(6) & ((\Add0~20_combout\) # (!\Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(6),
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X91_Y7_N20
\info_register~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~35_combout\ = (\info_register~34_combout\) # ((\info_register~33_combout\) # ((!\info_register[2].op\(2) & \Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register~34_combout\,
	datab => \info_register~33_combout\,
	datac => \info_register[2].op\(2),
	datad => \Add0~21_combout\,
	combout => \info_register~35_combout\);

-- Location: LCCOMB_X113_Y7_N18
\info_register[0].inputData[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[0].inputData[6]~feeder_combout\ = \inputData[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inputData[6]~input_o\,
	combout => \info_register[0].inputData[6]~feeder_combout\);

-- Location: FF_X113_Y7_N19
\info_register[0].inputData[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[0].inputData[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].inputData\(6));

-- Location: LCCOMB_X113_Y7_N16
\info_register[1].inputData[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[1].inputData[6]~feeder_combout\ = \info_register[0].inputData\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[0].inputData\(6),
	combout => \info_register[1].inputData[6]~feeder_combout\);

-- Location: FF_X113_Y7_N17
\info_register[1].inputData[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[1].inputData[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].inputData\(6));

-- Location: FF_X91_Y7_N25
\info_register[2].inputData[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].inputData\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].inputData\(6));

-- Location: LCCOMB_X91_Y7_N24
\info_register~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~36_combout\ = (\info_register[2].result[5]~3_combout\ & ((\info_register~35_combout\) # ((\info_register[2].result[5]~0_combout\)))) # (!\info_register[2].result[5]~3_combout\ & (((\info_register[2].inputData\(6) & 
-- !\info_register[2].result[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result[5]~3_combout\,
	datab => \info_register~35_combout\,
	datac => \info_register[2].inputData\(6),
	datad => \info_register[2].result[5]~0_combout\,
	combout => \info_register~36_combout\);

-- Location: LCCOMB_X91_Y7_N4
\info_register~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~37_combout\ = (\info_register~36_combout\ & (((!\info_register[2].result[5]~0_combout\)) # (!\Div0|auto_generated|divider|divider|selnose[9]~11_combout\))) # (!\info_register~36_combout\ & (((\info_register[2].readDataRt\(6) & 
-- \info_register[2].result[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[9]~11_combout\,
	datab => \info_register~36_combout\,
	datac => \info_register[2].readDataRt\(6),
	datad => \info_register[2].result[5]~0_combout\,
	combout => \info_register~37_combout\);

-- Location: LCCOMB_X91_Y7_N6
\info_register~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~38_combout\ = (!\info_register[2].result[5]~4_combout\ & \info_register~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info_register[2].result[5]~4_combout\,
	datac => \info_register~37_combout\,
	combout => \info_register~38_combout\);

-- Location: FF_X91_Y7_N7
\info_register[2].result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].result\(6));

-- Location: FF_X94_Y7_N11
\info_register[3].result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[2].result\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[3].result\(6));

-- Location: FF_X95_Y7_N21
\reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(6),
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][6]~q\);

-- Location: LCCOMB_X94_Y7_N20
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\info_register[1].rt\(1) & ((\reg[2][6]~q\) # ((\info_register[1].rt\(0))))) # (!\info_register[1].rt\(1) & (((!\info_register[1].rt\(0) & \reg[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[2][6]~q\,
	datab => \info_register[1].rt\(1),
	datac => \info_register[1].rt\(0),
	datad => \reg[0][6]~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X94_Y7_N24
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\info_register[1].rt\(0) & ((\Mux1~0_combout\ & ((\reg[3][6]~q\))) # (!\Mux1~0_combout\ & (\reg[1][6]~q\)))) # (!\info_register[1].rt\(0) & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[1][6]~q\,
	datab => \info_register[1].rt\(0),
	datac => \reg[3][6]~q\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: FF_X94_Y7_N25
\info_register[1].readDataRt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRt\(6));

-- Location: FF_X87_Y6_N25
\info_register[2].readDataRt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].readDataRt\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRt\(6));

-- Location: LCCOMB_X89_Y6_N10
\Div0|auto_generated|divider|divider|StageOut[27]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ = (\Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[18]~4_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[18]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~7_combout\);

-- Location: LCCOMB_X89_Y6_N12
\Div0|auto_generated|divider|divider|StageOut[26]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ = (\Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[17]~5_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~8_combout\);

-- Location: LCCOMB_X88_Y6_N6
\Div0|auto_generated|divider|divider|StageOut[25]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ = (\Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~6_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[16]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~9_combout\);

-- Location: LCCOMB_X88_Y6_N0
\Div0|auto_generated|divider|divider|StageOut[24]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ = (\Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\info_register[2].readDataRs\(4)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\)))) # (!\Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & 
-- (((\info_register[2].readDataRs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \info_register[2].readDataRs\(4),
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~10_combout\);

-- Location: LCCOMB_X89_Y6_N20
\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\info_register[2].readDataRt\(0) & (\info_register[2].readDataRs\(3) $ (VCC))) # (!\info_register[2].readDataRt\(0) & ((\info_register[2].readDataRs\(3)) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\info_register[2].readDataRs\(3)) # (!\info_register[2].readDataRt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(0),
	datab => \info_register[2].readDataRs\(3),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X89_Y6_N22
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & ((\info_register[2].readDataRt\(1) & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\info_register[2].readDataRt\(1) & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & ((\info_register[2].readDataRt\(1) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))) # (!\info_register[2].readDataRt\(1) & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & (\info_register[2].readDataRt\(1) & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[24]~10_combout\ & ((\info_register[2].readDataRt\(1)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[24]~10_combout\,
	datab => \info_register[2].readDataRt\(1),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X89_Y6_N24
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\info_register[2].readDataRt\(2) $ (\Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\info_register[2].readDataRt\(2) & (\Div0|auto_generated|divider|divider|StageOut[25]~9_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)) # 
-- (!\info_register[2].readDataRt\(2) & ((\Div0|auto_generated|divider|divider|StageOut[25]~9_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(2),
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~9_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X89_Y6_N26
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\info_register[2].readDataRt\(3) & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\info_register[2].readDataRt\(3) & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\info_register[2].readDataRt\(3) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # (!\info_register[2].readDataRt\(3) & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & (\info_register[2].readDataRt\(3) & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[26]~8_combout\ & ((\info_register[2].readDataRt\(3)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~8_combout\,
	datab => \info_register[2].readDataRt\(3),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X89_Y6_N28
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ $ (\info_register[2].readDataRt\(4) $ (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\) # (!\info_register[2].readDataRt\(4)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[27]~7_combout\ & (!\info_register[2].readDataRt\(4) & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~7_combout\,
	datab => \info_register[2].readDataRt\(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X89_Y6_N30
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X90_Y6_N30
\Div0|auto_generated|divider|divider|selnose[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(36) = (\info_register[2].readDataRt\(6)) # ((\info_register[2].readDataRt\(5)) # ((\info_register[2].readDataRt\(7)) # (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(6),
	datab => \info_register[2].readDataRt\(5),
	datac => \info_register[2].readDataRt\(7),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(36));

-- Location: LCCOMB_X90_Y6_N18
\info_register~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~21_combout\ = (\info_register~20_combout\ & (((!\Div0|auto_generated|divider|divider|selnose\(36))) # (!\info_register[2].result[5]~0_combout\))) # (!\info_register~20_combout\ & (\info_register[2].result[5]~0_combout\ & 
-- ((\info_register[2].readDataRt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register~20_combout\,
	datab => \info_register[2].result[5]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose\(36),
	datad => \info_register[2].readDataRt\(3),
	combout => \info_register~21_combout\);

-- Location: LCCOMB_X94_Y6_N20
\info_register~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~22_combout\ = (!\info_register[2].result[5]~4_combout\ & \info_register~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \info_register[2].result[5]~4_combout\,
	datad => \info_register~21_combout\,
	combout => \info_register~22_combout\);

-- Location: FF_X94_Y6_N21
\info_register[2].result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].result\(3));

-- Location: LCCOMB_X94_Y6_N18
\info_register[3].result[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[3].result[3]~feeder_combout\ = \info_register[2].result\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[2].result\(3),
	combout => \info_register[3].result[3]~feeder_combout\);

-- Location: FF_X94_Y6_N19
\info_register[3].result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[3].result[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[3].result\(3));

-- Location: FF_X95_Y8_N11
\reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(3),
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][3]~q\);

-- Location: LCCOMB_X95_Y6_N12
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\info_register[1].rt\(1) & (((\info_register[1].rt\(0))))) # (!\info_register[1].rt\(1) & ((\info_register[1].rt\(0) & ((\reg[1][3]~q\))) # (!\info_register[1].rt\(0) & (\reg[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[0][3]~q\,
	datab => \info_register[1].rt\(1),
	datac => \info_register[1].rt\(0),
	datad => \reg[1][3]~q\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X95_Y6_N4
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\info_register[1].rt\(1) & ((\Mux4~0_combout\ & ((\reg[3][3]~q\))) # (!\Mux4~0_combout\ & (\reg[2][3]~q\)))) # (!\info_register[1].rt\(1) & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[2][3]~q\,
	datab => \info_register[1].rt\(1),
	datac => \reg[3][3]~q\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: FF_X95_Y6_N5
\info_register[1].readDataRt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRt\(3));

-- Location: FF_X87_Y6_N11
\info_register[2].readDataRt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].readDataRt\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRt\(3));

-- Location: LCCOMB_X88_Y6_N26
\Div0|auto_generated|divider|divider|selnose[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(18) = ((\info_register[2].readDataRt\(3)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)) # (!\Div0|auto_generated|divider|divider|selnose[27]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	datac => \info_register[2].readDataRt\(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(18));

-- Location: FF_X90_Y7_N11
\info_register[0].inputData[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \inputData[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].inputData\(5));

-- Location: FF_X91_Y7_N23
\info_register[1].inputData[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[0].inputData\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].inputData\(5));

-- Location: FF_X91_Y7_N31
\info_register[2].inputData[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].inputData\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].inputData\(5));

-- Location: LCCOMB_X91_Y7_N30
\info_register~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~30_combout\ = (\info_register[2].result[5]~0_combout\ & ((\info_register[2].readDataRt\(5)) # ((\info_register[2].result[5]~3_combout\)))) # (!\info_register[2].result[5]~0_combout\ & (((\info_register[2].inputData\(5) & 
-- !\info_register[2].result[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result[5]~0_combout\,
	datab => \info_register[2].readDataRt\(5),
	datac => \info_register[2].inputData\(5),
	datad => \info_register[2].result[5]~3_combout\,
	combout => \info_register~30_combout\);

-- Location: LCCOMB_X91_Y7_N26
\info_register~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~27_combout\ = (!\info_register[2].result[5]~2_combout\ & ((\info_register[2].readDataRs\(5) & ((\info_register[2].readDataRt\(5)) # (\info_register[2].result[5]~1_combout\))) # (!\info_register[2].readDataRs\(5) & 
-- (\info_register[2].readDataRt\(5) & \info_register[2].result[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(5),
	datab => \info_register[2].readDataRt\(5),
	datac => \info_register[2].result[5]~2_combout\,
	datad => \info_register[2].result[5]~1_combout\,
	combout => \info_register~27_combout\);

-- Location: LCCOMB_X91_Y7_N8
\info_register~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~28_combout\ = (!\info_register[2].readDataRs\(5) & (!\info_register[2].readDataRt\(5) & (\info_register[2].op\(2) & \info_register[2].op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(5),
	datab => \info_register[2].readDataRt\(5),
	datac => \info_register[2].op\(2),
	datad => \info_register[2].op\(1),
	combout => \info_register~28_combout\);

-- Location: LCCOMB_X91_Y7_N2
\info_register~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~29_combout\ = (\info_register~27_combout\) # ((\info_register~28_combout\) # ((!\info_register[2].op\(2) & \Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register~27_combout\,
	datab => \info_register[2].op\(2),
	datac => \Add0~18_combout\,
	datad => \info_register~28_combout\,
	combout => \info_register~29_combout\);

-- Location: LCCOMB_X91_Y7_N28
\info_register~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~31_combout\ = (\info_register[2].result[5]~3_combout\ & ((\info_register~30_combout\ & (!\Div0|auto_generated|divider|divider|selnose\(18))) # (!\info_register~30_combout\ & ((\info_register~29_combout\))))) # 
-- (!\info_register[2].result[5]~3_combout\ & (((\info_register~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result[5]~3_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose\(18),
	datac => \info_register~30_combout\,
	datad => \info_register~29_combout\,
	combout => \info_register~31_combout\);

-- Location: LCCOMB_X98_Y7_N24
\info_register~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~32_combout\ = (\info_register~31_combout\ & !\info_register[2].result[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \info_register~31_combout\,
	datad => \info_register[2].result[5]~4_combout\,
	combout => \info_register~32_combout\);

-- Location: FF_X98_Y7_N25
\info_register[2].result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].result\(5));

-- Location: LCCOMB_X97_Y7_N6
\info_register[3].result[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[3].result[5]~feeder_combout\ = \info_register[2].result\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[2].result\(5),
	combout => \info_register[3].result[5]~feeder_combout\);

-- Location: FF_X97_Y7_N7
\info_register[3].result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[3].result[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[3].result\(5));

-- Location: FF_X95_Y7_N15
\reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(5),
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][5]~q\);

-- Location: LCCOMB_X95_Y6_N22
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\info_register[1].rt\(1) & (((\info_register[1].rt\(0))))) # (!\info_register[1].rt\(1) & ((\info_register[1].rt\(0) & ((\reg[1][5]~q\))) # (!\info_register[1].rt\(0) & (\reg[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[0][5]~q\,
	datab => \info_register[1].rt\(1),
	datac => \info_register[1].rt\(0),
	datad => \reg[1][5]~q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X95_Y6_N6
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((\reg[3][5]~q\) # ((!\info_register[1].rt\(1))))) # (!\Mux2~0_combout\ & (((\reg[2][5]~q\ & \info_register[1].rt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \reg[3][5]~q\,
	datac => \reg[2][5]~q\,
	datad => \info_register[1].rt\(1),
	combout => \Mux2~1_combout\);

-- Location: FF_X95_Y6_N7
\info_register[1].readDataRt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRt\(5));

-- Location: FF_X87_Y6_N27
\info_register[2].readDataRt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].readDataRt\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRt\(5));

-- Location: LCCOMB_X87_Y6_N24
\Div0|auto_generated|divider|divider|selnose[27]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[27]~6_combout\ = (!\info_register[2].readDataRt\(5) & (!\info_register[2].readDataRt\(4) & (!\info_register[2].readDataRt\(6) & !\info_register[2].readDataRt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(5),
	datab => \info_register[2].readDataRt\(4),
	datac => \info_register[2].readDataRt\(6),
	datad => \info_register[2].readDataRt\(7),
	combout => \Div0|auto_generated|divider|divider|selnose[27]~6_combout\);

-- Location: LCCOMB_X89_Y7_N14
\Div0|auto_generated|divider|divider|selnose[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[0]~12_combout\ = (\Div0|auto_generated|divider|divider|selnose[27]~6_combout\ & (!\info_register[2].readDataRt\(3) & !\info_register[2].readDataRt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[27]~6_combout\,
	datab => \info_register[2].readDataRt\(3),
	datad => \info_register[2].readDataRt\(2),
	combout => \Div0|auto_generated|divider|divider|selnose[0]~12_combout\);

-- Location: LCCOMB_X90_Y7_N26
\Div0|auto_generated|divider|divider|selnose[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(0) = (\info_register[2].readDataRt\(1)) # (((!\info_register[2].readDataRs\(7) & \info_register[2].readDataRt\(0))) # (!\Div0|auto_generated|divider|divider|selnose[0]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(1),
	datab => \Div0|auto_generated|divider|divider|selnose[0]~12_combout\,
	datac => \info_register[2].readDataRs\(7),
	datad => \info_register[2].readDataRt\(0),
	combout => \Div0|auto_generated|divider|divider|selnose\(0));

-- Location: FF_X114_Y18_N1
\info_register[0].inputData[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \inputData[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].inputData\(7));

-- Location: LCCOMB_X114_Y18_N24
\info_register[1].inputData[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[1].inputData[7]~feeder_combout\ = \info_register[0].inputData\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[0].inputData\(7),
	combout => \info_register[1].inputData[7]~feeder_combout\);

-- Location: FF_X114_Y18_N25
\info_register[1].inputData[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[1].inputData[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].inputData\(7));

-- Location: FF_X90_Y7_N5
\info_register[2].inputData[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].inputData\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].inputData\(7));

-- Location: LCCOMB_X90_Y7_N4
\info_register~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~42_combout\ = (\info_register[2].result[5]~3_combout\ & (\info_register[2].result[5]~0_combout\)) # (!\info_register[2].result[5]~3_combout\ & ((\info_register[2].result[5]~0_combout\ & ((\info_register[2].readDataRt\(7)))) # 
-- (!\info_register[2].result[5]~0_combout\ & (\info_register[2].inputData\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result[5]~3_combout\,
	datab => \info_register[2].result[5]~0_combout\,
	datac => \info_register[2].inputData\(7),
	datad => \info_register[2].readDataRt\(7),
	combout => \info_register~42_combout\);

-- Location: LCCOMB_X90_Y7_N12
\info_register~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~40_combout\ = (!\info_register[2].readDataRt\(7) & (\info_register[2].op\(2) & (!\info_register[2].readDataRs\(7) & \info_register[2].op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(7),
	datab => \info_register[2].op\(2),
	datac => \info_register[2].readDataRs\(7),
	datad => \info_register[2].op\(1),
	combout => \info_register~40_combout\);

-- Location: LCCOMB_X90_Y7_N14
\info_register~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~39_combout\ = (!\info_register[2].result[5]~2_combout\ & ((\info_register[2].readDataRt\(7) & ((\info_register[2].readDataRs\(7)) # (\info_register[2].result[5]~1_combout\))) # (!\info_register[2].readDataRt\(7) & 
-- (\info_register[2].readDataRs\(7) & \info_register[2].result[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(7),
	datab => \info_register[2].readDataRs\(7),
	datac => \info_register[2].result[5]~1_combout\,
	datad => \info_register[2].result[5]~2_combout\,
	combout => \info_register~39_combout\);

-- Location: LCCOMB_X88_Y7_N2
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \info_register[2].readDataRt\(7) $ (\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \info_register[2].readDataRt\(7),
	datad => \Equal2~0_combout\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X88_Y7_N22
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = \info_register[2].readDataRs\(7) $ (\Add0~22\ $ (\Add0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \info_register[2].readDataRs\(7),
	datad => \Add0~23_combout\,
	cin => \Add0~22\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X90_Y7_N30
\info_register~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~41_combout\ = (\info_register~40_combout\) # ((\info_register~39_combout\) # ((!\info_register[2].op\(2) & \Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register~40_combout\,
	datab => \info_register[2].op\(2),
	datac => \info_register~39_combout\,
	datad => \Add0~24_combout\,
	combout => \info_register~41_combout\);

-- Location: LCCOMB_X90_Y7_N16
\info_register~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~43_combout\ = (\info_register~42_combout\ & (((!\info_register[2].result[5]~3_combout\)) # (!\Div0|auto_generated|divider|divider|selnose\(0)))) # (!\info_register~42_combout\ & (((\info_register~41_combout\ & 
-- \info_register[2].result[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(0),
	datab => \info_register~42_combout\,
	datac => \info_register~41_combout\,
	datad => \info_register[2].result[5]~3_combout\,
	combout => \info_register~43_combout\);

-- Location: LCCOMB_X98_Y7_N10
\info_register~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~44_combout\ = (\info_register~43_combout\ & !\info_register[2].result[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \info_register~43_combout\,
	datad => \info_register[2].result[5]~4_combout\,
	combout => \info_register~44_combout\);

-- Location: FF_X98_Y7_N11
\info_register[2].result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].result\(7));

-- Location: LCCOMB_X98_Y7_N28
\info_register[3].result[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[3].result[7]~feeder_combout\ = \info_register[2].result\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[2].result\(7),
	combout => \info_register[3].result[7]~feeder_combout\);

-- Location: FF_X98_Y7_N29
\info_register[3].result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[3].result[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[3].result\(7));

-- Location: LCCOMB_X94_Y7_N12
\reg[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg[2][7]~feeder_combout\ = \info_register[3].result\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[3].result\(7),
	combout => \reg[2][7]~feeder_combout\);

-- Location: FF_X94_Y7_N13
\reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \reg[2][7]~feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[2][7]~q\);

-- Location: LCCOMB_X92_Y7_N8
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\info_register[1].rt\(0) & ((\info_register[1].rt\(1)) # ((\reg[1][7]~q\)))) # (!\info_register[1].rt\(0) & (!\info_register[1].rt\(1) & (\reg[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[1].rt\(0),
	datab => \info_register[1].rt\(1),
	datac => \reg[0][7]~q\,
	datad => \reg[1][7]~q\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X92_Y7_N20
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\info_register[1].rt\(1) & ((\Mux0~0_combout\ & ((\reg[3][7]~q\))) # (!\Mux0~0_combout\ & (\reg[2][7]~q\)))) # (!\info_register[1].rt\(1) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[2][7]~q\,
	datab => \info_register[1].rt\(1),
	datac => \Mux0~0_combout\,
	datad => \reg[3][7]~q\,
	combout => \Mux0~1_combout\);

-- Location: FF_X92_Y7_N21
\info_register[1].readDataRt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRt\(7));

-- Location: FF_X87_Y6_N3
\info_register[2].readDataRt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].readDataRt\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRt\(7));

-- Location: LCCOMB_X90_Y6_N28
\Div0|auto_generated|divider|divider|selnose[36]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[36]~9_combout\ = (!\info_register[2].readDataRt\(6) & (!\info_register[2].readDataRt\(5) & !\info_register[2].readDataRt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(6),
	datab => \info_register[2].readDataRt\(5),
	datad => \info_register[2].readDataRt\(7),
	combout => \Div0|auto_generated|divider|divider|selnose[36]~9_combout\);

-- Location: LCCOMB_X89_Y6_N8
\Div0|auto_generated|divider|divider|StageOut[36]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ = (\Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~7_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & (\Div0|auto_generated|divider|divider|StageOut[27]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[36]~9_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~11_combout\);

-- Location: LCCOMB_X90_Y6_N2
\Div0|auto_generated|divider|divider|selnose[45]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[45]~10_combout\ = (!\info_register[2].readDataRt\(6) & !\info_register[2].readDataRt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \info_register[2].readDataRt\(6),
	datad => \info_register[2].readDataRt\(7),
	combout => \Div0|auto_generated|divider|divider|selnose[45]~10_combout\);

-- Location: LCCOMB_X89_Y6_N14
\Div0|auto_generated|divider|divider|StageOut[35]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ = (\Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[26]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[36]~9_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[26]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\);

-- Location: LCCOMB_X89_Y6_N6
\Div0|auto_generated|divider|divider|StageOut[34]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ = (\Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[25]~9_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & (\Div0|auto_generated|divider|divider|StageOut[25]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[36]~9_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~9_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~13_combout\);

-- Location: LCCOMB_X89_Y6_N16
\Div0|auto_generated|divider|divider|StageOut[33]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ = (\Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[24]~10_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[24]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[36]~9_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[24]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~14_combout\);

-- Location: LCCOMB_X90_Y6_N26
\Div0|auto_generated|divider|divider|StageOut[32]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ = (\Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\info_register[2].readDataRs\(3)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\)))) # (!\Div0|auto_generated|divider|divider|selnose[36]~9_combout\ & 
-- (((\info_register[2].readDataRs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[36]~9_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datac => \info_register[2].readDataRs\(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~15_combout\);

-- Location: LCCOMB_X90_Y6_N4
\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\info_register[2].readDataRt\(0) & (\info_register[2].readDataRs\(2) $ (VCC))) # (!\info_register[2].readDataRt\(0) & ((\info_register[2].readDataRs\(2)) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\info_register[2].readDataRs\(2)) # (!\info_register[2].readDataRt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(0),
	datab => \info_register[2].readDataRs\(2),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X90_Y6_N6
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & ((\info_register[2].readDataRt\(1) & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # 
-- (!\info_register[2].readDataRt\(1) & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & ((\info_register[2].readDataRt\(1) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))) # (!\info_register[2].readDataRt\(1) & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & (\info_register[2].readDataRt\(1) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[32]~15_combout\ & ((\info_register[2].readDataRt\(1)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~15_combout\,
	datab => \info_register[2].readDataRt\(1),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X90_Y6_N8
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ $ (\info_register[2].readDataRt\(2) $ (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\) # (!\info_register[2].readDataRt\(2)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[33]~14_combout\ & (!\info_register[2].readDataRt\(2) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~14_combout\,
	datab => \info_register[2].readDataRt\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X90_Y6_N10
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\info_register[2].readDataRt\(3) & ((\Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))))) # (!\info_register[2].readDataRt\(3) & ((\Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\info_register[2].readDataRt\(3) & ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[34]~13_combout\))) # 
-- (!\info_register[2].readDataRt\(3) & (!\Div0|auto_generated|divider|divider|StageOut[34]~13_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(3),
	datab => \Div0|auto_generated|divider|divider|StageOut[34]~13_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X90_Y6_N12
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ $ (\info_register[2].readDataRt\(4) $ (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\) # (!\info_register[2].readDataRt\(4)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ & (!\info_register[2].readDataRt\(4) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\,
	datab => \info_register[2].readDataRt\(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X90_Y6_N14
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ & ((\info_register[2].readDataRt\(5) & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # 
-- (!\info_register[2].readDataRt\(5) & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ & ((\info_register[2].readDataRt\(5) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))) # (!\info_register[2].readDataRt\(5) & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ & (\info_register[2].readDataRt\(5) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[36]~11_combout\ & ((\info_register[2].readDataRt\(5)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[36]~11_combout\,
	datab => \info_register[2].readDataRt\(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

-- Location: LCCOMB_X90_Y6_N16
\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

-- Location: LCCOMB_X90_Y6_N20
\Div0|auto_generated|divider|divider|StageOut[45]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ = (\Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[36]~11_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[36]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[36]~11_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[45]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~16_combout\);

-- Location: LCCOMB_X91_Y6_N8
\Div0|auto_generated|divider|divider|StageOut[44]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ = (\Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[45]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~17_combout\);

-- Location: LCCOMB_X91_Y6_N30
\Div0|auto_generated|divider|divider|StageOut[43]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ = (\Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[34]~13_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[34]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[45]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[34]~13_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~18_combout\);

-- Location: LCCOMB_X91_Y6_N4
\Div0|auto_generated|divider|divider|StageOut[42]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ = (\Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[33]~14_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[33]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[45]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~19_combout\);

-- Location: LCCOMB_X90_Y6_N22
\Div0|auto_generated|divider|divider|StageOut[41]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~20_combout\ = (\Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[32]~15_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[32]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[45]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[32]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~20_combout\);

-- Location: LCCOMB_X90_Y6_N0
\Div0|auto_generated|divider|divider|StageOut[40]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ = (\Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\info_register[2].readDataRs\(2))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\))))) # (!\Div0|auto_generated|divider|divider|selnose[45]~10_combout\ & 
-- (\info_register[2].readDataRs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[45]~10_combout\,
	datab => \info_register[2].readDataRs\(2),
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~21_combout\);

-- Location: LCCOMB_X91_Y6_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\info_register[2].readDataRs\(1) & ((GND) # (!\info_register[2].readDataRt\(0)))) # (!\info_register[2].readDataRs\(1) & (\info_register[2].readDataRt\(0) $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\info_register[2].readDataRs\(1)) # (!\info_register[2].readDataRt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(1),
	datab => \info_register[2].readDataRt\(0),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X91_Y6_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & ((\info_register[2].readDataRt\(1) & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # 
-- (!\info_register[2].readDataRt\(1) & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & ((\info_register[2].readDataRt\(1) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))) # (!\info_register[2].readDataRt\(1) & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & (\info_register[2].readDataRt\(1) & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[40]~21_combout\ & ((\info_register[2].readDataRt\(1)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~21_combout\,
	datab => \info_register[2].readDataRt\(1),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X91_Y6_N14
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\info_register[2].readDataRt\(2) $ (\Div0|auto_generated|divider|divider|StageOut[41]~20_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\info_register[2].readDataRt\(2) & (\Div0|auto_generated|divider|divider|StageOut[41]~20_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)) # 
-- (!\info_register[2].readDataRt\(2) & ((\Div0|auto_generated|divider|divider|StageOut[41]~20_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(2),
	datab => \Div0|auto_generated|divider|divider|StageOut[41]~20_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X91_Y6_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\info_register[2].readDataRt\(3) & ((\Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))))) # (!\info_register[2].readDataRt\(3) & ((\Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\info_register[2].readDataRt\(3) & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[42]~19_combout\))) # 
-- (!\info_register[2].readDataRt\(3) & (!\Div0|auto_generated|divider|divider|StageOut[42]~19_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(3),
	datab => \Div0|auto_generated|divider|divider|StageOut[42]~19_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X91_Y6_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ $ (\info_register[2].readDataRt\(4) $ (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\) # (!\info_register[2].readDataRt\(4)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[43]~18_combout\ & (!\info_register[2].readDataRt\(4) & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[43]~18_combout\,
	datab => \info_register[2].readDataRt\(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

-- Location: LCCOMB_X91_Y6_N20
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\info_register[2].readDataRt\(5) & ((\Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))))) # (!\info_register[2].readDataRt\(5) & ((\Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\info_register[2].readDataRt\(5) & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[44]~17_combout\))) # 
-- (!\info_register[2].readDataRt\(5) & (!\Div0|auto_generated|divider|divider|StageOut[44]~17_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(5),
	datab => \Div0|auto_generated|divider|divider|StageOut[44]~17_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: LCCOMB_X91_Y6_N22
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\info_register[2].readDataRt\(6) $ (\Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\info_register[2].readDataRt\(6) & (\Div0|auto_generated|divider|divider|StageOut[45]~16_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)) # 
-- (!\info_register[2].readDataRt\(6) & ((\Div0|auto_generated|divider|divider|StageOut[45]~16_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(6),
	datab => \Div0|auto_generated|divider|divider|StageOut[45]~16_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

-- Location: LCCOMB_X91_Y6_N24
\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

-- Location: LCCOMB_X92_Y6_N30
\Div0|auto_generated|divider|divider|StageOut[54]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~22_combout\ = (\info_register[2].readDataRt\(7) & (((\Div0|auto_generated|divider|divider|StageOut[45]~16_combout\)))) # (!\info_register[2].readDataRt\(7) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[45]~16_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(7),
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[45]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~22_combout\);

-- Location: LCCOMB_X91_Y6_N6
\Div0|auto_generated|divider|divider|StageOut[53]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~23_combout\ = (\info_register[2].readDataRt\(7) & (((\Div0|auto_generated|divider|divider|StageOut[44]~17_combout\)))) # (!\info_register[2].readDataRt\(7) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[44]~17_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(7),
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[44]~17_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~23_combout\);

-- Location: LCCOMB_X91_Y6_N28
\Div0|auto_generated|divider|divider|StageOut[52]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~24_combout\ = (\info_register[2].readDataRt\(7) & (((\Div0|auto_generated|divider|divider|StageOut[43]~18_combout\)))) # (!\info_register[2].readDataRt\(7) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[43]~18_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(7),
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[43]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~24_combout\);

-- Location: LCCOMB_X91_Y6_N2
\Div0|auto_generated|divider|divider|StageOut[51]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~25_combout\ = (\info_register[2].readDataRt\(7) & (((\Div0|auto_generated|divider|divider|StageOut[42]~19_combout\)))) # (!\info_register[2].readDataRt\(7) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[42]~19_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(7),
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[42]~19_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~25_combout\);

-- Location: LCCOMB_X92_Y6_N24
\Div0|auto_generated|divider|divider|StageOut[50]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~26_combout\ = (\info_register[2].readDataRt\(7) & (((\Div0|auto_generated|divider|divider|StageOut[41]~20_combout\)))) # (!\info_register[2].readDataRt\(7) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[41]~20_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datab => \info_register[2].readDataRt\(7),
	datac => \Div0|auto_generated|divider|divider|StageOut[41]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~26_combout\);

-- Location: LCCOMB_X92_Y6_N26
\Div0|auto_generated|divider|divider|StageOut[49]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ = (\info_register[2].readDataRt\(7) & (((\Div0|auto_generated|divider|divider|StageOut[40]~21_combout\)))) # (!\info_register[2].readDataRt\(7) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[40]~21_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	datab => \info_register[2].readDataRt\(7),
	datac => \Div0|auto_generated|divider|divider|StageOut[40]~21_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~27_combout\);

-- Location: LCCOMB_X91_Y6_N0
\Div0|auto_generated|divider|divider|StageOut[48]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~28_combout\ = (\info_register[2].readDataRt\(7) & (((\info_register[2].readDataRs\(1))))) # (!\info_register[2].readDataRt\(7) & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\info_register[2].readDataRs\(1)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	datab => \info_register[2].readDataRt\(7),
	datac => \info_register[2].readDataRs\(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~28_combout\);

-- Location: LCCOMB_X92_Y6_N6
\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ = CARRY((\info_register[2].readDataRs\(0)) # (!\info_register[2].readDataRt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(0),
	datab => \info_register[2].readDataRt\(0),
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\);

-- Location: LCCOMB_X92_Y6_N8
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[48]~28_combout\ & (\info_register[2].readDataRt\(1) & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[48]~28_combout\ & ((\info_register[2].readDataRt\(1)) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[48]~28_combout\,
	datab => \info_register[2].readDataRt\(1),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\);

-- Location: LCCOMB_X92_Y6_N10
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\) # (!\info_register[2].readDataRt\(2)))) 
-- # (!\Div0|auto_generated|divider|divider|StageOut[49]~27_combout\ & (!\info_register[2].readDataRt\(2) & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[49]~27_combout\,
	datab => \info_register[2].readDataRt\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\);

-- Location: LCCOMB_X92_Y6_N12
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ = CARRY((\info_register[2].readDataRt\(3) & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[50]~26_combout\))) 
-- # (!\info_register[2].readDataRt\(3) & (!\Div0|auto_generated|divider|divider|StageOut[50]~26_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(3),
	datab => \Div0|auto_generated|divider|divider|StageOut[50]~26_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\);

-- Location: LCCOMB_X92_Y6_N14
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[51]~25_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\) # (!\info_register[2].readDataRt\(4)))) 
-- # (!\Div0|auto_generated|divider|divider|StageOut[51]~25_combout\ & (!\info_register[2].readDataRt\(4) & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~25_combout\,
	datab => \info_register[2].readDataRt\(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X92_Y6_N16
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\info_register[2].readDataRt\(5) & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[52]~24_combout\))) 
-- # (!\info_register[2].readDataRt\(5) & (!\Div0|auto_generated|divider|divider|StageOut[52]~24_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(5),
	datab => \Div0|auto_generated|divider|divider|StageOut[52]~24_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X92_Y6_N18
\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((\info_register[2].readDataRt\(6) & (\Div0|auto_generated|divider|divider|StageOut[53]~23_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\)) # 
-- (!\info_register[2].readDataRt\(6) & ((\Div0|auto_generated|divider|divider|StageOut[53]~23_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(6),
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~23_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X92_Y6_N20
\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[54]~22_combout\ & (\info_register[2].readDataRt\(7) & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[54]~22_combout\ & ((\info_register[2].readDataRt\(7)) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[54]~22_combout\,
	datab => \info_register[2].readDataRt\(7),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X92_Y6_N22
\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: FF_X89_Y6_N23
\info_register[0].inputData[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \inputData[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].inputData\(0));

-- Location: FF_X89_Y6_N31
\info_register[1].inputData[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[0].inputData\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].inputData\(0));

-- Location: FF_X88_Y6_N29
\info_register[2].inputData[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].inputData\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].inputData\(0));

-- Location: LCCOMB_X88_Y6_N28
\info_register~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~2_combout\ = (!\info_register[2].op\(2) & (\info_register[2].inputData\(0) & !\info_register[2].op\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \info_register[2].op\(2),
	datac => \info_register[2].inputData\(0),
	datad => \info_register[2].op\(0),
	combout => \info_register~2_combout\);

-- Location: LCCOMB_X88_Y6_N30
\info_register~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~3_combout\ = (\info_register[2].op\(0) & ((\info_register[2].readDataRt\(0)) # ((\info_register[2].op\(2) & \info_register[2].readDataRs\(0))))) # (!\info_register[2].op\(0) & (\info_register[2].op\(2) & (\info_register[2].readDataRs\(0) & 
-- \info_register[2].readDataRt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].op\(0),
	datab => \info_register[2].op\(2),
	datac => \info_register[2].readDataRs\(0),
	datad => \info_register[2].readDataRt\(0),
	combout => \info_register~3_combout\);

-- Location: LCCOMB_X88_Y5_N12
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\info_register[2].readDataRs\(0) & \info_register[2].readDataRt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(0),
	datab => \info_register[2].readDataRt\(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X88_Y5_N14
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\info_register[2].readDataRt\(1) & (\info_register[2].readDataRs\(1) & !\LessThan0~1_cout\)) # (!\info_register[2].readDataRt\(1) & ((\info_register[2].readDataRs\(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(1),
	datab => \info_register[2].readDataRs\(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X88_Y5_N16
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\info_register[2].readDataRt\(2) & ((!\LessThan0~3_cout\) # (!\info_register[2].readDataRs\(2)))) # (!\info_register[2].readDataRt\(2) & (!\info_register[2].readDataRs\(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(2),
	datab => \info_register[2].readDataRs\(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X88_Y5_N18
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\info_register[2].readDataRs\(3) & ((!\LessThan0~5_cout\) # (!\info_register[2].readDataRt\(3)))) # (!\info_register[2].readDataRs\(3) & (!\info_register[2].readDataRt\(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(3),
	datab => \info_register[2].readDataRt\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X88_Y5_N20
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\info_register[2].readDataRt\(4) & ((!\LessThan0~7_cout\) # (!\info_register[2].readDataRs\(4)))) # (!\info_register[2].readDataRt\(4) & (!\info_register[2].readDataRs\(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(4),
	datab => \info_register[2].readDataRs\(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X88_Y5_N22
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\info_register[2].readDataRt\(5) & (\info_register[2].readDataRs\(5) & !\LessThan0~9_cout\)) # (!\info_register[2].readDataRt\(5) & ((\info_register[2].readDataRs\(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(5),
	datab => \info_register[2].readDataRs\(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X88_Y5_N24
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\info_register[2].readDataRt\(6) & ((!\LessThan0~11_cout\) # (!\info_register[2].readDataRs\(6)))) # (!\info_register[2].readDataRt\(6) & (!\info_register[2].readDataRs\(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(6),
	datab => \info_register[2].readDataRs\(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X88_Y5_N26
\LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\info_register[2].readDataRs\(7) & (\LessThan0~13_cout\ & \info_register[2].readDataRt\(7))) # (!\info_register[2].readDataRs\(7) & ((\LessThan0~13_cout\) # (\info_register[2].readDataRt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(7),
	datad => \info_register[2].readDataRt\(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X88_Y6_N10
\info_register~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~0_combout\ = (\info_register[2].op\(0) & (\LessThan0~14_combout\)) # (!\info_register[2].op\(0) & (((!\info_register[2].readDataRs\(0) & !\info_register[2].readDataRt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~14_combout\,
	datab => \info_register[2].op\(0),
	datac => \info_register[2].readDataRs\(0),
	datad => \info_register[2].readDataRt\(0),
	combout => \info_register~0_combout\);

-- Location: LCCOMB_X88_Y6_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \Equal2~0_combout\ $ (\info_register[2].readDataRt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datad => \info_register[2].readDataRt\(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X88_Y7_N6
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(!\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X88_Y7_N8
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\info_register[2].readDataRs\(0) & ((\Add0~0_combout\ & (!\Add0~2_cout\)) # (!\Add0~0_combout\ & (\Add0~2_cout\ & VCC)))) # (!\info_register[2].readDataRs\(0) & ((\Add0~0_combout\ & ((\Add0~2_cout\) # (GND))) # (!\Add0~0_combout\ & 
-- (!\Add0~2_cout\))))
-- \Add0~4\ = CARRY((\info_register[2].readDataRs\(0) & (\Add0~0_combout\ & !\Add0~2_cout\)) # (!\info_register[2].readDataRs\(0) & ((\Add0~0_combout\) # (!\Add0~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(0),
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X88_Y6_N2
\info_register~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~1_combout\ = (\info_register[2].op\(1) & ((\info_register[2].op\(2) & (\info_register~0_combout\)) # (!\info_register[2].op\(2) & ((\Add0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register~0_combout\,
	datab => \Add0~3_combout\,
	datac => \info_register[2].op\(2),
	datad => \info_register[2].op\(1),
	combout => \info_register~1_combout\);

-- Location: LCCOMB_X88_Y6_N8
\info_register~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~4_combout\ = (\info_register~1_combout\) # ((!\info_register[2].op\(1) & ((\info_register~2_combout\) # (\info_register~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].op\(1),
	datab => \info_register~2_combout\,
	datac => \info_register~3_combout\,
	datad => \info_register~1_combout\,
	combout => \info_register~4_combout\);

-- Location: LCCOMB_X92_Y6_N4
\info_register~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~6_combout\ = (\info_register[2].op\(3) & (\info_register~5_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\))) # (!\info_register[2].op\(3) & ((\info_register~4_combout\) # ((\info_register~5_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].op\(3),
	datab => \info_register~5_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \info_register~4_combout\,
	combout => \info_register~6_combout\);

-- Location: FF_X92_Y6_N5
\info_register[2].result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].result\(0));

-- Location: FF_X95_Y6_N25
\info_register[3].result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[2].result\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[3].result\(0));

-- Location: FF_X95_Y7_N5
\reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(0),
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[1][0]~q\);

-- Location: LCCOMB_X95_Y7_N2
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\info_register[1].rs\(0) & ((\reg[1][0]~q\) # ((\info_register[1].rs\(1))))) # (!\info_register[1].rs\(0) & (((\reg[0][0]~q\ & !\info_register[1].rs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[1].rs\(0),
	datab => \reg[1][0]~q\,
	datac => \reg[0][0]~q\,
	datad => \info_register[1].rs\(1),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X94_Y7_N2
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & ((\reg[3][0]~q\) # ((!\info_register[1].rs\(1))))) # (!\Mux15~0_combout\ & (((\info_register[1].rs\(1) & \reg[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \reg[3][0]~q\,
	datac => \info_register[1].rs\(1),
	datad => \reg[2][0]~q\,
	combout => \Mux15~1_combout\);

-- Location: FF_X94_Y7_N3
\info_register[1].readDataRs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRs\(0));

-- Location: FF_X92_Y7_N1
\info_register[2].readDataRs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].readDataRs\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRs\(0));

-- Location: LCCOMB_X88_Y7_N10
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\info_register[2].readDataRs\(1) $ (\Add0~5_combout\ $ (\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\info_register[2].readDataRs\(1) & ((!\Add0~4\) # (!\Add0~5_combout\))) # (!\info_register[2].readDataRs\(1) & (!\Add0~5_combout\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRs\(1),
	datab => \Add0~5_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X91_Y7_N14
\info_register~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~8_combout\ = (!\info_register[2].readDataRt\(1) & (\info_register[2].op\(2) & (!\info_register[2].readDataRs\(1) & \info_register[2].op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(1),
	datab => \info_register[2].op\(2),
	datac => \info_register[2].readDataRs\(1),
	datad => \info_register[2].op\(1),
	combout => \info_register~8_combout\);

-- Location: LCCOMB_X90_Y7_N18
\info_register~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~7_combout\ = (!\info_register[2].result[5]~2_combout\ & ((\info_register[2].result[5]~1_combout\ & ((\info_register[2].readDataRs\(1)) # (\info_register[2].readDataRt\(1)))) # (!\info_register[2].result[5]~1_combout\ & 
-- (\info_register[2].readDataRs\(1) & \info_register[2].readDataRt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result[5]~1_combout\,
	datab => \info_register[2].result[5]~2_combout\,
	datac => \info_register[2].readDataRs\(1),
	datad => \info_register[2].readDataRt\(1),
	combout => \info_register~7_combout\);

-- Location: LCCOMB_X90_Y7_N20
\info_register~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~9_combout\ = (\info_register~8_combout\) # ((\info_register~7_combout\) # ((\Add0~6_combout\ & !\info_register[2].op\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \info_register[2].op\(2),
	datac => \info_register~8_combout\,
	datad => \info_register~7_combout\,
	combout => \info_register~9_combout\);

-- Location: LCCOMB_X90_Y7_N28
\info_register~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~10_combout\ = (\info_register[2].result[5]~3_combout\ & ((\info_register[2].result[5]~0_combout\) # ((\info_register~9_combout\)))) # (!\info_register[2].result[5]~3_combout\ & (!\info_register[2].result[5]~0_combout\ & 
-- (\info_register[2].inputData\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result[5]~3_combout\,
	datab => \info_register[2].result[5]~0_combout\,
	datac => \info_register[2].inputData\(1),
	datad => \info_register~9_combout\,
	combout => \info_register~10_combout\);

-- Location: LCCOMB_X90_Y7_N2
\info_register~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~47_combout\ = (\info_register~10_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & !\info_register[2].readDataRt\(7))))) # (!\info_register~10_combout\ & (\info_register[2].readDataRt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(1),
	datab => \info_register~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \info_register[2].readDataRt\(7),
	combout => \info_register~47_combout\);

-- Location: LCCOMB_X90_Y7_N0
\info_register~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~48_combout\ = (!\info_register[2].result[5]~4_combout\ & ((\info_register[2].result[5]~0_combout\ & ((\info_register~47_combout\))) # (!\info_register[2].result[5]~0_combout\ & (\info_register~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result[5]~4_combout\,
	datab => \info_register~10_combout\,
	datac => \info_register[2].result[5]~0_combout\,
	datad => \info_register~47_combout\,
	combout => \info_register~48_combout\);

-- Location: FF_X90_Y7_N1
\info_register[2].result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].result\(1));

-- Location: LCCOMB_X94_Y8_N16
\info_register[3].result[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[3].result[1]~feeder_combout\ = \info_register[2].result\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[2].result\(1),
	combout => \info_register[3].result[1]~feeder_combout\);

-- Location: FF_X94_Y8_N17
\info_register[3].result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[3].result[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[3].result\(1));

-- Location: FF_X95_Y7_N11
\reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[3].result\(1),
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg[0][1]~q\);

-- Location: LCCOMB_X94_Y7_N6
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\info_register[1].rs\(1) & (((\reg[2][1]~q\) # (\info_register[1].rs\(0))))) # (!\info_register[1].rs\(1) & (\reg[0][1]~q\ & ((!\info_register[1].rs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[0][1]~q\,
	datab => \reg[2][1]~q\,
	datac => \info_register[1].rs\(1),
	datad => \info_register[1].rs\(0),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X94_Y7_N4
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & (((\reg[3][1]~q\) # (!\info_register[1].rs\(0))))) # (!\Mux14~0_combout\ & (\reg[1][1]~q\ & ((\info_register[1].rs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \reg[1][1]~q\,
	datac => \reg[3][1]~q\,
	datad => \info_register[1].rs\(0),
	combout => \Mux14~1_combout\);

-- Location: FF_X94_Y7_N5
\info_register[1].readDataRs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].readDataRs\(1));

-- Location: FF_X91_Y7_N15
\info_register[2].readDataRs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].readDataRs\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].readDataRs\(1));

-- Location: LCCOMB_X89_Y7_N6
\info_register~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~13_combout\ = (\info_register~12_combout\) # ((\info_register~11_combout\) # ((\Add0~9_combout\ & !\info_register[2].op\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register~12_combout\,
	datab => \info_register~11_combout\,
	datac => \Add0~9_combout\,
	datad => \info_register[2].op\(2),
	combout => \info_register~13_combout\);

-- Location: LCCOMB_X111_Y18_N12
\info_register[0].inputData[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[0].inputData[2]~feeder_combout\ = \inputData[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inputData[2]~input_o\,
	combout => \info_register[0].inputData[2]~feeder_combout\);

-- Location: FF_X111_Y18_N13
\info_register[0].inputData[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[0].inputData[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[0].inputData\(2));

-- Location: LCCOMB_X111_Y18_N2
\info_register[1].inputData[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register[1].inputData[2]~feeder_combout\ = \info_register[0].inputData\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \info_register[0].inputData\(2),
	combout => \info_register[1].inputData[2]~feeder_combout\);

-- Location: FF_X111_Y18_N3
\info_register[1].inputData[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register[1].inputData[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[1].inputData\(2));

-- Location: FF_X91_Y7_N19
\info_register[2].inputData[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	asdata => \info_register[1].inputData\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].inputData\(2));

-- Location: LCCOMB_X91_Y7_N18
\info_register~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~14_combout\ = (\info_register[2].result[5]~0_combout\ & ((\info_register[2].readDataRt\(2)) # ((\info_register[2].result[5]~3_combout\)))) # (!\info_register[2].result[5]~0_combout\ & (((\info_register[2].inputData\(2) & 
-- !\info_register[2].result[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result[5]~0_combout\,
	datab => \info_register[2].readDataRt\(2),
	datac => \info_register[2].inputData\(2),
	datad => \info_register[2].result[5]~3_combout\,
	combout => \info_register~14_combout\);

-- Location: LCCOMB_X90_Y6_N24
\Div0|auto_generated|divider|divider|selnose[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(45) = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\) # ((\info_register[2].readDataRt\(6)) # (\info_register[2].readDataRt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datac => \info_register[2].readDataRt\(6),
	datad => \info_register[2].readDataRt\(7),
	combout => \Div0|auto_generated|divider|divider|selnose\(45));

-- Location: LCCOMB_X91_Y7_N0
\info_register~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~15_combout\ = (\info_register[2].result[5]~3_combout\ & ((\info_register~14_combout\ & ((!\Div0|auto_generated|divider|divider|selnose\(45)))) # (!\info_register~14_combout\ & (\info_register~13_combout\)))) # 
-- (!\info_register[2].result[5]~3_combout\ & (((\info_register~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result[5]~3_combout\,
	datab => \info_register~13_combout\,
	datac => \info_register~14_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose\(45),
	combout => \info_register~15_combout\);

-- Location: LCCOMB_X91_Y7_N16
\info_register~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \info_register~16_combout\ = (!\info_register[2].result[5]~4_combout\ & \info_register~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \info_register[2].result[5]~4_combout\,
	datad => \info_register~15_combout\,
	combout => \info_register~16_combout\);

-- Location: FF_X91_Y7_N17
\info_register[2].result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \info_register~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \info_register[2].result\(2));

-- Location: LCCOMB_X95_Y10_N4
\print2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print2|Mux6~0_combout\ = (\info_register[2].result\(0) & ((\info_register[2].result\(3)) # (\info_register[2].result\(2) $ (\info_register[2].result\(1))))) # (!\info_register[2].result\(0) & ((\info_register[2].result\(1)) # 
-- (\info_register[2].result\(2) $ (\info_register[2].result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result\(2),
	datab => \info_register[2].result\(0),
	datac => \info_register[2].result\(1),
	datad => \info_register[2].result\(3),
	combout => \print2|Mux6~0_combout\);

-- Location: LCCOMB_X95_Y10_N22
\print2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print2|Mux5~0_combout\ = (\info_register[2].result\(2) & (\info_register[2].result\(0) & (\info_register[2].result\(1) $ (\info_register[2].result\(3))))) # (!\info_register[2].result\(2) & (!\info_register[2].result\(3) & ((\info_register[2].result\(0)) 
-- # (\info_register[2].result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result\(2),
	datab => \info_register[2].result\(0),
	datac => \info_register[2].result\(1),
	datad => \info_register[2].result\(3),
	combout => \print2|Mux5~0_combout\);

-- Location: LCCOMB_X95_Y10_N20
\print2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print2|Mux4~0_combout\ = (\info_register[2].result\(1) & (((\info_register[2].result\(0) & !\info_register[2].result\(3))))) # (!\info_register[2].result\(1) & ((\info_register[2].result\(2) & ((!\info_register[2].result\(3)))) # 
-- (!\info_register[2].result\(2) & (\info_register[2].result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result\(2),
	datab => \info_register[2].result\(0),
	datac => \info_register[2].result\(1),
	datad => \info_register[2].result\(3),
	combout => \print2|Mux4~0_combout\);

-- Location: LCCOMB_X95_Y10_N10
\print2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print2|Mux3~0_combout\ = (\info_register[2].result\(0) & (\info_register[2].result\(2) $ ((!\info_register[2].result\(1))))) # (!\info_register[2].result\(0) & ((\info_register[2].result\(2) & (!\info_register[2].result\(1) & 
-- !\info_register[2].result\(3))) # (!\info_register[2].result\(2) & (\info_register[2].result\(1) & \info_register[2].result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result\(2),
	datab => \info_register[2].result\(0),
	datac => \info_register[2].result\(1),
	datad => \info_register[2].result\(3),
	combout => \print2|Mux3~0_combout\);

-- Location: LCCOMB_X95_Y10_N12
\print2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print2|Mux2~0_combout\ = (\info_register[2].result\(2) & (\info_register[2].result\(3) & ((\info_register[2].result\(1)) # (!\info_register[2].result\(0))))) # (!\info_register[2].result\(2) & (!\info_register[2].result\(0) & 
-- (\info_register[2].result\(1) & !\info_register[2].result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result\(2),
	datab => \info_register[2].result\(0),
	datac => \info_register[2].result\(1),
	datad => \info_register[2].result\(3),
	combout => \print2|Mux2~0_combout\);

-- Location: LCCOMB_X95_Y10_N6
\print2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print2|Mux1~0_combout\ = (\info_register[2].result\(1) & ((\info_register[2].result\(0) & ((\info_register[2].result\(3)))) # (!\info_register[2].result\(0) & (\info_register[2].result\(2))))) # (!\info_register[2].result\(1) & 
-- (\info_register[2].result\(2) & (\info_register[2].result\(0) $ (\info_register[2].result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result\(2),
	datab => \info_register[2].result\(0),
	datac => \info_register[2].result\(1),
	datad => \info_register[2].result\(3),
	combout => \print2|Mux1~0_combout\);

-- Location: LCCOMB_X95_Y10_N24
\print2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print2|Mux0~0_combout\ = (\info_register[2].result\(2) & ((\info_register[2].result\(0) & (!\info_register[2].result\(1) & \info_register[2].result\(3))) # (!\info_register[2].result\(0) & ((!\info_register[2].result\(3)))))) # 
-- (!\info_register[2].result\(2) & (\info_register[2].result\(0) & (\info_register[2].result\(1) $ (!\info_register[2].result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result\(2),
	datab => \info_register[2].result\(0),
	datac => \info_register[2].result\(1),
	datad => \info_register[2].result\(3),
	combout => \print2|Mux0~0_combout\);

-- Location: LCCOMB_X98_Y7_N4
\print3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print3|Mux6~0_combout\ = (\info_register[2].result\(4) & ((\info_register[2].result\(7)) # (\info_register[2].result\(5) $ (\info_register[2].result\(6))))) # (!\info_register[2].result\(4) & ((\info_register[2].result\(5)) # 
-- (\info_register[2].result\(6) $ (\info_register[2].result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result\(4),
	datab => \info_register[2].result\(5),
	datac => \info_register[2].result\(6),
	datad => \info_register[2].result\(7),
	combout => \print3|Mux6~0_combout\);

-- Location: LCCOMB_X98_Y7_N22
\print3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print3|Mux5~0_combout\ = (\info_register[2].result\(4) & (\info_register[2].result\(7) $ (((\info_register[2].result\(5)) # (!\info_register[2].result\(6)))))) # (!\info_register[2].result\(4) & (\info_register[2].result\(5) & 
-- (!\info_register[2].result\(6) & !\info_register[2].result\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result\(4),
	datab => \info_register[2].result\(5),
	datac => \info_register[2].result\(6),
	datad => \info_register[2].result\(7),
	combout => \print3|Mux5~0_combout\);

-- Location: LCCOMB_X98_Y7_N8
\print3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print3|Mux4~0_combout\ = (\info_register[2].result\(5) & (\info_register[2].result\(4) & ((!\info_register[2].result\(7))))) # (!\info_register[2].result\(5) & ((\info_register[2].result\(6) & ((!\info_register[2].result\(7)))) # 
-- (!\info_register[2].result\(6) & (\info_register[2].result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result\(4),
	datab => \info_register[2].result\(5),
	datac => \info_register[2].result\(6),
	datad => \info_register[2].result\(7),
	combout => \print3|Mux4~0_combout\);

-- Location: LCCOMB_X98_Y7_N30
\print3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print3|Mux3~0_combout\ = (\info_register[2].result\(4) & (\info_register[2].result\(5) $ ((!\info_register[2].result\(6))))) # (!\info_register[2].result\(4) & ((\info_register[2].result\(5) & (!\info_register[2].result\(6) & 
-- \info_register[2].result\(7))) # (!\info_register[2].result\(5) & (\info_register[2].result\(6) & !\info_register[2].result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result\(4),
	datab => \info_register[2].result\(5),
	datac => \info_register[2].result\(6),
	datad => \info_register[2].result\(7),
	combout => \print3|Mux3~0_combout\);

-- Location: LCCOMB_X98_Y7_N12
\print3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print3|Mux2~0_combout\ = (\info_register[2].result\(6) & (\info_register[2].result\(7) & ((\info_register[2].result\(5)) # (!\info_register[2].result\(4))))) # (!\info_register[2].result\(6) & (!\info_register[2].result\(4) & 
-- (\info_register[2].result\(5) & !\info_register[2].result\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result\(4),
	datab => \info_register[2].result\(5),
	datac => \info_register[2].result\(6),
	datad => \info_register[2].result\(7),
	combout => \print3|Mux2~0_combout\);

-- Location: LCCOMB_X98_Y7_N26
\print3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print3|Mux1~0_combout\ = (\info_register[2].result\(5) & ((\info_register[2].result\(4) & ((\info_register[2].result\(7)))) # (!\info_register[2].result\(4) & (\info_register[2].result\(6))))) # (!\info_register[2].result\(5) & 
-- (\info_register[2].result\(6) & (\info_register[2].result\(4) $ (\info_register[2].result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result\(4),
	datab => \info_register[2].result\(5),
	datac => \info_register[2].result\(6),
	datad => \info_register[2].result\(7),
	combout => \print3|Mux1~0_combout\);

-- Location: LCCOMB_X98_Y7_N0
\print3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print3|Mux0~0_combout\ = (\info_register[2].result\(4) & ((\info_register[2].result\(5) & (!\info_register[2].result\(6) & \info_register[2].result\(7))) # (!\info_register[2].result\(5) & (\info_register[2].result\(6) $ 
-- (!\info_register[2].result\(7)))))) # (!\info_register[2].result\(4) & (((\info_register[2].result\(6) & !\info_register[2].result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].result\(4),
	datab => \info_register[2].result\(5),
	datac => \info_register[2].result\(6),
	datad => \info_register[2].result\(7),
	combout => \print3|Mux0~0_combout\);

-- Location: LCCOMB_X88_Y4_N8
\print4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print4|Mux6~0_combout\ = (\info_register[2].readDataRt\(0) & ((\info_register[2].readDataRt\(3)) # (\info_register[2].readDataRt\(1) $ (\info_register[2].readDataRt\(2))))) # (!\info_register[2].readDataRt\(0) & ((\info_register[2].readDataRt\(1)) # 
-- (\info_register[2].readDataRt\(3) $ (\info_register[2].readDataRt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(1),
	datab => \info_register[2].readDataRt\(3),
	datac => \info_register[2].readDataRt\(2),
	datad => \info_register[2].readDataRt\(0),
	combout => \print4|Mux6~0_combout\);

-- Location: LCCOMB_X88_Y4_N14
\print4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print4|Mux5~0_combout\ = (\info_register[2].readDataRt\(1) & (!\info_register[2].readDataRt\(3) & ((\info_register[2].readDataRt\(0)) # (!\info_register[2].readDataRt\(2))))) # (!\info_register[2].readDataRt\(1) & (\info_register[2].readDataRt\(0) & 
-- (\info_register[2].readDataRt\(3) $ (!\info_register[2].readDataRt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(1),
	datab => \info_register[2].readDataRt\(3),
	datac => \info_register[2].readDataRt\(2),
	datad => \info_register[2].readDataRt\(0),
	combout => \print4|Mux5~0_combout\);

-- Location: LCCOMB_X88_Y4_N28
\print4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print4|Mux4~0_combout\ = (\info_register[2].readDataRt\(1) & (!\info_register[2].readDataRt\(3) & ((\info_register[2].readDataRt\(0))))) # (!\info_register[2].readDataRt\(1) & ((\info_register[2].readDataRt\(2) & (!\info_register[2].readDataRt\(3))) # 
-- (!\info_register[2].readDataRt\(2) & ((\info_register[2].readDataRt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(1),
	datab => \info_register[2].readDataRt\(3),
	datac => \info_register[2].readDataRt\(2),
	datad => \info_register[2].readDataRt\(0),
	combout => \print4|Mux4~0_combout\);

-- Location: LCCOMB_X88_Y4_N2
\print4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print4|Mux3~0_combout\ = (\info_register[2].readDataRt\(0) & (\info_register[2].readDataRt\(1) $ (((!\info_register[2].readDataRt\(2)))))) # (!\info_register[2].readDataRt\(0) & ((\info_register[2].readDataRt\(1) & (\info_register[2].readDataRt\(3) & 
-- !\info_register[2].readDataRt\(2))) # (!\info_register[2].readDataRt\(1) & (!\info_register[2].readDataRt\(3) & \info_register[2].readDataRt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(1),
	datab => \info_register[2].readDataRt\(3),
	datac => \info_register[2].readDataRt\(2),
	datad => \info_register[2].readDataRt\(0),
	combout => \print4|Mux3~0_combout\);

-- Location: LCCOMB_X88_Y4_N20
\print4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print4|Mux2~0_combout\ = (\info_register[2].readDataRt\(3) & (\info_register[2].readDataRt\(2) & ((\info_register[2].readDataRt\(1)) # (!\info_register[2].readDataRt\(0))))) # (!\info_register[2].readDataRt\(3) & (\info_register[2].readDataRt\(1) & 
-- (!\info_register[2].readDataRt\(2) & !\info_register[2].readDataRt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(1),
	datab => \info_register[2].readDataRt\(3),
	datac => \info_register[2].readDataRt\(2),
	datad => \info_register[2].readDataRt\(0),
	combout => \print4|Mux2~0_combout\);

-- Location: LCCOMB_X88_Y4_N6
\print4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print4|Mux1~0_combout\ = (\info_register[2].readDataRt\(1) & ((\info_register[2].readDataRt\(0) & (\info_register[2].readDataRt\(3))) # (!\info_register[2].readDataRt\(0) & ((\info_register[2].readDataRt\(2)))))) # (!\info_register[2].readDataRt\(1) & 
-- (\info_register[2].readDataRt\(2) & (\info_register[2].readDataRt\(3) $ (\info_register[2].readDataRt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(1),
	datab => \info_register[2].readDataRt\(3),
	datac => \info_register[2].readDataRt\(2),
	datad => \info_register[2].readDataRt\(0),
	combout => \print4|Mux1~0_combout\);

-- Location: LCCOMB_X92_Y6_N2
\print4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print4|Mux0~0_combout\ = (\info_register[2].readDataRt\(3) & (\info_register[2].readDataRt\(0) & (\info_register[2].readDataRt\(1) $ (\info_register[2].readDataRt\(2))))) # (!\info_register[2].readDataRt\(3) & ((\info_register[2].readDataRt\(2) & 
-- ((!\info_register[2].readDataRt\(0)))) # (!\info_register[2].readDataRt\(2) & (!\info_register[2].readDataRt\(1) & \info_register[2].readDataRt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(3),
	datab => \info_register[2].readDataRt\(1),
	datac => \info_register[2].readDataRt\(2),
	datad => \info_register[2].readDataRt\(0),
	combout => \print4|Mux0~0_combout\);

-- Location: LCCOMB_X88_Y5_N4
\print5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print5|Mux6~0_combout\ = (\info_register[2].readDataRt\(4) & ((\info_register[2].readDataRt\(7)) # (\info_register[2].readDataRt\(6) $ (\info_register[2].readDataRt\(5))))) # (!\info_register[2].readDataRt\(4) & ((\info_register[2].readDataRt\(5)) # 
-- (\info_register[2].readDataRt\(6) $ (\info_register[2].readDataRt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(6),
	datab => \info_register[2].readDataRt\(5),
	datac => \info_register[2].readDataRt\(4),
	datad => \info_register[2].readDataRt\(7),
	combout => \print5|Mux6~0_combout\);

-- Location: LCCOMB_X87_Y6_N20
\print5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print5|Mux5~0_combout\ = (\info_register[2].readDataRt\(5) & (!\info_register[2].readDataRt\(7) & ((\info_register[2].readDataRt\(4)) # (!\info_register[2].readDataRt\(6))))) # (!\info_register[2].readDataRt\(5) & (\info_register[2].readDataRt\(4) & 
-- (\info_register[2].readDataRt\(7) $ (!\info_register[2].readDataRt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(7),
	datab => \info_register[2].readDataRt\(5),
	datac => \info_register[2].readDataRt\(4),
	datad => \info_register[2].readDataRt\(6),
	combout => \print5|Mux5~0_combout\);

-- Location: LCCOMB_X88_Y5_N10
\print5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print5|Mux4~0_combout\ = (\info_register[2].readDataRt\(5) & (((\info_register[2].readDataRt\(4) & !\info_register[2].readDataRt\(7))))) # (!\info_register[2].readDataRt\(5) & ((\info_register[2].readDataRt\(6) & ((!\info_register[2].readDataRt\(7)))) # 
-- (!\info_register[2].readDataRt\(6) & (\info_register[2].readDataRt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(6),
	datab => \info_register[2].readDataRt\(5),
	datac => \info_register[2].readDataRt\(4),
	datad => \info_register[2].readDataRt\(7),
	combout => \print5|Mux4~0_combout\);

-- Location: LCCOMB_X87_Y6_N26
\print5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print5|Mux3~0_combout\ = (\info_register[2].readDataRt\(4) & ((\info_register[2].readDataRt\(5) $ (!\info_register[2].readDataRt\(6))))) # (!\info_register[2].readDataRt\(4) & ((\info_register[2].readDataRt\(7) & (\info_register[2].readDataRt\(5) & 
-- !\info_register[2].readDataRt\(6))) # (!\info_register[2].readDataRt\(7) & (!\info_register[2].readDataRt\(5) & \info_register[2].readDataRt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(7),
	datab => \info_register[2].readDataRt\(4),
	datac => \info_register[2].readDataRt\(5),
	datad => \info_register[2].readDataRt\(6),
	combout => \print5|Mux3~0_combout\);

-- Location: LCCOMB_X92_Y6_N28
\print5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print5|Mux2~0_combout\ = (\info_register[2].readDataRt\(6) & (\info_register[2].readDataRt\(7) & ((\info_register[2].readDataRt\(5)) # (!\info_register[2].readDataRt\(4))))) # (!\info_register[2].readDataRt\(6) & (!\info_register[2].readDataRt\(7) & 
-- (!\info_register[2].readDataRt\(4) & \info_register[2].readDataRt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(6),
	datab => \info_register[2].readDataRt\(7),
	datac => \info_register[2].readDataRt\(4),
	datad => \info_register[2].readDataRt\(5),
	combout => \print5|Mux2~0_combout\);

-- Location: LCCOMB_X88_Y5_N28
\print5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print5|Mux1~0_combout\ = (\info_register[2].readDataRt\(5) & ((\info_register[2].readDataRt\(4) & ((\info_register[2].readDataRt\(7)))) # (!\info_register[2].readDataRt\(4) & (\info_register[2].readDataRt\(6))))) # (!\info_register[2].readDataRt\(5) & 
-- (\info_register[2].readDataRt\(6) & (\info_register[2].readDataRt\(4) $ (\info_register[2].readDataRt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(6),
	datab => \info_register[2].readDataRt\(5),
	datac => \info_register[2].readDataRt\(4),
	datad => \info_register[2].readDataRt\(7),
	combout => \print5|Mux1~0_combout\);

-- Location: LCCOMB_X87_Y6_N2
\print5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print5|Mux0~0_combout\ = (\info_register[2].readDataRt\(4) & ((\info_register[2].readDataRt\(5) & (\info_register[2].readDataRt\(7) & !\info_register[2].readDataRt\(6))) # (!\info_register[2].readDataRt\(5) & (\info_register[2].readDataRt\(7) $ 
-- (!\info_register[2].readDataRt\(6)))))) # (!\info_register[2].readDataRt\(4) & (((!\info_register[2].readDataRt\(7) & \info_register[2].readDataRt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \info_register[2].readDataRt\(5),
	datab => \info_register[2].readDataRt\(4),
	datac => \info_register[2].readDataRt\(7),
	datad => \info_register[2].readDataRt\(6),
	combout => \print5|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y14_N8
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: LCCOMB_X95_Y7_N24
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\reg[1][3]~q\)) # (!\sel[0]~input_o\ & ((\reg[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \reg[1][3]~q\,
	datac => \reg[0][3]~q\,
	datad => \sel[0]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X95_Y8_N8
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & (((\reg[3][3]~q\) # (!\sel[1]~input_o\)))) # (!\Mux16~0_combout\ & (\reg[2][3]~q\ & ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[2][3]~q\,
	datab => \Mux16~0_combout\,
	datac => \reg[3][3]~q\,
	datad => \sel[1]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X95_Y7_N8
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\sel[1]~input_o\ & (\sel[0]~input_o\)) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\reg[1][1]~q\)) # (!\sel[0]~input_o\ & ((\reg[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \reg[1][1]~q\,
	datad => \reg[0][1]~q\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X95_Y8_N24
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\sel[1]~input_o\ & ((\Mux18~0_combout\ & (\reg[3][1]~q\)) # (!\Mux18~0_combout\ & ((\reg[2][1]~q\))))) # (!\sel[1]~input_o\ & (\Mux18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Mux18~0_combout\,
	datac => \reg[3][1]~q\,
	datad => \reg[2][1]~q\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X95_Y8_N2
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & ((\reg[2][2]~q\))) # (!\sel[1]~input_o\ & (\reg[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[0][2]~q\,
	datab => \sel[0]~input_o\,
	datac => \reg[2][2]~q\,
	datad => \sel[1]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X95_Y8_N4
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & (((\reg[3][2]~q\) # (!\sel[0]~input_o\)))) # (!\Mux17~0_combout\ & (\reg[1][2]~q\ & ((\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[1][2]~q\,
	datab => \Mux17~0_combout\,
	datac => \reg[3][2]~q\,
	datad => \sel[0]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X95_Y8_N6
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & ((\reg[2][0]~q\))) # (!\sel[1]~input_o\ & (\reg[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[0][0]~q\,
	datab => \sel[0]~input_o\,
	datac => \reg[2][0]~q\,
	datad => \sel[1]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X95_Y8_N28
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux19~0_combout\ & (((\reg[3][0]~q\)) # (!\sel[0]~input_o\))) # (!\Mux19~0_combout\ & (\sel[0]~input_o\ & ((\reg[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \sel[0]~input_o\,
	datac => \reg[3][0]~q\,
	datad => \reg[1][0]~q\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X95_Y8_N30
\print6|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print6|Mux6~0_combout\ = (\Mux19~1_combout\ & ((\Mux16~1_combout\) # (\Mux18~1_combout\ $ (\Mux17~1_combout\)))) # (!\Mux19~1_combout\ & ((\Mux18~1_combout\) # (\Mux16~1_combout\ $ (\Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \Mux18~1_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux19~1_combout\,
	combout => \print6|Mux6~0_combout\);

-- Location: LCCOMB_X95_Y8_N20
\print6|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print6|Mux5~0_combout\ = (\Mux18~1_combout\ & (!\Mux16~1_combout\ & ((\Mux19~1_combout\) # (!\Mux17~1_combout\)))) # (!\Mux18~1_combout\ & (\Mux19~1_combout\ & (\Mux16~1_combout\ $ (!\Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \Mux18~1_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux19~1_combout\,
	combout => \print6|Mux5~0_combout\);

-- Location: LCCOMB_X95_Y8_N14
\print6|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print6|Mux4~0_combout\ = (\Mux18~1_combout\ & (!\Mux16~1_combout\ & ((\Mux19~1_combout\)))) # (!\Mux18~1_combout\ & ((\Mux17~1_combout\ & (!\Mux16~1_combout\)) # (!\Mux17~1_combout\ & ((\Mux19~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \Mux18~1_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux19~1_combout\,
	combout => \print6|Mux4~0_combout\);

-- Location: LCCOMB_X95_Y8_N12
\print6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print6|Mux3~0_combout\ = (\Mux19~1_combout\ & ((\Mux18~1_combout\ $ (!\Mux17~1_combout\)))) # (!\Mux19~1_combout\ & ((\Mux16~1_combout\ & (\Mux18~1_combout\ & !\Mux17~1_combout\)) # (!\Mux16~1_combout\ & (!\Mux18~1_combout\ & \Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \Mux18~1_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux19~1_combout\,
	combout => \print6|Mux3~0_combout\);

-- Location: LCCOMB_X95_Y8_N22
\print6|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print6|Mux2~0_combout\ = (\Mux16~1_combout\ & (\Mux17~1_combout\ & ((\Mux18~1_combout\) # (!\Mux19~1_combout\)))) # (!\Mux16~1_combout\ & (\Mux18~1_combout\ & (!\Mux17~1_combout\ & !\Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \Mux18~1_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux19~1_combout\,
	combout => \print6|Mux2~0_combout\);

-- Location: LCCOMB_X95_Y8_N16
\print6|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print6|Mux1~0_combout\ = (\Mux16~1_combout\ & ((\Mux19~1_combout\ & (\Mux18~1_combout\)) # (!\Mux19~1_combout\ & ((\Mux17~1_combout\))))) # (!\Mux16~1_combout\ & (\Mux17~1_combout\ & (\Mux18~1_combout\ $ (\Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \Mux18~1_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux19~1_combout\,
	combout => \print6|Mux1~0_combout\);

-- Location: LCCOMB_X95_Y8_N26
\print6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print6|Mux0~0_combout\ = (\Mux16~1_combout\ & (\Mux19~1_combout\ & (\Mux18~1_combout\ $ (\Mux17~1_combout\)))) # (!\Mux16~1_combout\ & ((\Mux17~1_combout\ & ((!\Mux19~1_combout\))) # (!\Mux17~1_combout\ & (!\Mux18~1_combout\ & \Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \Mux18~1_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux19~1_combout\,
	combout => \print6|Mux0~0_combout\);

-- Location: LCCOMB_X96_Y7_N6
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\reg[1][7]~q\)) # (!\sel[0]~input_o\ & ((\reg[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[1][7]~q\,
	datab => \reg[0][7]~q\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X96_Y7_N22
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\sel[1]~input_o\ & ((\Mux20~0_combout\ & ((\reg[3][7]~q\))) # (!\Mux20~0_combout\ & (\reg[2][7]~q\)))) # (!\sel[1]~input_o\ & (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \reg[2][7]~q\,
	datac => \reg[3][7]~q\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X95_Y7_N18
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\sel[1]~input_o\ & ((\sel[0]~input_o\) # ((\reg[2][6]~q\)))) # (!\sel[1]~input_o\ & (!\sel[0]~input_o\ & (\reg[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \reg[0][6]~q\,
	datad => \reg[2][6]~q\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X95_Y7_N20
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\ & ((\reg[3][6]~q\) # ((!\sel[0]~input_o\)))) # (!\Mux21~0_combout\ & (((\reg[1][6]~q\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg[3][6]~q\,
	datab => \Mux21~0_combout\,
	datac => \reg[1][6]~q\,
	datad => \sel[0]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X95_Y7_N26
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\sel[1]~input_o\ & (((\reg[2][4]~q\) # (\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\reg[0][4]~q\ & ((!\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \reg[0][4]~q\,
	datac => \reg[2][4]~q\,
	datad => \sel[0]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X95_Y7_N6
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\ & (((\reg[3][4]~q\)) # (!\sel[0]~input_o\))) # (!\Mux23~0_combout\ & (\sel[0]~input_o\ & (\reg[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \sel[0]~input_o\,
	datac => \reg[1][4]~q\,
	datad => \reg[3][4]~q\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X95_Y7_N28
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\sel[1]~input_o\ & (\sel[0]~input_o\)) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\reg[1][5]~q\)) # (!\sel[0]~input_o\ & ((\reg[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \reg[1][5]~q\,
	datad => \reg[0][5]~q\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X96_Y7_N24
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\sel[1]~input_o\ & ((\Mux22~0_combout\ & ((\reg[3][5]~q\))) # (!\Mux22~0_combout\ & (\reg[2][5]~q\)))) # (!\sel[1]~input_o\ & (((\Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \reg[2][5]~q\,
	datac => \reg[3][5]~q\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X96_Y7_N0
\print7|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print7|Mux6~0_combout\ = (\Mux23~1_combout\ & ((\Mux20~1_combout\) # (\Mux21~1_combout\ $ (\Mux22~1_combout\)))) # (!\Mux23~1_combout\ & ((\Mux22~1_combout\) # (\Mux20~1_combout\ $ (\Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux21~1_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux22~1_combout\,
	combout => \print7|Mux6~0_combout\);

-- Location: LCCOMB_X96_Y7_N10
\print7|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print7|Mux5~0_combout\ = (\Mux21~1_combout\ & (\Mux23~1_combout\ & (\Mux20~1_combout\ $ (\Mux22~1_combout\)))) # (!\Mux21~1_combout\ & (!\Mux20~1_combout\ & ((\Mux23~1_combout\) # (\Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux21~1_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux22~1_combout\,
	combout => \print7|Mux5~0_combout\);

-- Location: LCCOMB_X96_Y7_N16
\print7|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print7|Mux4~0_combout\ = (\Mux22~1_combout\ & (!\Mux20~1_combout\ & ((\Mux23~1_combout\)))) # (!\Mux22~1_combout\ & ((\Mux21~1_combout\ & (!\Mux20~1_combout\)) # (!\Mux21~1_combout\ & ((\Mux23~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux21~1_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux22~1_combout\,
	combout => \print7|Mux4~0_combout\);

-- Location: LCCOMB_X96_Y7_N14
\print7|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print7|Mux3~0_combout\ = (\Mux23~1_combout\ & ((\Mux21~1_combout\ $ (!\Mux22~1_combout\)))) # (!\Mux23~1_combout\ & ((\Mux20~1_combout\ & (!\Mux21~1_combout\ & \Mux22~1_combout\)) # (!\Mux20~1_combout\ & (\Mux21~1_combout\ & !\Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux21~1_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux22~1_combout\,
	combout => \print7|Mux3~0_combout\);

-- Location: LCCOMB_X96_Y7_N28
\print7|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print7|Mux2~0_combout\ = (\Mux20~1_combout\ & (\Mux21~1_combout\ & ((\Mux22~1_combout\) # (!\Mux23~1_combout\)))) # (!\Mux20~1_combout\ & (!\Mux21~1_combout\ & (!\Mux23~1_combout\ & \Mux22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux21~1_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux22~1_combout\,
	combout => \print7|Mux2~0_combout\);

-- Location: LCCOMB_X96_Y7_N26
\print7|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print7|Mux1~0_combout\ = (\Mux20~1_combout\ & ((\Mux23~1_combout\ & ((\Mux22~1_combout\))) # (!\Mux23~1_combout\ & (\Mux21~1_combout\)))) # (!\Mux20~1_combout\ & (\Mux21~1_combout\ & (\Mux23~1_combout\ $ (\Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux21~1_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux22~1_combout\,
	combout => \print7|Mux1~0_combout\);

-- Location: LCCOMB_X96_Y7_N20
\print7|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print7|Mux0~0_combout\ = (\Mux20~1_combout\ & (\Mux23~1_combout\ & (\Mux21~1_combout\ $ (\Mux22~1_combout\)))) # (!\Mux20~1_combout\ & ((\Mux21~1_combout\ & (!\Mux23~1_combout\)) # (!\Mux21~1_combout\ & (\Mux23~1_combout\ & !\Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux21~1_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux22~1_combout\,
	combout => \print7|Mux0~0_combout\);

-- Location: LCCOMB_X89_Y7_N4
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (\op[2]~input_o\ & (\op[3]~input_o\ & (\op[1]~input_o\ & \op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \op[3]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X88_Y71_N20
\cycle[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[1]~0_combout\ = !\Equal10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal10~0_combout\,
	combout => \cycle[1]~0_combout\);

-- Location: FF_X88_Y71_N21
\cycle[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \cycle[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cycle[1]~reg0_q\);

-- Location: LCCOMB_X88_Y71_N2
\cycle[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[2]~reg0feeder_combout\ = \cycle[1]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cycle[1]~reg0_q\,
	combout => \cycle[2]~reg0feeder_combout\);

-- Location: FF_X88_Y71_N3
\cycle[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \cycle[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cycle[2]~reg0_q\);

-- Location: LCCOMB_X88_Y71_N8
\cycle[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cycle[3]~reg0feeder_combout\ = \cycle[2]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cycle[2]~reg0_q\,
	combout => \cycle[3]~reg0feeder_combout\);

-- Location: FF_X88_Y71_N9
\cycle[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \btnDebounce|ALT_INV_btn_current~clkctrl_outclk\,
	d => \cycle[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cycle[3]~reg0_q\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_hazard <= \hazard~output_o\;

ww_cycle(0) <= \cycle[0]~output_o\;

ww_cycle(1) <= \cycle[1]~output_o\;

ww_cycle(2) <= \cycle[2]~output_o\;

ww_cycle(3) <= \cycle[3]~output_o\;
END structure;


