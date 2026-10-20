-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/13/2026 08:36:09"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	Practica_04 IS
    PORT (
	S10 : OUT std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	Z : IN std_logic;
	W : IN std_logic;
	X : IN std_logic;
	Y : IN std_logic;
	S5 : OUT std_logic;
	S3 : OUT std_logic;
	S2 : OUT std_logic;
	S0 : OUT std_logic;
	EDO_PRES : OUT std_logic_vector(3 DOWNTO 0);
	EDO_SIG : OUT std_logic_vector(3 DOWNTO 0);
	PRUEBA : OUT std_logic_vector(2 DOWNTO 0);
	SALIDAS : OUT std_logic_vector(4 DOWNTO 0)
	);
END Practica_04;

-- Design Ports Information
-- S10	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EDO_PRES[3]	=>  Location: LCCOMB_X50_Y14_N0,	 I/O Standard: None,	 Current Strength: Default
-- EDO_PRES[2]	=>  Location: LCCOMB_X50_Y14_N2,	 I/O Standard: None,	 Current Strength: Default
-- EDO_PRES[1]	=>  Location: LCCOMB_X50_Y14_N4,	 I/O Standard: None,	 Current Strength: Default
-- EDO_PRES[0]	=>  Location: LCCOMB_X50_Y14_N6,	 I/O Standard: None,	 Current Strength: Default
-- EDO_SIG[3]	=>  Location: LCCOMB_X50_Y14_N8,	 I/O Standard: None,	 Current Strength: Default
-- EDO_SIG[2]	=>  Location: LCCOMB_X50_Y14_N10,	 I/O Standard: None,	 Current Strength: Default
-- EDO_SIG[1]	=>  Location: LCCOMB_X50_Y14_N12,	 I/O Standard: None,	 Current Strength: Default
-- EDO_SIG[0]	=>  Location: LCCOMB_X50_Y14_N14,	 I/O Standard: None,	 Current Strength: Default
-- PRUEBA[2]	=>  Location: LCCOMB_X50_Y14_N16,	 I/O Standard: None,	 Current Strength: Default
-- PRUEBA[1]	=>  Location: LCCOMB_X50_Y14_N18,	 I/O Standard: None,	 Current Strength: Default
-- PRUEBA[0]	=>  Location: LCCOMB_X50_Y14_N20,	 I/O Standard: None,	 Current Strength: Default
-- SALIDAS[4]	=>  Location: LCCOMB_X38_Y33_N0,	 I/O Standard: None,	 Current Strength: Default
-- SALIDAS[3]	=>  Location: LCCOMB_X51_Y28_N0,	 I/O Standard: None,	 Current Strength: Default
-- SALIDAS[2]	=>  Location: LCCOMB_X51_Y32_N0,	 I/O Standard: None,	 Current Strength: Default
-- SALIDAS[1]	=>  Location: LCCOMB_X41_Y33_N0,	 I/O Standard: None,	 Current Strength: Default
-- SALIDAS[0]	=>  Location: LCCOMB_X1_Y25_N0,	 I/O Standard: None,	 Current Strength: Default


