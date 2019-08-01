-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity alt_dspbuilder_counter is
	generic (
		SVALUE : string := "0";
		USE_CNT_ENA : string := "false";
		USE_COUT : string := "false";
		MODULUS : integer := 256;
		USE_SCLR : string := "false";
		NDIRECTION : natural := 1;
		USE_USR_ACLR : string := "false";
		WIDTH : natural := 8;
		USE_ENA : string := "false";
		USE_SSET : string := "false";
		USE_ALOAD : string := "false";
		AVALUE : string := "0";
		USE_ASET : string := "false";
		USE_SLOAD : string := "false";
		USE_CIN : string := "false"
	);
	port (
		sclr : in std_logic := '0';
		data : in std_logic_vector(width-1 downto 0) := (others=>'0');
		aclr : in std_logic := '0';
		cout : out std_logic;
		user_aclr : in std_logic := '0';
		cin : in std_logic := '0';
		clock : in std_logic := '0';
		aset : in std_logic := '0';
		aload : in std_logic := '0';
		cnt_ena : in std_logic := '0';
		q : out std_logic_vector(width-1 downto 0);
		ena : in std_logic := '0';
		sset : in std_logic := '0';
		sload : in std_logic := '0';
		direction : in std_logic := '0'
	);
end entity alt_dspbuilder_counter;

architecture rtl of alt_dspbuilder_counter is

