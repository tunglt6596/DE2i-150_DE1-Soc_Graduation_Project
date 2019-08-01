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

component alt_dspbuilder_counter_GN7Z3LCMEE is
	generic (
		SVALUE : string := "1";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 646;
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
end component alt_dspbuilder_counter_GN7Z3LCMEE;

component alt_dspbuilder_counter_GNVYTHOFEU is
	generic (
		SVALUE : string := "0";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 486;
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
end component alt_dspbuilder_counter_GNVYTHOFEU;

component alt_dspbuilder_counter_GNV2B4FLZF is
	generic (
		SVALUE : string := "1";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 642;
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
end component alt_dspbuilder_counter_GNV2B4FLZF;

component alt_dspbuilder_counter_GNUIV5TX7Z is
	generic (
		SVALUE : string := "1";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 37;
		USE_SCLR : string := "false";
		NDIRECTION : natural := 1;
		USE_USR_ACLR : string := "false";
		WIDTH : natural := 6;
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
		q : out std_logic_vector(6-1 downto 0);
		sset : in std_logic := '0'
	);
end component alt_dspbuilder_counter_GNUIV5TX7Z;

component alt_dspbuilder_counter_GN6PNIQ74A is
	generic (
		SVALUE : string := "0";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 482;
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
end component alt_dspbuilder_counter_GN6PNIQ74A;

component alt_dspbuilder_counter_GNS5ZU7DCJ is
	generic (
		SVALUE : string := "1";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := -1;
		USE_SCLR : string := "true";
		NDIRECTION : natural := 1;
		USE_USR_ACLR : string := "false";
		WIDTH : natural := 20;
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
		q : out std_logic_vector(20-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_counter_GNS5ZU7DCJ;

component alt_dspbuilder_counter_GNJYRI37NB is
	generic (
		SVALUE : string := "1";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := -1;
		USE_SCLR : string := "true";
		NDIRECTION : natural := 1;
		USE_USR_ACLR : string := "false";
		WIDTH : natural := 9;
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
		q : out std_logic_vector(9-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_counter_GNJYRI37NB;

component alt_dspbuilder_counter_GNPVW56BJJ is
	generic (
		SVALUE : string := "1";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := -1;
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
end component alt_dspbuilder_counter_GNPVW56BJJ;

component alt_dspbuilder_counter_GNRP3VGEH6 is
	generic (
		SVALUE : string := "1";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 644;
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
end component alt_dspbuilder_counter_GNRP3VGEH6;

component alt_dspbuilder_counter_GN4HOFC7WF is
	generic (
		SVALUE : string := "1";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 38;
		USE_SCLR : string := "false";
		NDIRECTION : natural := 1;
		USE_USR_ACLR : string := "false";
		WIDTH : natural := 6;
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
		q : out std_logic_vector(6-1 downto 0);
		sset : in std_logic := '0'
	);
end component alt_dspbuilder_counter_GN4HOFC7WF;

component alt_dspbuilder_counter_GNJOYHMX5W is
	generic (
		SVALUE : string := "0";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 484;
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
end component alt_dspbuilder_counter_GNJOYHMX5W;

component alt_dspbuilder_counter_GNU6MGZBEO is
	generic (
		SVALUE : string := "1";
		USE_CNT_ENA : string := "true";
		USE_COUT : string := "false";
		MODULUS : integer := 7;
		USE_SCLR : string := "false";
		NDIRECTION : natural := 1;
		USE_USR_ACLR : string := "false";
		WIDTH : natural := 3;
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
		q : out std_logic_vector(3-1 downto 0);
		sset : in std_logic := '0'
	);
end component alt_dspbuilder_counter_GNU6MGZBEO;

begin

alt_dspbuilder_counter_GN7Z3LCMEE_0: if ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 646) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GN7Z3LCMEE_0: alt_dspbuilder_counter_GN7Z3LCMEE
		generic map(SVALUE => "1", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 646, USE_SCLR => "true", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 10, USE_ENA => "false", USE_SSET => "false", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

alt_dspbuilder_counter_GNVYTHOFEU_1: if ((SVALUE = "0") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 486) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GNVYTHOFEU_1: alt_dspbuilder_counter_GNVYTHOFEU
		generic map(SVALUE => "0", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 486, USE_SCLR => "true", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 10, USE_ENA => "false", USE_SSET => "false", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

alt_dspbuilder_counter_GNV2B4FLZF_2: if ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 642) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GNV2B4FLZF_2: alt_dspbuilder_counter_GNV2B4FLZF
		generic map(SVALUE => "1", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 642, USE_SCLR => "true", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 10, USE_ENA => "false", USE_SSET => "false", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

alt_dspbuilder_counter_GNUIV5TX7Z_3: if ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 37) and (USE_SCLR = "false") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 6) and (USE_ENA = "false") and (USE_SSET = "true") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GNUIV5TX7Z_3: alt_dspbuilder_counter_GNUIV5TX7Z
		generic map(SVALUE => "1", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 37, USE_SCLR => "false", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 6, USE_ENA => "false", USE_SSET => "true", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sset => sset);
end generate;

alt_dspbuilder_counter_GN6PNIQ74A_4: if ((SVALUE = "0") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 482) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GN6PNIQ74A_4: alt_dspbuilder_counter_GN6PNIQ74A
		generic map(SVALUE => "0", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 482, USE_SCLR => "true", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 10, USE_ENA => "false", USE_SSET => "false", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

alt_dspbuilder_counter_GNS5ZU7DCJ_5: if ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = -1) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 20) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GNS5ZU7DCJ_5: alt_dspbuilder_counter_GNS5ZU7DCJ
		generic map(SVALUE => "1", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => -1, USE_SCLR => "true", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 20, USE_ENA => "false", USE_SSET => "false", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

alt_dspbuilder_counter_GNJYRI37NB_6: if ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = -1) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 9) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GNJYRI37NB_6: alt_dspbuilder_counter_GNJYRI37NB
		generic map(SVALUE => "1", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => -1, USE_SCLR => "true", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 9, USE_ENA => "false", USE_SSET => "false", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

alt_dspbuilder_counter_GNPVW56BJJ_7: if ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = -1) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GNPVW56BJJ_7: alt_dspbuilder_counter_GNPVW56BJJ
		generic map(SVALUE => "1", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => -1, USE_SCLR => "true", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 10, USE_ENA => "false", USE_SSET => "false", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

alt_dspbuilder_counter_GNRP3VGEH6_8: if ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 644) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GNRP3VGEH6_8: alt_dspbuilder_counter_GNRP3VGEH6
		generic map(SVALUE => "1", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 644, USE_SCLR => "true", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 10, USE_ENA => "false", USE_SSET => "false", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

alt_dspbuilder_counter_GN4HOFC7WF_9: if ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 38) and (USE_SCLR = "false") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 6) and (USE_ENA = "false") and (USE_SSET = "true") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GN4HOFC7WF_9: alt_dspbuilder_counter_GN4HOFC7WF
		generic map(SVALUE => "1", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 38, USE_SCLR => "false", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 6, USE_ENA => "false", USE_SSET => "true", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sset => sset);
end generate;

alt_dspbuilder_counter_GNJOYHMX5W_10: if ((SVALUE = "0") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 484) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GNJOYHMX5W_10: alt_dspbuilder_counter_GNJOYHMX5W
		generic map(SVALUE => "0", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 484, USE_SCLR => "true", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 10, USE_ENA => "false", USE_SSET => "false", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sclr => sclr);
end generate;

alt_dspbuilder_counter_GNU6MGZBEO_11: if ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 7) and (USE_SCLR = "false") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 3) and (USE_ENA = "false") and (USE_SSET = "true") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) generate
	inst_alt_dspbuilder_counter_GNU6MGZBEO_11: alt_dspbuilder_counter_GNU6MGZBEO
		generic map(SVALUE => "1", USE_CNT_ENA => "true", USE_COUT => "false", MODULUS => 7, USE_SCLR => "false", NDIRECTION => 1, USE_USR_ACLR => "false", WIDTH => 3, USE_ENA => "false", USE_SSET => "true", USE_ALOAD => "false", AVALUE => "0", USE_ASET => "false", USE_SLOAD => "false", USE_CIN => "false")
		port map(aclr => aclr, clock => clock, cnt_ena => cnt_ena, cout => cout, q => q, sset => sset);
end generate;

assert not (((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 646) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "0") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 486) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 642) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 37) and (USE_SCLR = "false") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 6) and (USE_ENA = "false") and (USE_SSET = "true") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "0") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 482) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = -1) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 20) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = -1) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 9) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = -1) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 644) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 38) and (USE_SCLR = "false") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 6) and (USE_ENA = "false") and (USE_SSET = "true") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "0") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 484) and (USE_SCLR = "true") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 10) and (USE_ENA = "false") and (USE_SSET = "false") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")) or ((SVALUE = "1") and (USE_CNT_ENA = "true") and (USE_COUT = "false") and (MODULUS = 7) and (USE_SCLR = "false") and (NDIRECTION = 1) and (USE_USR_ACLR = "false") and (WIDTH = 3) and (USE_ENA = "false") and (USE_SSET = "true") and (USE_ALOAD = "false") and (AVALUE = "0") and (USE_ASET = "false") and (USE_SLOAD = "false") and (USE_CIN = "false")))
	report "Please run generate again" severity error;

end architecture rtl;