ARCHITECTURE structure OF Practica_04 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S10 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_S5 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_EDO_PRES : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_EDO_SIG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PRUEBA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SALIDAS : std_logic_vector(4 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S10~output_o\ : std_logic;
SIGNAL \S5~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \EDO_PRES[3]~output_o\ : std_logic;
SIGNAL \EDO_PRES[2]~output_o\ : std_logic;
SIGNAL \EDO_PRES[1]~output_o\ : std_logic;
SIGNAL \EDO_PRES[0]~output_o\ : std_logic;
SIGNAL \EDO_SIG[3]~output_o\ : std_logic;
SIGNAL \EDO_SIG[2]~output_o\ : std_logic;
SIGNAL \EDO_SIG[1]~output_o\ : std_logic;
SIGNAL \EDO_SIG[0]~output_o\ : std_logic;
SIGNAL \PRUEBA[2]~output_o\ : std_logic;
SIGNAL \PRUEBA[1]~output_o\ : std_logic;
SIGNAL \PRUEBA[0]~output_o\ : std_logic;
SIGNAL \SALIDAS[4]~output_o\ : std_logic;
SIGNAL \SALIDAS[3]~output_o\ : std_logic;
SIGNAL \SALIDAS[2]~output_o\ : std_logic;
SIGNAL \SALIDAS[1]~output_o\ : std_logic;
SIGNAL \SALIDAS[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \inst|U_ROM|Mux2~0_combout\ : std_logic;
SIGNAL \inst|U_ROM|Mux0~0_combout\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \inst|U_ROM|Mux1~0_combout\ : std_logic;
SIGNAL \inst|U_MUX|Mux0~1_combout\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \inst|U_MUX|Mux0~0_combout\ : std_logic;
SIGNAL \inst|U_MUX|Mux0~2_combout\ : std_logic;
SIGNAL \inst|U_ROM|Mux5~0_combout\ : std_logic;
SIGNAL \inst|U_ROM|Mux5~1_combout\ : std_logic;
SIGNAL \inst|q[1]~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|U_ROM|Mux4~0_combout\ : std_logic;
SIGNAL \inst|U_ROM|Mux6~0_combout\ : std_logic;
SIGNAL \inst|estado_siguiente[2]~2_combout\ : std_logic;
SIGNAL \inst|estado_siguiente[3]~0_combout\ : std_logic;
SIGNAL \inst|estado_siguiente[3]~1_combout\ : std_logic;
SIGNAL \inst|U_ROM|Mux6~1_combout\ : std_logic;
SIGNAL \inst|U_ROM|Mux6~2_combout\ : std_logic;
SIGNAL \inst|U_ROM|Mux11~0_combout\ : std_logic;
SIGNAL \inst|U_ROM|Mux12~0_combout\ : std_logic;
SIGNAL \inst|U_ROM|Mux13~0_combout\ : std_logic;
SIGNAL \inst|U_ROM|Mux14~0_combout\ : std_logic;
SIGNAL \inst|U_ROM|Mux15~0_combout\ : std_logic;
SIGNAL \inst|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|sal_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_sal_reg\ : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

S10 <= ww_S10;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_Z <= Z;
ww_W <= W;
ww_X <= X;
ww_Y <= Y;
S5 <= ww_S5;
S3 <= ww_S3;
S2 <= ww_S2;
S0 <= ww_S0;
EDO_PRES <= ww_EDO_PRES;
EDO_SIG <= ww_EDO_SIG;
PRUEBA <= ww_PRUEBA;
SALIDAS <= ww_SALIDAS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;
\inst|ALT_INV_sal_reg\(0) <= NOT \inst|sal_reg\(0);
\inst|ALT_INV_sal_reg\(1) <= NOT \inst|sal_reg\(1);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\S10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sal_reg\(4),
	devoe => ww_devoe,
	o => \S10~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\S5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sal_reg\(3),
	devoe => ww_devoe,
	o => \S5~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\S3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sal_reg\(2),
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\S2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_sal_reg\(1),
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\S0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_sal_reg\(0),
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: LCCOMB_X50_Y14_N0
\EDO_PRES[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q\(3),
	devoe => ww_devoe,
	o => \EDO_PRES[3]~output_o\);

-- Location: LCCOMB_X50_Y14_N2
\EDO_PRES[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q\(2),
	devoe => ww_devoe,
	o => \EDO_PRES[2]~output_o\);

-- Location: LCCOMB_X50_Y14_N4
\EDO_PRES[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q\(1),
	devoe => ww_devoe,
	o => \EDO_PRES[1]~output_o\);

-- Location: LCCOMB_X50_Y14_N6
\EDO_PRES[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q\(0),
	devoe => ww_devoe,
	o => \EDO_PRES[0]~output_o\);

-- Location: LCCOMB_X50_Y14_N8
\EDO_SIG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|estado_siguiente[3]~1_combout\,
	devoe => ww_devoe,
	o => \EDO_SIG[3]~output_o\);

-- Location: LCCOMB_X50_Y14_N10
\EDO_SIG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|estado_siguiente[2]~2_combout\,
	devoe => ww_devoe,
	o => \EDO_SIG[2]~output_o\);

