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

component alt_dspbuilder_delay_GNCY3KEQXH is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "000000010000000000000000";
		WIDTH : positive := 24;
		USE_INIT : natural := 0;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(24-1 downto 0) := (others=>'0');
		output : out std_logic_vector(24-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNCY3KEQXH;

component alt_dspbuilder_delay_GNIDQK4WDH is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "10000000000000000";
		WIDTH : positive := 17;
		USE_INIT : natural := 0;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(17-1 downto 0) := (others=>'0');
		output : out std_logic_vector(17-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNIDQK4WDH;

component alt_dspbuilder_delay_GN3E5TB7KU is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "0000000100000000";
		WIDTH : positive := 16;
		USE_INIT : natural := 0;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(16-1 downto 0) := (others=>'0');
		output : out std_logic_vector(16-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GN3E5TB7KU;

component alt_dspbuilder_delay_GNTBDM57LR is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "1";
		WIDTH : positive := 1;
		USE_INIT : natural := 0;
		DELAY : positive := 2
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(1-1 downto 0) := (others=>'0');
		output : out std_logic_vector(1-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNTBDM57LR;

component alt_dspbuilder_delay_GNGQ56ZS4N is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "1";
		WIDTH : positive := 1;
		USE_INIT : natural := 0;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(1-1 downto 0) := (others=>'0');
		output : out std_logic_vector(1-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNGQ56ZS4N;

component alt_dspbuilder_delay_GNNQSQIG3K is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "1";
		WIDTH : positive := 1;
		USE_INIT : natural := 0;
		DELAY : positive := 3
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(1-1 downto 0) := (others=>'0');
		output : out std_logic_vector(1-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNNQSQIG3K;

component alt_dspbuilder_delay_GNUACQWN66 is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "0000000001";
		WIDTH : positive := 10;
		USE_INIT : natural := 0;
		DELAY : positive := 4
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(10-1 downto 0) := (others=>'0');
		output : out std_logic_vector(10-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNUACQWN66;

component alt_dspbuilder_delay_GNQBXYU75H is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "1";
		WIDTH : positive := 1;
		USE_INIT : natural := 0;
		DELAY : positive := 4
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(1-1 downto 0) := (others=>'0');
		output : out std_logic_vector(1-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNQBXYU75H;

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

component alt_dspbuilder_delay_GNAM6PTFR4 is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "0000000001";
		WIDTH : positive := 10;
		USE_INIT : natural := 0;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(10-1 downto 0) := (others=>'0');
		output : out std_logic_vector(10-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNAM6PTFR4;

component alt_dspbuilder_delay_GNF54IOIE4 is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "0000000000000000";
		WIDTH : positive := 16;
		USE_INIT : natural := 0;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(16-1 downto 0) := (others=>'0');
		output : out std_logic_vector(16-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNF54IOIE4;

component alt_dspbuilder_delay_GNKPK2IWBA is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "00000000001";
		WIDTH : positive := 11;
		USE_INIT : natural := 0;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(11-1 downto 0) := (others=>'0');
		output : out std_logic_vector(11-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNKPK2IWBA;

component alt_dspbuilder_delay_GNG36NZ2PG is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "0000000000000001";
		WIDTH : positive := 16;
		USE_INIT : natural := 0;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(16-1 downto 0) := (others=>'0');
		output : out std_logic_vector(16-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNG36NZ2PG;

component alt_dspbuilder_delay_GNIBRIOGPR is
	generic (
		CLOCKPHASE : string := "1";
		BITPATTERN : string := "00000001";
		WIDTH : positive := 8;
		USE_INIT : natural := 0;
		DELAY : positive := 5
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_delay_GNIBRIOGPR;

begin

alt_dspbuilder_delay_GNCY3KEQXH_0: if ((CLOCKPHASE = "1") and (BITPATTERN = "000000010000000000000000") and (WIDTH = 24) and (USE_INIT = 0) and (DELAY = 1)) generate
	inst_alt_dspbuilder_delay_GNCY3KEQXH_0: alt_dspbuilder_delay_GNCY3KEQXH
		generic map(CLOCKPHASE => "1", BITPATTERN => "000000010000000000000000", WIDTH => 24, USE_INIT => 0, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNIDQK4WDH_1: if ((CLOCKPHASE = "1") and (BITPATTERN = "10000000000000000") and (WIDTH = 17) and (USE_INIT = 0) and (DELAY = 1)) generate
	inst_alt_dspbuilder_delay_GNIDQK4WDH_1: alt_dspbuilder_delay_GNIDQK4WDH
		generic map(CLOCKPHASE => "1", BITPATTERN => "10000000000000000", WIDTH => 17, USE_INIT => 0, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GN3E5TB7KU_2: if ((CLOCKPHASE = "1") and (BITPATTERN = "0000000100000000") and (WIDTH = 16) and (USE_INIT = 0) and (DELAY = 1)) generate
	inst_alt_dspbuilder_delay_GN3E5TB7KU_2: alt_dspbuilder_delay_GN3E5TB7KU
		generic map(CLOCKPHASE => "1", BITPATTERN => "0000000100000000", WIDTH => 16, USE_INIT => 0, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNTBDM57LR_3: if ((CLOCKPHASE = "1") and (BITPATTERN = "1") and (WIDTH = 1) and (USE_INIT = 0) and (DELAY = 2)) generate
	inst_alt_dspbuilder_delay_GNTBDM57LR_3: alt_dspbuilder_delay_GNTBDM57LR
		generic map(CLOCKPHASE => "1", BITPATTERN => "1", WIDTH => 1, USE_INIT => 0, DELAY => 2)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNGQ56ZS4N_4: if ((CLOCKPHASE = "1") and (BITPATTERN = "1") and (WIDTH = 1) and (USE_INIT = 0) and (DELAY = 1)) generate
	inst_alt_dspbuilder_delay_GNGQ56ZS4N_4: alt_dspbuilder_delay_GNGQ56ZS4N
		generic map(CLOCKPHASE => "1", BITPATTERN => "1", WIDTH => 1, USE_INIT => 0, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNNQSQIG3K_5: if ((CLOCKPHASE = "1") and (BITPATTERN = "1") and (WIDTH = 1) and (USE_INIT = 0) and (DELAY = 3)) generate
	inst_alt_dspbuilder_delay_GNNQSQIG3K_5: alt_dspbuilder_delay_GNNQSQIG3K
		generic map(CLOCKPHASE => "1", BITPATTERN => "1", WIDTH => 1, USE_INIT => 0, DELAY => 3)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNUACQWN66_6: if ((CLOCKPHASE = "1") and (BITPATTERN = "0000000001") and (WIDTH = 10) and (USE_INIT = 0) and (DELAY = 4)) generate
	inst_alt_dspbuilder_delay_GNUACQWN66_6: alt_dspbuilder_delay_GNUACQWN66
		generic map(CLOCKPHASE => "1", BITPATTERN => "0000000001", WIDTH => 10, USE_INIT => 0, DELAY => 4)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNQBXYU75H_7: if ((CLOCKPHASE = "1") and (BITPATTERN = "1") and (WIDTH = 1) and (USE_INIT = 0) and (DELAY = 4)) generate
	inst_alt_dspbuilder_delay_GNQBXYU75H_7: alt_dspbuilder_delay_GNQBXYU75H
		generic map(CLOCKPHASE => "1", BITPATTERN => "1", WIDTH => 1, USE_INIT => 0, DELAY => 4)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GN53FGQEY3_8: if ((CLOCKPHASE = "1") and (BITPATTERN = "00000001") and (WIDTH = 8) and (USE_INIT = 0) and (DELAY = 1)) generate
	inst_alt_dspbuilder_delay_GN53FGQEY3_8: alt_dspbuilder_delay_GN53FGQEY3
		generic map(CLOCKPHASE => "1", BITPATTERN => "00000001", WIDTH => 8, USE_INIT => 0, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNAM6PTFR4_9: if ((CLOCKPHASE = "1") and (BITPATTERN = "0000000001") and (WIDTH = 10) and (USE_INIT = 0) and (DELAY = 1)) generate
	inst_alt_dspbuilder_delay_GNAM6PTFR4_9: alt_dspbuilder_delay_GNAM6PTFR4
		generic map(CLOCKPHASE => "1", BITPATTERN => "0000000001", WIDTH => 10, USE_INIT => 0, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNF54IOIE4_10: if ((CLOCKPHASE = "1") and (BITPATTERN = "0000000000000000") and (WIDTH = 16) and (USE_INIT = 0) and (DELAY = 1)) generate
	inst_alt_dspbuilder_delay_GNF54IOIE4_10: alt_dspbuilder_delay_GNF54IOIE4
		generic map(CLOCKPHASE => "1", BITPATTERN => "0000000000000000", WIDTH => 16, USE_INIT => 0, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNKPK2IWBA_11: if ((CLOCKPHASE = "1") and (BITPATTERN = "00000000001") and (WIDTH = 11) and (USE_INIT = 0) and (DELAY = 1)) generate
	inst_alt_dspbuilder_delay_GNKPK2IWBA_11: alt_dspbuilder_delay_GNKPK2IWBA
		generic map(CLOCKPHASE => "1", BITPATTERN => "00000000001", WIDTH => 11, USE_INIT => 0, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNG36NZ2PG_12: if ((CLOCKPHASE = "1") and (BITPATTERN = "0000000000000001") and (WIDTH = 16) and (USE_INIT = 0) and (DELAY = 1)) generate
	inst_alt_dspbuilder_delay_GNG36NZ2PG_12: alt_dspbuilder_delay_GNG36NZ2PG
		generic map(CLOCKPHASE => "1", BITPATTERN => "0000000000000001", WIDTH => 16, USE_INIT => 0, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

alt_dspbuilder_delay_GNIBRIOGPR_13: if ((CLOCKPHASE = "1") and (BITPATTERN = "00000001") and (WIDTH = 8) and (USE_INIT = 0) and (DELAY = 5)) generate
	inst_alt_dspbuilder_delay_GNIBRIOGPR_13: alt_dspbuilder_delay_GNIBRIOGPR
		generic map(CLOCKPHASE => "1", BITPATTERN => "00000001", WIDTH => 8, USE_INIT => 0, DELAY => 5)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, sclr => sclr);
end generate;

assert not (((CLOCKPHASE = "1") and (BITPATTERN = "000000010000000000000000") and (WIDTH = 24) and (USE_INIT = 0) and (DELAY = 1)) or ((CLOCKPHASE = "1") and (BITPATTERN = "10000000000000000") and (WIDTH = 17) and (USE_INIT = 0) and (DELAY = 1)) or ((CLOCKPHASE = "1") and (BITPATTERN = "0000000100000000") and (WIDTH = 16) and (USE_INIT = 0) and (DELAY = 1)) or ((CLOCKPHASE = "1") and (BITPATTERN = "1") and (WIDTH = 1) and (USE_INIT = 0) and (DELAY = 2)) or ((CLOCKPHASE = "1") and (BITPATTERN = "1") and (WIDTH = 1) and (USE_INIT = 0) and (DELAY = 1)) or ((CLOCKPHASE = "1") and (BITPATTERN = "1") and (WIDTH = 1) and (USE_INIT = 0) and (DELAY = 3)) or ((CLOCKPHASE = "1") and (BITPATTERN = "0000000001") and (WIDTH = 10) and (USE_INIT = 0) and (DELAY = 4)) or ((CLOCKPHASE = "1") and (BITPATTERN = "1") and (WIDTH = 1) and (USE_INIT = 0) and (DELAY = 4)) or ((CLOCKPHASE = "1") and (BITPATTERN = "00000001") and (WIDTH = 8) and (USE_INIT = 0) and (DELAY = 1)) or ((CLOCKPHASE = "1") and (BITPATTERN = "0000000001") and (WIDTH = 10) and (USE_INIT = 0) and (DELAY = 1)) or ((CLOCKPHASE = "1") and (BITPATTERN = "0000000000000000") and (WIDTH = 16) and (USE_INIT = 0) and (DELAY = 1)) or ((CLOCKPHASE = "1") and (BITPATTERN = "00000000001") and (WIDTH = 11) and (USE_INIT = 0) and (DELAY = 1)) or ((CLOCKPHASE = "1") and (BITPATTERN = "0000000000000001") and (WIDTH = 16) and (USE_INIT = 0) and (DELAY = 1)) or ((CLOCKPHASE = "1") and (BITPATTERN = "00000001") and (WIDTH = 8) and (USE_INIT = 0) and (DELAY = 5)))
	report "Please run generate again" severity error;

end architecture rtl;

