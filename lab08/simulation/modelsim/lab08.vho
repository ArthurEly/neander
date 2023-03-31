-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/14/2023 13:40:23"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ulaumbit IS
    PORT (
	cout : OUT std_logic;
	x : IN std_logic;
	y : IN std_logic;
	cin : IN std_logic;
	\out\ : OUT std_logic;
	opcode : IN std_logic_vector(3 DOWNTO 0);
	\on\ : IN std_logic
	);
END ulaumbit;

-- Design Ports Information
-- cout	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- on	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ulaumbit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL \ww_out\ : std_logic;
SIGNAL ww_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_on\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \out~output_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \on~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \inst22~0_combout\ : std_logic;
SIGNAL \inst22~combout\ : std_logic;

BEGIN

cout <= ww_cout;
ww_x <= x;
ww_y <= y;
ww_cin <= cin;
\out\ <= \ww_out\;
ww_opcode <= opcode;
\ww_on\ <= \on\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y12_N23
\cout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22~combout\,
	devoe => ww_devoe,
	o => \out~output_o\);

-- Location: IOIBUF_X0_Y20_N1
\x~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\y~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LCCOMB_X4_Y20_N24
\inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\cin~input_o\) # ((\x~input_o\ & \y~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \y~input_o\,
	datad => \cin~input_o\,
	combout => \inst10~0_combout\);

-- Location: IOIBUF_X0_Y13_N22
\on~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_on\,
	o => \on~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\opcode[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\opcode[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\opcode[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\opcode[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

-- Location: LCCOMB_X4_Y20_N2
\inst22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22~0_combout\ = (\opcode[2]~input_o\ & (!\opcode[1]~input_o\ & (!\opcode[3]~input_o\ & \y~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[3]~input_o\,
	datad => \y~input_o\,
	combout => \inst22~0_combout\);

-- Location: LCCOMB_X4_Y20_N4
inst22 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22~combout\ = (\on~input_o\ & (!\opcode[0]~input_o\ & \inst22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \on~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \inst22~0_combout\,
	combout => \inst22~combout\);

ww_cout <= \cout~output_o\;

\ww_out\ <= \out~output_o\;
END structure;