-- Location: LCCOMB_X50_Y14_N12
\EDO_SIG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|U_ROM|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \EDO_SIG[1]~output_o\);

-- Location: LCCOMB_X50_Y14_N14
\EDO_SIG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|U_ROM|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \EDO_SIG[0]~output_o\);

-- Location: LCCOMB_X50_Y14_N16
\PRUEBA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|U_ROM|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \PRUEBA[2]~output_o\);

-- Location: LCCOMB_X50_Y14_N18
\PRUEBA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|U_ROM|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \PRUEBA[1]~output_o\);

-- Location: LCCOMB_X50_Y14_N20
\PRUEBA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|U_ROM|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \PRUEBA[0]~output_o\);

-- Location: LCCOMB_X38_Y33_N0
\SALIDAS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sal_reg\(4),
	devoe => ww_devoe,
	o => \SALIDAS[4]~output_o\);

-- Location: LCCOMB_X51_Y28_N0
\SALIDAS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sal_reg\(3),
	devoe => ww_devoe,
	o => \SALIDAS[3]~output_o\);

-- Location: LCCOMB_X51_Y32_N0
\SALIDAS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sal_reg\(2),
	devoe => ww_devoe,
	o => \SALIDAS[2]~output_o\);

-- Location: LCCOMB_X41_Y33_N0
\SALIDAS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_sal_reg\(1),
	devoe => ww_devoe,
	o => \SALIDAS[1]~output_o\);

-- Location: LCCOMB_X1_Y25_N0
\SALIDAS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_sal_reg\(0),
	devoe => ww_devoe,
	o => \SALIDAS[0]~output_o\);