component alt_dspbuilder_counter_GN2NX2BYYS is
	generic (
		SVALUE : string := "1";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 656;
		USE_SCLR : string := "true";
		NDIRECTION : natural := 1;
		USE_USR_ACLR : string := "false";
		WIDTH : natural := 10;
		USE_ENA : string := "false";
		USE_SSET : string := "false";
		USE_ALOAD : string := "false";
		AVALUE : string := "0";
		USE_ASET : string := "false";
		USE_SLOAD : string := "false";
		USE_CIN : string := "false"
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		cnt_ena : in std_logic := '0';
		cout : out std_logic;
		q : out std_logic_vector(10-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_counter_GN2NX2BYYS;

component alt_dspbuilder_counter_GN23RXZ44L is
	generic (
		SVALUE : string := "1";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 31;
		USE_SCLR : string := "false";
		NDIRECTION : natural := 1;
		USE_USR_ACLR : string := "false";
		WIDTH : natural := 5;
		USE_ENA : string := "false";
		USE_SSET : string := "true";
		USE_ALOAD : string := "false";
		AVALUE : string := "0";
		USE_ASET : string := "false";
		USE_SLOAD : string := "false";
		USE_CIN : string := "false"
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		cnt_ena : in std_logic := '0';
		cout : out std_logic;
		q : out std_logic_vector(5-1 downto 0);
		sset : in std_logic := '0'
	);
end component alt_dspbuilder_counter_GN23RXZ44L;

component alt_dspbuilder_counter_GNG6VDU3DQ is
	generic (
		SVALUE : string := "0";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 496;
		USE_SCLR : string := "true";
		NDIRECTION : natural := 1;
		USE_USR_ACLR : string := "false";
		WIDTH : natural := 10;
		USE_ENA : string := "false";
		USE_SSET : string := "false";
		USE_ALOAD : string := "false";
		AVALUE : string := "0";
		USE_ASET : string := "false";
		USE_SLOAD : string := "false";
		USE_CIN : string := "false"
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		cnt_ena : in std_logic := '0';
		cout : out std_logic;
		q : out std_logic_vector(10-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_counter_GNG6VDU3DQ;

component alt_dspbuilder_counter_GNTJQADYIY is
	generic (
		SVALUE : string := "1";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 668;
		USE_SCLR : string := "true";
		NDIRECTION : natural := 1;
		USE_USR_ACLR : string := "false";
		WIDTH : natural := 10;
		USE_ENA : string := "false";
		USE_SSET : string := "false";
		USE_ALOAD : string := "false";
		AVALUE : string := "0";
		USE_ASET : string := "false";
		USE_SLOAD : string := "false";
		USE_CIN : string := "false"
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		cnt_ena : in std_logic := '0';
		cout : out std_logic;
		q : out std_logic_vector(10-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_counter_GNTJQADYIY;

component alt_dspbuilder_counter_GNM3WCOF3H is
	generic (
		SVALUE : string := "1";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 30;
		USE_SCLR : string := "false";
		NDIRECTION : natural := 1;
		USE_USR_ACLR : string := "false";
		WIDTH : natural := 5;
		USE_ENA : string := "false";
		USE_SSET : string := "true";
		USE_ALOAD : string := "false";
		AVALUE : string := "0";
		USE_ASET : string := "false";
		USE_SLOAD : string := "false";
		USE_CIN : string := "false"
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		cnt_ena : in std_logic := '0';
		cout : out std_logic;
		q : out std_logic_vector(5-1 downto 0);
		sset : in std_logic := '0'
	);
end component alt_dspbuilder_counter_GNM3WCOF3H;

component alt_dspbuilder_counter_GNWVP6756U is
	generic (
		SVALUE : string := "0";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 508;
		USE_SCLR : string := "true";
		NDIRECTION : natural := 1;
		USE_USR_ACLR : string := "false";
		WIDTH : natural := 10;
		USE_ENA : string := "false";
		USE_SSET : string := "false";
		USE_ALOAD : string := "false";
		AVALUE : string := "0";
		USE_ASET : string := "false";
		USE_SLOAD : string := "false";
		USE_CIN : string := "false"
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		cnt_ena : in std_logic := '0';
		cout : out std_logic;
		q : out std_logic_vector(10-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_counter_GNWVP6756U;

component alt_dspbuilder_counter_GN6FXRTDGM is
	generic (
		SVALUE : string := "1";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 664;
		USE_SCLR : string := "true";
		NDIRECTION : natural := 1;
		USE_USR_ACLR : string := "false";
		WIDTH : natural := 10;
		USE_ENA : string := "false";
		USE_SSET : string := "false";
		USE_ALOAD : string := "false";
		AVALUE : string := "0";
		USE_ASET : string := "false";
		USE_SLOAD : string := "false";
		USE_CIN : string := "false"
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		cnt_ena : in std_logic := '0';
		cout : out std_logic;
		q : out std_logic_vector(10-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_counter_GN6FXRTDGM;

component alt_dspbuilder_counter_GNSGWKEVBY is
	generic (
		SVALUE : string := "0";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 504;
		USE_SCLR : string := "true";
		NDIRECTION : natural := 1;
		USE_USR_ACLR : string := "false";
		WIDTH : natural := 10;
		USE_ENA : string := "false";
		USE_SSET : string := "false";
		USE_ALOAD : string := "false";
		AVALUE : string := "0";
		USE_ASET : string := "false";
		USE_SLOAD : string := "false";
		USE_CIN : string := "false"
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		cnt_ena : in std_logic := '0';
		cout : out std_logic;
		q : out std_logic_vector(10-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_counter_GNSGWKEVBY;

begin

alt_dspbuilder_counter_GN2NX2BYYS_0: if ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 656) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GN2NX2BYYS_0: alt_dspbuilder_counter_GN2NX2BYYS
		generic map(SVALUE => "1", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 656, USE_SCLR => "true", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 10, USE_ENA => "false", USE_SSET => "false", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

alt_dspbuilder_counter_GN23RXZ44L_1: if ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 31) and (USE_SCLR = "false") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 5) and (USE_ENA = "false") and (USE_SSET = "true") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GN23RXZ44L_1: alt_dspbuilder_counter_GN23RXZ44L
		generic map(SVALUE => "1", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 31, USE_SCLR => "false", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 5, USE_ENA => "false", USE_SSET => "true", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sset => sset);
end generate;

alt_dspbuilder_counter_GNG6VDU3DQ_2: if ((SVALUE = "0") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 496) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GNG6VDU3DQ_2: alt_dspbuilder_counter_GNG6VDU3DQ
		generic map(SVALUE => "0", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 496, USE_SCLR => "true", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 10, USE_ENA => "false", USE_SSET => "false", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

alt_dspbuilder_counter_GNTJQADYIY_3: if ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 668) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GNTJQADYIY_3: alt_dspbuilder_counter_GNTJQADYIY
		generic map(SVALUE => "1", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 668, USE_SCLR => "true", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 10, USE_ENA => "false", USE_SSET => "false", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

alt_dspbuilder_counter_GNM3WCOF3H_4: if ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 30) and (USE_SCLR = "false") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 5) and (USE_ENA = "false") and (USE_SSET = "true") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GNM3WCOF3H_4: alt_dspbuilder_counter_GNM3WCOF3H
		generic map(SVALUE => "1", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 30, USE_SCLR => "false", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 5, USE_ENA => "false", USE_SSET => "true", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sset => sset);
end generate;

alt_dspbuilder_counter_GNWVP6756U_5: if ((SVALUE = "0") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 508) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GNWVP6756U_5: alt_dspbuilder_counter_GNWVP6756U
		generic map(SVALUE => "0", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 508, USE_SCLR => "true", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 10, USE_ENA => "false", USE_SSET => "false", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

alt_dspbuilder_counter_GN6FXRTDGM_6: if ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 664) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GN6FXRTDGM_6: alt_dspbuilder_counter_GN6FXRTDGM
		generic map(SVALUE => "1", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 664, USE_SCLR => "true", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 10, USE_ENA => "false", USE_SSET => "false", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

alt_dspbuilder_counter_GNSGWKEVBY_7: if ((SVALUE = "0") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 504) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GNSGWKEVBY_7: alt_dspbuilder_counter_GNSGWKEVBY
		generic map(SVALUE => "0", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 504, USE_SCLR => "true", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 10, USE_ENA => "false", USE_SSET => "false", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

assert not (((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 656) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 31) and (USE_SCLR = "false") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 5) and (USE_ENA = "false") and (USE_SSET = "true") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "0") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 496) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 668) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 30) and (USE_SCLR = "false") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 5) and (USE_ENA = "false") and (USE_SSET = "true") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "0") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 508) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 664) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "0") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 504) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")))
	report "Please run generate again" severity error;

end architecture rtl;

