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

component alt_dspbuilder_memdelay_GNBRIKDQTV is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 16;
		DELAY : positive := 26
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(16-1 downto 0) := (others=>'0');
		output : out std_logic_vector(16-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNBRIKDQTV;

component alt_dspbuilder_memdelay_GN3YPLAG7W is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 16;
		DELAY : positive := 25
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(16-1 downto 0) := (others=>'0');
		output : out std_logic_vector(16-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GN3YPLAG7W;

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

component alt_dspbuilder_memdelay_GNFVL4YT66 is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 8;
		DELAY : positive := 649
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNFVL4YT66;

component alt_dspbuilder_memdelay_GNDI52L3LZ is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 24;
		DELAY : positive := 25
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(24-1 downto 0) := (others=>'0');
		output : out std_logic_vector(24-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNDI52L3LZ;

component alt_dspbuilder_memdelay_GNMIZKWFE6 is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 16;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(16-1 downto 0) := (others=>'0');
		output : out std_logic_vector(16-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNMIZKWFE6;

component alt_dspbuilder_memdelay_GNI6WYI4F7 is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 8;
		DELAY : positive := 29
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNI6WYI4F7;

component alt_dspbuilder_memdelay_GNF7HJJOOI is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 35;
		DELAY : positive := 2
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(35-1 downto 0) := (others=>'0');
		output : out std_logic_vector(35-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNF7HJJOOI;

component alt_dspbuilder_memdelay_GN4TPDAUQN is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 16;
		DELAY : positive := 27
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(16-1 downto 0) := (others=>'0');
		output : out std_logic_vector(16-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GN4TPDAUQN;

component alt_dspbuilder_memdelay_GNMYXI7BAD is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 16;
		DELAY : positive := 2
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(16-1 downto 0) := (others=>'0');
		output : out std_logic_vector(16-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNMYXI7BAD;

component alt_dspbuilder_memdelay_GNNY7HWC5A is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 40;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(40-1 downto 0) := (others=>'0');
		output : out std_logic_vector(40-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNNY7HWC5A;

component alt_dspbuilder_memdelay_GNZWVQQT43 is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 24;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(24-1 downto 0) := (others=>'0');
		output : out std_logic_vector(24-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNZWVQQT43;

component alt_dspbuilder_memdelay_GNC4CQZXMX is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 32;
		DELAY : positive := 2
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(32-1 downto 0) := (others=>'0');
		output : out std_logic_vector(32-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNC4CQZXMX;

component alt_dspbuilder_memdelay_GNN5NKF6I6 is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 8;
		DELAY : positive := 644
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNN5NKF6I6;

component alt_dspbuilder_memdelay_GNYLPPAGO6 is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 8;
		DELAY : positive := 4
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNYLPPAGO6;

component alt_dspbuilder_memdelay_GNNHPAZCPO is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 16;
		DELAY : positive := 640
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(16-1 downto 0) := (others=>'0');
		output : out std_logic_vector(16-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNNHPAZCPO;

component alt_dspbuilder_memdelay_GNY33G4TJP is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 11;
		DELAY : positive := 642
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(11-1 downto 0) := (others=>'0');
		output : out std_logic_vector(11-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNY33G4TJP;

component alt_dspbuilder_memdelay_GNXTKJER6C is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 16;
		DELAY : positive := 642
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(16-1 downto 0) := (others=>'0');
		output : out std_logic_vector(16-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNXTKJER6C;

component alt_dspbuilder_memdelay_GNMCYDWHIR is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 8;
		DELAY : positive := 642
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		ena : in std_logic := '0';
		input : in std_logic_vector(8-1 downto 0) := (others=>'0');
		output : out std_logic_vector(8-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_memdelay_GNMCYDWHIR;

begin

alt_dspbuilder_memdelay_GNBRIKDQTV_0: if ((RAMTYPE = "AUTO") and (WIDTH = 16) and (DELAY = 26)) generate
	inst_alt_dspbuilder_memdelay_GNBRIKDQTV_0: alt_dspbuilder_memdelay_GNBRIKDQTV
		generic map(RAMTYPE => "AUTO", WIDTH => 16, DELAY => 26)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GN3YPLAG7W_1: if ((RAMTYPE = "AUTO") and (WIDTH = 16) and (DELAY = 25)) generate
	inst_alt_dspbuilder_memdelay_GN3YPLAG7W_1: alt_dspbuilder_memdelay_GN3YPLAG7W
		generic map(RAMTYPE => "AUTO", WIDTH => 16, DELAY => 25)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNXMJOJMJV_2: if ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 2)) generate
	inst_alt_dspbuilder_memdelay_GNXMJOJMJV_2: alt_dspbuilder_memdelay_GNXMJOJMJV
		generic map(RAMTYPE => "AUTO", WIDTH => 8, DELAY => 2)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNFVL4YT66_3: if ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 649)) generate
	inst_alt_dspbuilder_memdelay_GNFVL4YT66_3: alt_dspbuilder_memdelay_GNFVL4YT66
		generic map(RAMTYPE => "AUTO", WIDTH => 8, DELAY => 649)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNDI52L3LZ_4: if ((RAMTYPE = "AUTO") and (WIDTH = 24) and (DELAY = 25)) generate
	inst_alt_dspbuilder_memdelay_GNDI52L3LZ_4: alt_dspbuilder_memdelay_GNDI52L3LZ
		generic map(RAMTYPE => "AUTO", WIDTH => 24, DELAY => 25)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNMIZKWFE6_5: if ((RAMTYPE = "AUTO") and (WIDTH = 16) and (DELAY = 1)) generate
	inst_alt_dspbuilder_memdelay_GNMIZKWFE6_5: alt_dspbuilder_memdelay_GNMIZKWFE6
		generic map(RAMTYPE => "AUTO", WIDTH => 16, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNI6WYI4F7_6: if ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 29)) generate
	inst_alt_dspbuilder_memdelay_GNI6WYI4F7_6: alt_dspbuilder_memdelay_GNI6WYI4F7
		generic map(RAMTYPE => "AUTO", WIDTH => 8, DELAY => 29)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNF7HJJOOI_7: if ((RAMTYPE = "AUTO") and (WIDTH = 35) and (DELAY = 2)) generate
	inst_alt_dspbuilder_memdelay_GNF7HJJOOI_7: alt_dspbuilder_memdelay_GNF7HJJOOI
		generic map(RAMTYPE => "AUTO", WIDTH => 35, DELAY => 2)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GN4TPDAUQN_8: if ((RAMTYPE = "AUTO") and (WIDTH = 16) and (DELAY = 27)) generate
	inst_alt_dspbuilder_memdelay_GN4TPDAUQN_8: alt_dspbuilder_memdelay_GN4TPDAUQN
		generic map(RAMTYPE => "AUTO", WIDTH => 16, DELAY => 27)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNMYXI7BAD_9: if ((RAMTYPE = "AUTO") and (WIDTH = 16) and (DELAY = 2)) generate
	inst_alt_dspbuilder_memdelay_GNMYXI7BAD_9: alt_dspbuilder_memdelay_GNMYXI7BAD
		generic map(RAMTYPE => "AUTO", WIDTH => 16, DELAY => 2)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNNY7HWC5A_10: if ((RAMTYPE = "AUTO") and (WIDTH = 40) and (DELAY = 1)) generate
	inst_alt_dspbuilder_memdelay_GNNY7HWC5A_10: alt_dspbuilder_memdelay_GNNY7HWC5A
		generic map(RAMTYPE => "AUTO", WIDTH => 40, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNZWVQQT43_11: if ((RAMTYPE = "AUTO") and (WIDTH = 24) and (DELAY = 1)) generate
	inst_alt_dspbuilder_memdelay_GNZWVQQT43_11: alt_dspbuilder_memdelay_GNZWVQQT43
		generic map(RAMTYPE => "AUTO", WIDTH => 24, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNC4CQZXMX_12: if ((RAMTYPE = "AUTO") and (WIDTH = 32) and (DELAY = 2)) generate
	inst_alt_dspbuilder_memdelay_GNC4CQZXMX_12: alt_dspbuilder_memdelay_GNC4CQZXMX
		generic map(RAMTYPE => "AUTO", WIDTH => 32, DELAY => 2)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNN5NKF6I6_13: if ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 644)) generate
	inst_alt_dspbuilder_memdelay_GNN5NKF6I6_13: alt_dspbuilder_memdelay_GNN5NKF6I6
		generic map(RAMTYPE => "AUTO", WIDTH => 8, DELAY => 644)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNYLPPAGO6_14: if ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 4)) generate
	inst_alt_dspbuilder_memdelay_GNYLPPAGO6_14: alt_dspbuilder_memdelay_GNYLPPAGO6
		generic map(RAMTYPE => "AUTO", WIDTH => 8, DELAY => 4)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNNHPAZCPO_15: if ((RAMTYPE = "AUTO") and (WIDTH = 16) and (DELAY = 640)) generate
	inst_alt_dspbuilder_memdelay_GNNHPAZCPO_15: alt_dspbuilder_memdelay_GNNHPAZCPO
		generic map(RAMTYPE => "AUTO", WIDTH => 16, DELAY => 640)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNY33G4TJP_16: if ((RAMTYPE = "AUTO") and (WIDTH = 11) and (DELAY = 642)) generate
	inst_alt_dspbuilder_memdelay_GNY33G4TJP_16: alt_dspbuilder_memdelay_GNY33G4TJP
		generic map(RAMTYPE => "AUTO", WIDTH => 11, DELAY => 642)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNXTKJER6C_17: if ((RAMTYPE = "AUTO") and (WIDTH = 16) and (DELAY = 642)) generate
	inst_alt_dspbuilder_memdelay_GNXTKJER6C_17: alt_dspbuilder_memdelay_GNXTKJER6C
		generic map(RAMTYPE => "AUTO", WIDTH => 16, DELAY => 642)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

alt_dspbuilder_memdelay_GNMCYDWHIR_18: if ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 642)) generate
	inst_alt_dspbuilder_memdelay_GNMCYDWHIR_18: alt_dspbuilder_memdelay_GNMCYDWHIR
		generic map(RAMTYPE => "AUTO", WIDTH => 8, DELAY => 642)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

assert not (((RAMTYPE = "AUTO") and (WIDTH = 16) and (DELAY = 26)) or ((RAMTYPE = "AUTO") and (WIDTH = 16) and (DELAY = 25)) or ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 2)) or ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 649)) or ((RAMTYPE = "AUTO") and (WIDTH = 24) and (DELAY = 25)) or ((RAMTYPE = "AUTO") and (WIDTH = 16) and (DELAY = 1)) or ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 29)) or ((RAMTYPE = "AUTO") and (WIDTH = 35) and (DELAY = 2)) or ((RAMTYPE = "AUTO") and (WIDTH = 16) and (DELAY = 27)) or ((RAMTYPE = "AUTO") and (WIDTH = 16) and (DELAY = 2)) or ((RAMTYPE = "AUTO") and (WIDTH = 40) and (DELAY = 1)) or ((RAMTYPE = "AUTO") and (WIDTH = 24) and (DELAY = 1)) or ((RAMTYPE = "AUTO") and (WIDTH = 32) and (DELAY = 2)) or ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 644)) or ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 4)) or ((RAMTYPE = "AUTO") and (WIDTH = 16) and (DELAY = 640)) or ((RAMTYPE = "AUTO") and (WIDTH = 11) and (DELAY = 642)) or ((RAMTYPE = "AUTO") and (WIDTH = 16) and (DELAY = 642)) or ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 642)))
	report "Please run generate again" severity error;

end architecture rtl;