-- Location: IOIBUF_X53_Y14_N1
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: LCCOMB_X51_Y14_N16
\inst|U_ROM|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_ROM|Mux2~0_combout\ = (\inst|q\(0) & (!\inst|q\(3) & !\inst|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q\(0),
	datac => \inst|q\(3),
	datad => \inst|q\(2),
	combout => \inst|U_ROM|Mux2~0_combout\);

-- Location: LCCOMB_X51_Y14_N4
\inst|U_ROM|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_ROM|Mux0~0_combout\ = (!\inst|q\(0) & (\inst|q\(1) & (!\inst|q\(3) & \inst|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q\(0),
	datab => \inst|q\(1),
	datac => \inst|q\(3),
	datad => \inst|q\(2),
	combout => \inst|U_ROM|Mux0~0_combout\);

-- Location: IOIBUF_X27_Y0_N15
\X~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: IOIBUF_X53_Y17_N15
\Z~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: LCCOMB_X51_Y14_N10
\inst|U_ROM|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_ROM|Mux1~0_combout\ = (!\inst|q\(3) & ((\inst|q\(0) & (\inst|q\(1) & !\inst|q\(2))) # (!\inst|q\(0) & (!\inst|q\(1) & \inst|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q\(0),
	datab => \inst|q\(1),
	datac => \inst|q\(3),
	datad => \inst|q\(2),
	combout => \inst|U_ROM|Mux1~0_combout\);

-- Location: LCCOMB_X51_Y14_N14
\inst|U_MUX|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_MUX|Mux0~1_combout\ = (\inst|U_ROM|Mux1~0_combout\ & (\X~input_o\)) # (!\inst|U_ROM|Mux1~0_combout\ & ((\Z~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~input_o\,
	datac => \Z~input_o\,
	datad => \inst|U_ROM|Mux1~0_combout\,
	combout => \inst|U_MUX|Mux0~1_combout\);

-- Location: IOIBUF_X25_Y34_N8
\Y~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\W~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: LCCOMB_X51_Y14_N28
\inst|U_MUX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_MUX|Mux0~0_combout\ = (\inst|U_ROM|Mux0~0_combout\ & (\Y~input_o\ & ((!\inst|U_ROM|Mux1~0_combout\)))) # (!\inst|U_ROM|Mux0~0_combout\ & (((\W~input_o\ & \inst|U_ROM|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~input_o\,
	datab => \W~input_o\,
	datac => \inst|U_ROM|Mux0~0_combout\,
	datad => \inst|U_ROM|Mux1~0_combout\,
	combout => \inst|U_MUX|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y14_N18
\inst|U_MUX|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_MUX|Mux0~2_combout\ = (\inst|U_ROM|Mux2~0_combout\ & (!\inst|U_ROM|Mux0~0_combout\ & (\inst|U_MUX|Mux0~1_combout\))) # (!\inst|U_ROM|Mux2~0_combout\ & (((\inst|U_MUX|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U_ROM|Mux2~0_combout\,
	datab => \inst|U_ROM|Mux0~0_combout\,
	datac => \inst|U_MUX|Mux0~1_combout\,
	datad => \inst|U_MUX|Mux0~0_combout\,
	combout => \inst|U_MUX|Mux0~2_combout\);

-- Location: LCCOMB_X51_Y14_N20
\inst|U_ROM|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_ROM|Mux5~0_combout\ = (\inst|q\(3) & (((!\inst|q\(2))))) # (!\inst|q\(3) & ((\inst|q\(0) & ((\inst|q\(2)) # (!\inst|U_MUX|Mux0~2_combout\))) # (!\inst|q\(0) & ((\inst|U_MUX|Mux0~2_combout\) # (!\inst|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q\(3),
	datab => \inst|q\(0),
	datac => \inst|q\(2),
	datad => \inst|U_MUX|Mux0~2_combout\,
	combout => \inst|U_ROM|Mux5~0_combout\);

-- Location: LCCOMB_X51_Y14_N30
\inst|U_ROM|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_ROM|Mux5~1_combout\ = (\inst|U_ROM|Mux5~0_combout\ & ((\inst|q\(2)) # (\inst|q\(1) $ (\inst|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q\(1),
	datab => \inst|q\(0),
	datac => \inst|q\(2),
	datad => \inst|U_ROM|Mux5~0_combout\,
	combout => \inst|U_ROM|Mux5~1_combout\);

-- Location: LCCOMB_X51_Y14_N0
\inst|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q[1]~feeder_combout\ = \inst|U_ROM|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|U_ROM|Mux5~1_combout\,
	combout => \inst|q[1]~feeder_combout\);

-- Location: IOIBUF_X0_Y16_N8
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G2
\RESET~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X51_Y14_N1
\inst|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst|q[1]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q\(1));

-- Location: LCCOMB_X51_Y14_N2
\inst|U_ROM|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_ROM|Mux4~0_combout\ = (\inst|q\(1) & (!\inst|q\(3) & (\inst|q\(2) $ (\inst|q\(0))))) # (!\inst|q\(1) & (((!\inst|q\(2) & \inst|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q\(1),
	datab => \inst|q\(3),
	datac => \inst|q\(2),
	datad => \inst|q\(0),
	combout => \inst|U_ROM|Mux4~0_combout\);

-- Location: LCCOMB_X51_Y14_N26
\inst|U_ROM|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_ROM|Mux6~0_combout\ = (!\inst|q\(2) & !\inst|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|q\(2),
	datad => \inst|q\(1),
	combout => \inst|U_ROM|Mux6~0_combout\);

