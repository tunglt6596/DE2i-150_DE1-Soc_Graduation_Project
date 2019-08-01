-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity alt_dspbuilder_memdelay is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 8;
		DELAY : positive := 1
	);
	port (
		output : out std_logic_vector(WIDTH-1 downto 0);
		input : in std_logic_vector(WIDTH-1 downto 0) := (others=>'0');
		aclr : in std_logic := '0';
		user_aclr : in std_logic := '0';
		ena : in std_logic := '0';
		clock : in std_logic := '0'
	);
end entity alt_dspbuilder_memdelay;

architecture rtl of alt_dspbuilder_memdelay is

component alt_dspbuilder_memdelay_GN7KC3ZSDB is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 8;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GN7KC3ZSDB;

component alt_dspbuilder_memdelay_GNR55NYJWV is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 1;
		DELAY : positive := 2
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(1-1 downto 0) := (others=>'0');
		output : out std_logic_vector(1-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNR55NYJWV;

component alt_dspbuilder_memdelay_GNT3M75IMA is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 10;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(10-1 downto 0) := (others=>'0');
		output : out std_logic_vector(10-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNT3M75IMA;

component alt_dspbuilder_memdelay_GNWC3A6ZFD is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 8;
		DELAY : positive := 5286
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNWC3A6ZFD;

component alt_dspbuilder_memdelay_GNXMJOJMJV is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 8;
		DELAY : positive := 2
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNXMJOJMJV;

component alt_dspbuilder_memdelay_GNMKBYCW7B is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 8;
		DELAY : positive := 2690
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNMKBYCW7B;

component alt_dspbuilder_memdelay_GNOQUXON7R is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 8;
		DELAY : positive := 27
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNOQUXON7R;

component alt_dspbuilder_memdelay_GNE2RSMKSX is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 10;
		DELAY : positive := 5285
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(10-1 downto 0) := (others=>'0');
		output : out std_logic_vector(10-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNE2RSMKSX;

component alt_dspbuilder_memdelay_GNOSZN6L7S is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 8;
		DELAY : positive := 2608
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNOSZN6L7S;

component alt_dspbuilder_memdelay_GNGGI56XG4 is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 8;
		DELAY : positive := 664
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNGGI56XG4;

component alt_dspbuilder_memdelay_GN7N5V3HY7 is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 10;
		DELAY : positive := 2689
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(10-1 downto 0) := (others=>'0');
		output : out std_logic_vector(10-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GN7N5V3HY7;

component alt_dspbuilder_memdelay_GNQ44RXMM7 is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 8;
		DELAY : positive := 1320
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNQ44RXMM7;

begin

alt_dspbuilder_memdelay_GN7KC3ZSDB_0: if ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 1)) generate
	inst_alt_dspbuilder_memdelay_GN7KC3ZSDB_0: alt_dspbuilder_memdelay_GN7KC3ZSDB
		generic map(RAMTYPE => "AUTO", WIDTH => 8, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNR55NYJWV_1: if ((RAMTYPE = "AUTO") and (WIDTH = 1) and (DELAY = 2)) generate
	inst_alt_dspbuilder_memdelay_GNR55NYJWV_1: alt_dspbuilder_memdelay_GNR55NYJWV
		generic map(RAMTYPE => "AUTO", WIDTH => 1, DELAY => 2)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNT3M75IMA_2: if ((RAMTYPE = "AUTO") and (WIDTH = 10) and (DELAY = 1)) generate
	inst_alt_dspbuilder_memdelay_GNT3M75IMA_2: alt_dspbuilder_memdelay_GNT3M75IMA
		generic map(RAMTYPE => "AUTO", WIDTH => 10, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNWC3A6ZFD_3: if ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 5286)) generate
	inst_alt_dspbuilder_memdelay_GNWC3A6ZFD_3: alt_dspbuilder_memdelay_GNWC3A6ZFD
		generic map(RAMTYPE => "AUTO", WIDTH => 8, DELAY => 5286)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNXMJOJMJV_4: if ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 2)) generate
	inst_alt_dspbuilder_memdelay_GNXMJOJMJV_4: alt_dspbuilder_memdelay_GNXMJOJMJV
		generic map(RAMTYPE => "AUTO", WIDTH => 8, DELAY => 2)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNMKBYCW7B_5: if ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 2690)) generate
	inst_alt_dspbuilder_memdelay_GNMKBYCW7B_5: alt_dspbuilder_memdelay_GNMKBYCW7B
		generic map(RAMTYPE => "AUTO", WIDTH => 8, DELAY => 2690)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNOQUXON7R_6: if ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 27)) generate
	inst_alt_dspbuilder_memdelay_GNOQUXON7R_6: alt_dspbuilder_memdelay_GNOQUXON7R
		generic map(RAMTYPE => "AUTO", WIDTH => 8, DELAY => 27)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNE2RSMKSX_7: if ((RAMTYPE = "AUTO") and (WIDTH = 10) and (DELAY = 5285)) generate
	inst_alt_dspbuilder_memdelay_GNE2RSMKSX_7: alt_dspbuilder_memdelay_GNE2RSMKSX
		generic map(RAMTYPE => "AUTO", WIDTH => 10, DELAY => 5285)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNOSZN6L7S_8: if ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 2608)) generate
	inst_alt_dspbuilder_memdelay_GNOSZN6L7S_8: alt_dspbuilder_memdelay_GNOSZN6L7S
		generic map(RAMTYPE => "AUTO", WIDTH => 8, DELAY => 2608)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNGGI56XG4_9: if ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 664)) generate
	inst_alt_dspbuilder_memdelay_GNGGI56XG4_9: alt_dspbuilder_memdelay_GNGGI56XG4
		generic map(RAMTYPE => "AUTO", WIDTH => 8, DELAY => 664)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GN7N5V3HY7_10: if ((RAMTYPE = "AUTO") and (WIDTH = 10) and (DELAY = 2689)) generate
	inst_alt_dspbuilder_memdelay_GN7N5V3HY7_10: alt_dspbuilder_memdelay_GN7N5V3HY7
		generic map(RAMTYPE => "AUTO", WIDTH => 10, DELAY => 2689)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNQ44RXMM7_11: if ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 1320)) generate
	inst_alt_dspbuilder_memdelay_GNQ44RXMM7_11: alt_dspbuilder_memdelay_GNQ44RXMM7
		generic map(RAMTYPE => "AUTO", WIDTH => 8, DELAY => 1320)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

assert not (((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 1)) or ((RAMTYPE = "AUTO") and (WIDTH = 1) and (DELAY = 2)) or ((RAMTYPE = "AUTO") and (WIDTH = 10) and (DELAY = 1)) or ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 5286)) or ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 2)) or ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 2690)) or ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 27)) or ((RAMTYPE = "AUTO") and (WIDTH = 10) and (DELAY = 5285)) or ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 2608)) or ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 664)) or ((RAMTYPE = "AUTO") and (WIDTH = 10) and (DELAY = 2689)) or ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 1320)))
	report "Please run generate again" severity error;

end architecture rtl;

