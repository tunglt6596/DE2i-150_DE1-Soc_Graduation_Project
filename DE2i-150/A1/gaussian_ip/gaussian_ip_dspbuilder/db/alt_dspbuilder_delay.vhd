-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity alt_dspbuilder_delay is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "00000001";
		WIDTH : positive := 8;
		USE_INIT : natural := 0;
		DELAY : positive := 1
	);
	port (
		output : out std_logic_vector(width-1 downto 0);
		input : in std_logic_vector(width-1 downto 0) := (others=>'0');
		sclr : in std_logic := '0';
		aclr : in std_logic := '0';
		ena : in std_logic := '0';
		clock : in std_logic := '0'
	);
end entity alt_dspbuilder_delay;

architecture rtl of alt_dspbuilder_delay is

component alt_dspbuilder_delay_GNMDMEZDYK is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "00000001";
		WIDTH : positive := 8;
		USE_INIT : natural := 0;
		DELAY : positive := 6
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNMDMEZDYK;

component alt_dspbuilder_delay_GNSPCBEWTM is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "0000000001";
		WIDTH : positive := 10;
		USE_INIT : natural := 0;
		DELAY : positive := 6
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(10-1 downto 0) := (others=>'0');
		output : out std_logic_vector(10-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNSPCBEWTM;

component alt_dspbuilder_delay_GNHH4N4SYH is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "0000000000001";
		WIDTH : positive := 13;
		USE_INIT : natural := 0;
		DELAY : positive := 3
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(13-1 downto 0) := (others=>'0');
		output : out std_logic_vector(13-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNHH4N4SYH;

component alt_dspbuilder_delay_GN2KYXQF4S is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "000000000000001";
		WIDTH : positive := 15;
		USE_INIT : natural := 0;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(15-1 downto 0) := (others=>'0');
		output : out std_logic_vector(15-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GN2KYXQF4S;

component alt_dspbuilder_delay_GNALDIUCHM is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "000000000001";
		WIDTH : positive := 12;
		USE_INIT : natural := 0;
		DELAY : positive := 6
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(12-1 downto 0) := (others=>'0');
		output : out std_logic_vector(12-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNALDIUCHM;

component alt_dspbuilder_delay_GN53FGQEY3 is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "00000001";
		WIDTH : positive := 8;
		USE_INIT : natural := 0;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GN53FGQEY3;

component alt_dspbuilder_delay_GNB2ILTO6J is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "00000001";
		WIDTH : positive := 8;
		USE_INIT : natural := 0;
		DELAY : positive := 4
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNB2ILTO6J;

component alt_dspbuilder_delay_GNM33AESK5 is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "00000001";
		WIDTH : positive := 8;
		USE_INIT : natural := 0;
		DELAY : positive := 2
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNM33AESK5;

begin

alt_dspbuilder_delay_GNMDMEZDYK_0: if ((CLOCKPHASE = "1") and (BITPATTERN = "00000001") and (WIDTH = 8) and (USE_INIT = 0) and (DELAY = 6)) generate
	inst_alt_dspbuilder_delay_GNMDMEZDYK_0: alt_dspbuilder_delay_GNMDMEZDYK
		generic map(CLOCKPHASE => "1", BITPATTERN => "00000001", WIDTH => 8, USE_INIT => 0, DELAY => 6)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNSPCBEWTM_1: if ((CLOCKPHASE = "1") and (BITPATTERN = "0000000001") and (WIDTH = 10) and (USE_INIT = 0) and (DELAY = 6)) generate
	inst_alt_dspbuilder_delay_GNSPCBEWTM_1: alt_dspbuilder_delay_GNSPCBEWTM
		generic map(CLOCKPHASE => "1", BITPATTERN => "0000000001", WIDTH => 10, USE_INIT => 0, DELAY => 6)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNHH4N4SYH_2: if ((CLOCKPHASE = "1") and (BITPATTERN = "0000000000001") and (WIDTH = 13) and (USE_INIT = 0) and (DELAY = 3)) generate
	inst_alt_dspbuilder_delay_GNHH4N4SYH_2: alt_dspbuilder_delay_GNHH4N4SYH
		generic map(CLOCKPHASE => "1", BITPATTERN => "0000000000001", WIDTH => 13, USE_INIT => 0, DELAY => 3)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GN2KYXQF4S_3: if ((CLOCKPHASE = "1") and (BITPATTERN = "000000000000001") and (WIDTH = 15) and (USE_INIT = 0) and (DELAY = 1)) generate
	inst_alt_dspbuilder_delay_GN2KYXQF4S_3: alt_dspbuilder_delay_GN2KYXQF4S
		generic map(CLOCKPHASE => "1", BITPATTERN => "000000000000001", WIDTH => 15, USE_INIT => 0, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNALDIUCHM_4: if ((CLOCKPHASE = "1") and (BITPATTERN = "000000000001") and (WIDTH = 12) and (USE_INIT = 0) and (DELAY = 6)) generate
	inst_alt_dspbuilder_delay_GNALDIUCHM_4: alt_dspbuilder_delay_GNALDIUCHM
		generic map(CLOCKPHASE => "1", BITPATTERN => "000000000001", WIDTH => 12, USE_INIT => 0, DELAY => 6)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GN53FGQEY3_5: if ((CLOCKPHASE = "1") and (BITPATTERN = "00000001") and (WIDTH = 8) and (USE_INIT = 0) and (DELAY = 1)) generate
	inst_alt_dspbuilder_delay_GN53FGQEY3_5: alt_dspbuilder_delay_GN53FGQEY3
		generic map(CLOCKPHASE => "1", BITPATTERN => "00000001", WIDTH => 8, USE_INIT => 0, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNB2ILTO6J_6: if ((CLOCKPHASE = "1") and (BITPATTERN = "00000001") and (WIDTH = 8) and (USE_INIT = 0) and (DELAY = 4)) generate
	inst_alt_dspbuilder_delay_GNB2ILTO6J_6: alt_dspbuilder_delay_GNB2ILTO6J
		generic map(CLOCKPHASE => "1", BITPATTERN => "00000001", WIDTH => 8, USE_INIT => 0, DELAY => 4)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNM33AESK5_7: if ((CLOCKPHASE = "1") and (BITPATTERN = "00000001") and (WIDTH = 8) and (USE_INIT = 0) and (DELAY = 2)) generate
	inst_alt_dspbuilder_delay_GNM33AESK5_7: alt_dspbuilder_delay_GNM33AESK5
		generic map(CLOCKPHASE => "1", BITPATTERN => "00000001", WIDTH => 8, USE_INIT => 0, DELAY => 2)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

assert not (((CLOCKPHASE = "1") and (BITPATTERN = "00000001") and (WIDTH = 8) and (USE_INIT = 0) and (DELAY = 6)) or ((CLOCKPHASE = "1") and (BITPATTERN = "0000000001") and (WIDTH = 10) and (USE_INIT = 0) and (DELAY = 6)) or ((CLOCKPHASE = "1") and (BITPATTERN = "0000000000001") and (WIDTH = 13) and (USE_INIT = 0) and (DELAY = 3)) or ((CLOCKPHASE = "1") and (BITPATTERN = "000000000000001") and (WIDTH = 15) and (USE_INIT = 0) and (DELAY = 1)) or ((CLOCKPHASE = "1") and (BITPATTERN = "000000000001") and (WIDTH = 12) and (USE_INIT = 0) and (DELAY = 6)) or ((CLOCKPHASE = "1") and (BITPATTERN = "00000001") and (WIDTH = 8) and (USE_INIT = 0) and (DELAY = 1)) or ((CLOCKPHASE = "1") and (BITPATTERN = "00000001") and (WIDTH = 8) and (USE_INIT = 0) and (DELAY = 4)) or ((CLOCKPHASE = "1") and (BITPATTERN = "00000001") and (WIDTH = 8) and (USE_INIT = 0) and (DELAY = 2)))
	report "Please run generate again" severity error;

end architecture rtl;