-- Location: LCCOMB_X51_Y14_N6
\inst|estado_siguiente[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|estado_siguiente[2]~2_combout\ = (\inst|U_MUX|Mux0~2_combout\ & (\inst|q\(0) & ((\inst|U_ROM|Mux6~0_combout\)))) # (!\inst|U_MUX|Mux0~2_combout\ & (((\inst|U_ROM|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q\(0),
	datab => \inst|U_ROM|Mux4~0_combout\,
	datac => \inst|U_ROM|Mux6~0_combout\,
	datad => \inst|U_MUX|Mux0~2_combout\,
	combout => \inst|estado_siguiente[2]~2_combout\);

-- Location: FF_X51_Y14_N3
\inst|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst|estado_siguiente[2]~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q\(2));

-- Location: LCCOMB_X51_Y14_N8
\inst|estado_siguiente[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|estado_siguiente[3]~0_combout\ = (\inst|q\(3) & ((\inst|q\(0)))) # (!\inst|q\(3) & (\inst|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|q\(2),
	datac => \inst|q\(3),
	datad => \inst|q\(0),
	combout => \inst|estado_siguiente[3]~0_combout\);

-- Location: LCCOMB_X51_Y14_N24
\inst|estado_siguiente[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|estado_siguiente[3]~1_combout\ = (\inst|estado_siguiente[3]~0_combout\ & (!\inst|q\(0) & (\inst|q\(1) $ (!\inst|U_MUX|Mux0~2_combout\)))) # (!\inst|estado_siguiente[3]~0_combout\ & (\inst|q\(0) & (\inst|q\(1) & \inst|U_MUX|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estado_siguiente[3]~0_combout\,
	datab => \inst|q\(0),
	datac => \inst|q\(1),
	datad => \inst|U_MUX|Mux0~2_combout\,
	combout => \inst|estado_siguiente[3]~1_combout\);

-- Location: FF_X51_Y14_N9
\inst|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst|estado_siguiente[3]~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q\(3));

-- Location: LCCOMB_X51_Y14_N12
\inst|U_ROM|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_ROM|Mux6~1_combout\ = (\inst|U_MUX|Mux0~2_combout\ & (\inst|q\(2) $ (((!\inst|q\(1) & \inst|q\(0)))))) # (!\inst|U_MUX|Mux0~2_combout\ & (\inst|q\(2) & (\inst|q\(1) $ (!\inst|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q\(1),
	datab => \inst|q\(0),
	datac => \inst|q\(2),
	datad => \inst|U_MUX|Mux0~2_combout\,
	combout => \inst|U_ROM|Mux6~1_combout\);

-- Location: LCCOMB_X51_Y14_N22
\inst|U_ROM|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_ROM|Mux6~2_combout\ = (\inst|q\(3) & (!\inst|q\(0) & (\inst|U_ROM|Mux6~0_combout\))) # (!\inst|q\(3) & (((!\inst|U_ROM|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q\(3),
	datab => \inst|q\(0),
	datac => \inst|U_ROM|Mux6~0_combout\,
	datad => \inst|U_ROM|Mux6~1_combout\,
	combout => \inst|U_ROM|Mux6~2_combout\);

-- Location: FF_X51_Y14_N27
\inst|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst|U_ROM|Mux6~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q\(0));

-- Location: LCCOMB_X52_Y14_N4
\inst|U_ROM|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_ROM|Mux11~0_combout\ = (!\inst|q\(3) & ((\inst|q\(0) & (!\inst|q\(2) & !\inst|q\(1))) # (!\inst|q\(0) & (\inst|q\(2) & \inst|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q\(0),
	datab => \inst|q\(2),
	datac => \inst|q\(1),
	datad => \inst|q\(3),
	combout => \inst|U_ROM|Mux11~0_combout\);

-- Location: FF_X52_Y14_N5
\inst|sal_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst|U_ROM|Mux11~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal_reg\(4));

-- Location: LCCOMB_X52_Y14_N22
\inst|U_ROM|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_ROM|Mux12~0_combout\ = (!\inst|q\(0) & ((\inst|q\(2) & (!\inst|q\(1) & !\inst|q\(3))) # (!\inst|q\(2) & (\inst|q\(1) & \inst|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q\(0),
	datab => \inst|q\(2),
	datac => \inst|q\(1),
	datad => \inst|q\(3),
	combout => \inst|U_ROM|Mux12~0_combout\);

-- Location: FF_X52_Y14_N23
\inst|sal_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst|U_ROM|Mux12~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal_reg\(3));

-- Location: LCCOMB_X52_Y14_N8
\inst|U_ROM|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_ROM|Mux13~0_combout\ = (\inst|q\(0) & (!\inst|q\(2) & (\inst|q\(1) & !\inst|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q\(0),
	datab => \inst|q\(2),
	datac => \inst|q\(1),
	datad => \inst|q\(3),
	combout => \inst|U_ROM|Mux13~0_combout\);

-- Location: FF_X52_Y14_N9
\inst|sal_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst|U_ROM|Mux13~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal_reg\(2));

-- Location: LCCOMB_X52_Y14_N30
\inst|U_ROM|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_ROM|Mux14~0_combout\ = (\inst|q\(0) & (((\inst|q\(1) & !\inst|q\(3))))) # (!\inst|q\(0) & (!\inst|q\(2) & (!\inst|q\(1) & \inst|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q\(0),
	datab => \inst|q\(2),
	datac => \inst|q\(1),
	datad => \inst|q\(3),
	combout => \inst|U_ROM|Mux14~0_combout\);

-- Location: FF_X52_Y14_N31
\inst|sal_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst|U_ROM|Mux14~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal_reg\(1));

-- Location: LCCOMB_X52_Y14_N12
\inst|U_ROM|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U_ROM|Mux15~0_combout\ = (!\inst|q\(1) & ((\inst|q\(2) & ((!\inst|q\(3)))) # (!\inst|q\(2) & (\inst|q\(0) & \inst|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q\(0),
	datab => \inst|q\(2),
	datac => \inst|q\(1),
	datad => \inst|q\(3),
	combout => \inst|U_ROM|Mux15~0_combout\);

-- Location: FF_X52_Y14_N13
\inst|sal_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst|U_ROM|Mux15~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal_reg\(0));

ww_S10 <= \S10~output_o\;

ww_S5 <= \S5~output_o\;

ww_S3 <= \S3~output_o\;

ww_S2 <= \S2~output_o\;

ww_S0 <= \S0~output_o\;

ww_EDO_PRES(3) <= \EDO_PRES[3]~output_o\;

ww_EDO_PRES(2) <= \EDO_PRES[2]~output_o\;

ww_EDO_PRES(1) <= \EDO_PRES[1]~output_o\;

ww_EDO_PRES(0) <= \EDO_PRES[0]~output_o\;

ww_EDO_SIG(3) <= \EDO_SIG[3]~output_o\;

ww_EDO_SIG(2) <= \EDO_SIG[2]~output_o\;

ww_EDO_SIG(1) <= \EDO_SIG[1]~output_o\;

ww_EDO_SIG(0) <= \EDO_SIG[0]~output_o\;

ww_PRUEBA(2) <= \PRUEBA[2]~output_o\;

ww_PRUEBA(1) <= \PRUEBA[1]~output_o\;

ww_PRUEBA(0) <= \PRUEBA[0]~output_o\;

ww_SALIDAS(4) <= \SALIDAS[4]~output_o\;

ww_SALIDAS(3) <= \SALIDAS[3]~output_o\;

ww_SALIDAS(2) <= \SALIDAS[2]~output_o\;

ww_SALIDAS(1) <= \SALIDAS[1]~output_o\;

ww_SALIDAS(0) <= \SALIDAS[0]~output_o\;
END structure;


