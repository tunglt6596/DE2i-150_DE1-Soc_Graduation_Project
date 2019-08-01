-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity alt_dspbuilder_multiplier is
	generic (
		AWIDTH : natural := 8;
		SIGNED : natural := 0;
		BWIDTH : natural := 8;
		DEDICATED_MULTIPLIER_CIRCUITRY : string := "AUTO";
		PIPELINE : integer := 0;
		OUTPUTLSB : integer := 0;
		OUTPUTMSB : integer := 8
	);
	port (
		result : out std_logic_vector(OutputMsb-OutputLsb+1-1 downto 0);
		aclr : in std_logic := '0';
		datab : in std_logic_vector(bWidth-1 downto 0) := (others=>'0');
		dataa : in std_logic_vector(aWidth-1 downto 0) := (others=>'0');
		user_aclr : in std_logic := '0';
		ena : in std_logic := '0';
		clock : in std_logic := '0'
	);
end entity alt_dspbuilder_multiplier;

architecture rtl of alt_dspbuilder_multiplier is

component alt_dspbuilder_multiplier_GNSFKO7633 is
	generic (
		AWIDTH : natural := 17;
		SIGNED : natural := 0;
		BWIDTH : natural := 16;
		DEDICATED_MULTIPLIER_CIRCUITRY : string := "YES";
		PIPELINE : integer := 1;
		OUTPUTLSB : integer := 8;
		OUTPUTMSB : integer := 31
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		dataa : in std_logic_vector(17-1 downto 0) := (others=>'0');
		datab : in std_logic_vector(16-1 downto 0) := (others=>'0');
		ena : in std_logic := '0';
		result : out std_logic_vector(24-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_multiplier_GNSFKO7633;

component alt_dspbuilder_multiplier_GN64HZKYCA is
	generic (
		AWIDTH : natural := 8;
		SIGNED : natural := 0;
		BWIDTH : natural := 8;
		DEDICATED_MULTIPLIER_CIRCUITRY : string := "YES";
		PIPELINE : integer := 1;
		OUTPUTLSB : integer := 0;
		OUTPUTMSB : integer := 15
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		dataa : in std_logic_vector(8-1 downto 0) := (others=>'0');
		datab : in std_logic_vector(8-1 downto 0) := (others=>'0');
		ena : in std_logic := '0';
		result : out std_logic_vector(16-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_multiplier_GN64HZKYCA;

component alt_dspbuilder_multiplier_GN2GJCFTFE is
	generic (
		AWIDTH : natural := 35;
		SIGNED : natural := 0;
		BWIDTH : natural := 24;
		DEDICATED_MULTIPLIER_CIRCUITRY : string := "YES";
		PIPELINE : integer := 1;
		OUTPUTLSB : integer := 24;
		OUTPUTMSB : integer := 58
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		dataa : in std_logic_vector(35-1 downto 0) := (others=>'0');
		datab : in std_logic_vector(24-1 downto 0) := (others=>'0');
		ena : in std_logic := '0';
		result : out std_logic_vector(35-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_multiplier_GN2GJCFTFE;

component alt_dspbuilder_multiplier_GNKTEWW72G is
	generic (
		AWIDTH : natural := 16;
		SIGNED : natural := 0;
		BWIDTH : natural := 8;
		DEDICATED_MULTIPLIER_CIRCUITRY : string := "YES";
		PIPELINE : integer := 1;
		OUTPUTLSB : integer := 8;
		OUTPUTMSB : integer := 23
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		dataa : in std_logic_vector(16-1 downto 0) := (others=>'0');
		datab : in std_logic_vector(8-1 downto 0) := (others=>'0');
		ena : in std_logic := '0';
		result : out std_logic_vector(16-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_multiplier_GNKTEWW72G;

component alt_dspbuilder_multiplier_GNUSAT2VBO is
	generic (
		AWIDTH : natural := 16;
		SIGNED : natural := 0;
		BWIDTH : natural := 8;
		DEDICATED_MULTIPLIER_CIRCUITRY : string := "YES";
		PIPELINE : integer := 1;
		OUTPUTLSB : integer := 0;
		OUTPUTMSB : integer := 23
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		dataa : in std_logic_vector(16-1 downto 0) := (others=>'0');
		datab : in std_logic_vector(8-1 downto 0) := (others=>'0');
		ena : in std_logic := '0';
		result : out std_logic_vector(24-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_multiplier_GNUSAT2VBO;

component alt_dspbuilder_multiplier_GNXX7E2RLJ is
	generic (
		AWIDTH : natural := 32;
		SIGNED : natural := 0;
		BWIDTH : natural := 24;
		DEDICATED_MULTIPLIER_CIRCUITRY : string := "YES";
		PIPELINE : integer := 1;
		OUTPUTLSB : integer := 0;
		OUTPUTMSB : integer := 31
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		dataa : in std_logic_vector(32-1 downto 0) := (others=>'0');
		datab : in std_logic_vector(24-1 downto 0) := (others=>'0');
		ena : in std_logic := '0';
		result : out std_logic_vector(32-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_multiplier_GNXX7E2RLJ;

component alt_dspbuilder_multiplier_GNWZAKUPA4 is
	generic (
		AWIDTH : natural := 32;
		SIGNED : natural := 0;
		BWIDTH : natural := 32;
		DEDICATED_MULTIPLIER_CIRCUITRY : string := "YES";
		PIPELINE : integer := 1;
		OUTPUTLSB : integer := 24;
		OUTPUTMSB : integer := 63
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		dataa : in std_logic_vector(32-1 downto 0) := (others=>'0');
		datab : in std_logic_vector(32-1 downto 0) := (others=>'0');
		ena : in std_logic := '0';
		result : out std_logic_vector(40-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_multiplier_GNWZAKUPA4;

component alt_dspbuilder_multiplier_GNT7YVH2RY is
	generic (
		AWIDTH : natural := 20;
		SIGNED : natural := 0;
		BWIDTH : natural := 24;
		DEDICATED_MULTIPLIER_CIRCUITRY : string := "YES";
		PIPELINE : integer := 1;
		OUTPUTLSB : integer := 24;
		OUTPUTMSB : integer := 39
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		dataa : in std_logic_vector(20-1 downto 0) := (others=>'0');
		datab : in std_logic_vector(24-1 downto 0) := (others=>'0');
		ena : in std_logic := '0';
		result : out std_logic_vector(16-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_multiplier_GNT7YVH2RY;

component alt_dspbuilder_multiplier_GN4OQUTWTO is
	generic (
		AWIDTH : natural := 12;
		SIGNED : natural := 0;
		BWIDTH : natural := 24;
		DEDICATED_MULTIPLIER_CIRCUITRY : string := "YES";
		PIPELINE : integer := 1;
		OUTPUTLSB : integer := 24;
		OUTPUTMSB : integer := 31
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		dataa : in std_logic_vector(12-1 downto 0) := (others=>'0');
		datab : in std_logic_vector(24-1 downto 0) := (others=>'0');
		ena : in std_logic := '0';
		result : out std_logic_vector(8-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_multiplier_GN4OQUTWTO;

component alt_dspbuilder_multiplier_GN4LMOW2WU is
	generic (
		AWIDTH : natural := 15;
		SIGNED : natural := 0;
		BWIDTH : natural := 24;
		DEDICATED_MULTIPLIER_CIRCUITRY : string := "YES";
		PIPELINE : integer := 1;
		OUTPUTLSB : integer := 0;
		OUTPUTMSB : integer := 34
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		dataa : in std_logic_vector(15-1 downto 0) := (others=>'0');
		datab : in std_logic_vector(24-1 downto 0) := (others=>'0');
		ena : in std_logic := '0';
		result : out std_logic_vector(35-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_multiplier_GN4LMOW2WU;

component alt_dspbuilder_multiplier_GNYACTWEAF is
	generic (
		AWIDTH : natural := 20;
		SIGNED : natural := 0;
		BWIDTH : natural := 24;
		DEDICATED_MULTIPLIER_CIRCUITRY : string := "YES";
		PIPELINE : integer := 1;
		OUTPUTLSB : integer := 0;
		OUTPUTMSB : integer := 39
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		dataa : in std_logic_vector(20-1 downto 0) := (others=>'0');
		datab : in std_logic_vector(24-1 downto 0) := (others=>'0');
		ena : in std_logic := '0';
		result : out std_logic_vector(40-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_multiplier_GNYACTWEAF;

component alt_dspbuilder_multiplier_GN2RACAKCQ is
	generic (
		AWIDTH : natural := 12;
		SIGNED : natural := 0;
		BWIDTH : natural := 24;
		DEDICATED_MULTIPLIER_CIRCUITRY : string := "YES";
		PIPELINE : integer := 1;
		OUTPUTLSB : integer := 0;
		OUTPUTMSB : integer := 31
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		dataa : in std_logic_vector(12-1 downto 0) := (others=>'0');
		datab : in std_logic_vector(24-1 downto 0) := (others=>'0');
		ena : in std_logic := '0';
		result : out std_logic_vector(32-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_multiplier_GN2RACAKCQ;

begin

alt_dspbuilder_multiplier_GNSFKO7633_0: if ((AWIDTH = 17) and (SIGNED = 0) and (BWIDTH = 16) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 8) and (OUTPUTMSB = 31)) generate
	inst_alt_dspbuilder_multiplier_GNSFKO7633_0: alt_dspbuilder_multiplier_GNSFKO7633
		generic map(AWIDTH => 17, SIGNED => 0, BWIDTH => 16, DEDICATED_MULTIPLIER_CIRCUITRY => "YES", PIPELINE => 1, OUTPUTLSB => 8, OUTPUTMSB => 31)
		port map(aclr => aclr, clock => clock, dataa => dataa, datab => datab, ena => ena, result => result, user_aclr => user_aclr);
end generate;

alt_dspbuilder_multiplier_GN64HZKYCA_1: if ((AWIDTH = 8) and (SIGNED = 0) and (BWIDTH = 8) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 0) and (OUTPUTMSB = 15)) generate
	inst_alt_dspbuilder_multiplier_GN64HZKYCA_1: alt_dspbuilder_multiplier_GN64HZKYCA
		generic map(AWIDTH => 8, SIGNED => 0, BWIDTH => 8, DEDICATED_MULTIPLIER_CIRCUITRY => "YES", PIPELINE => 1, OUTPUTLSB => 0, OUTPUTMSB => 15)
		port map(aclr => aclr, clock => clock, dataa => dataa, datab => datab, ena => ena, result => result, user_aclr => user_aclr);
end generate;

alt_dspbuilder_multiplier_GN2GJCFTFE_2: if ((AWIDTH = 35) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 24) and (OUTPUTMSB = 58)) generate
	inst_alt_dspbuilder_multiplier_GN2GJCFTFE_2: alt_dspbuilder_multiplier_GN2GJCFTFE
		generic map(AWIDTH => 35, SIGNED => 0, BWIDTH => 24, DEDICATED_MULTIPLIER_CIRCUITRY => "YES", PIPELINE => 1, OUTPUTLSB => 24, OUTPUTMSB => 58)
		port map(aclr => aclr, clock => clock, dataa => dataa, datab => datab, ena => ena, result => result, user_aclr => user_aclr);
end generate;

alt_dspbuilder_multiplier_GNKTEWW72G_3: if ((AWIDTH = 16) and (SIGNED = 0) and (BWIDTH = 8) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 8) and (OUTPUTMSB = 23)) generate
	inst_alt_dspbuilder_multiplier_GNKTEWW72G_3: alt_dspbuilder_multiplier_GNKTEWW72G
		generic map(AWIDTH => 16, SIGNED => 0, BWIDTH => 8, DEDICATED_MULTIPLIER_CIRCUITRY => "YES", PIPELINE => 1, OUTPUTLSB => 8, OUTPUTMSB => 23)
		port map(aclr => aclr, clock => clock, dataa => dataa, datab => datab, ena => ena, result => result, user_aclr => user_aclr);
end generate;

alt_dspbuilder_multiplier_GNUSAT2VBO_4: if ((AWIDTH = 16) and (SIGNED = 0) and (BWIDTH = 8) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 0) and (OUTPUTMSB = 23)) generate
	inst_alt_dspbuilder_multiplier_GNUSAT2VBO_4: alt_dspbuilder_multiplier_GNUSAT2VBO
		generic map(AWIDTH => 16, SIGNED => 0, BWIDTH => 8, DEDICATED_MULTIPLIER_CIRCUITRY => "YES", PIPELINE => 1, OUTPUTLSB => 0, OUTPUTMSB => 23)
		port map(aclr => aclr, clock => clock, dataa => dataa, datab => datab, ena => ena, result => result, user_aclr => user_aclr);
end generate;

alt_dspbuilder_multiplier_GNXX7E2RLJ_5: if ((AWIDTH = 32) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 0) and (OUTPUTMSB = 31)) generate
	inst_alt_dspbuilder_multiplier_GNXX7E2RLJ_5: alt_dspbuilder_multiplier_GNXX7E2RLJ
		generic map(AWIDTH => 32, SIGNED => 0, BWIDTH => 24, DEDICATED_MULTIPLIER_CIRCUITRY => "YES", PIPELINE => 1, OUTPUTLSB => 0, OUTPUTMSB => 31)
		port map(aclr => aclr, clock => clock, dataa => dataa, datab => datab, ena => ena, result => result, user_aclr => user_aclr);
end generate;

alt_dspbuilder_multiplier_GNWZAKUPA4_6: if ((AWIDTH = 32) and (SIGNED = 0) and (BWIDTH = 32) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 24) and (OUTPUTMSB = 63)) generate
	inst_alt_dspbuilder_multiplier_GNWZAKUPA4_6: alt_dspbuilder_multiplier_GNWZAKUPA4
		generic map(AWIDTH => 32, SIGNED => 0, BWIDTH => 32, DEDICATED_MULTIPLIER_CIRCUITRY => "YES", PIPELINE => 1, OUTPUTLSB => 24, OUTPUTMSB => 63)
		port map(aclr => aclr, clock => clock, dataa => dataa, datab => datab, ena => ena, result => result, user_aclr => user_aclr);
end generate;

alt_dspbuilder_multiplier_GNT7YVH2RY_7: if ((AWIDTH = 20) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 24) and (OUTPUTMSB = 39)) generate
	inst_alt_dspbuilder_multiplier_GNT7YVH2RY_7: alt_dspbuilder_multiplier_GNT7YVH2RY
		generic map(AWIDTH => 20, SIGNED => 0, BWIDTH => 24, DEDICATED_MULTIPLIER_CIRCUITRY => "YES", PIPELINE => 1, OUTPUTLSB => 24, OUTPUTMSB => 39)
		port map(aclr => aclr, clock => clock, dataa => dataa, datab => datab, ena => ena, result => result, user_aclr => user_aclr);
end generate;

alt_dspbuilder_multiplier_GN4OQUTWTO_8: if ((AWIDTH = 12) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 24) and (OUTPUTMSB = 31)) generate
	inst_alt_dspbuilder_multiplier_GN4OQUTWTO_8: alt_dspbuilder_multiplier_GN4OQUTWTO
		generic map(AWIDTH => 12, SIGNED => 0, BWIDTH => 24, DEDICATED_MULTIPLIER_CIRCUITRY => "YES", PIPELINE => 1, OUTPUTLSB => 24, OUTPUTMSB => 31)
		port map(aclr => aclr, clock => clock, dataa => dataa, datab => datab, ena => ena, result => result, user_aclr => user_aclr);
end generate;

alt_dspbuilder_multiplier_GN4LMOW2WU_9: if ((AWIDTH = 15) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 0) and (OUTPUTMSB = 34)) generate
	inst_alt_dspbuilder_multiplier_GN4LMOW2WU_9: alt_dspbuilder_multiplier_GN4LMOW2WU
		generic map(AWIDTH => 15, SIGNED => 0, BWIDTH => 24, DEDICATED_MULTIPLIER_CIRCUITRY => "YES", PIPELINE => 1, OUTPUTLSB => 0, OUTPUTMSB => 34)
		port map(aclr => aclr, clock => clock, dataa => dataa, datab => datab, ena => ena, result => result, user_aclr => user_aclr);
end generate;

alt_dspbuilder_multiplier_GNYACTWEAF_10: if ((AWIDTH = 20) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 0) and (OUTPUTMSB = 39)) generate
	inst_alt_dspbuilder_multiplier_GNYACTWEAF_10: alt_dspbuilder_multiplier_GNYACTWEAF
		generic map(AWIDTH => 20, SIGNED => 0, BWIDTH => 24, DEDICATED_MULTIPLIER_CIRCUITRY => "YES", PIPELINE => 1, OUTPUTLSB => 0, OUTPUTMSB => 39)
		port map(aclr => aclr, clock => clock, dataa => dataa, datab => datab, ena => ena, result => result, user_aclr => user_aclr);
end generate;

alt_dspbuilder_multiplier_GN2RACAKCQ_11: if ((AWIDTH = 12) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 0) and (OUTPUTMSB = 31)) generate
	inst_alt_dspbuilder_multiplier_GN2RACAKCQ_11: alt_dspbuilder_multiplier_GN2RACAKCQ
		generic map(AWIDTH => 12, SIGNED => 0, BWIDTH => 24, DEDICATED_MULTIPLIER_CIRCUITRY => "YES", PIPELINE => 1, OUTPUTLSB => 0, OUTPUTMSB => 31)
		port map(aclr => aclr, clock => clock, dataa => dataa, datab => datab, ena => ena, result => result, user_aclr => user_aclr);
end generate;

assert not (((AWIDTH = 17) and (SIGNED = 0) and (BWIDTH = 16) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 8) and (OUTPUTMSB = 31)) or ((AWIDTH = 8) and (SIGNED = 0) and (BWIDTH = 8) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 0) and (OUTPUTMSB = 15)) or ((AWIDTH = 35) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 24) and (OUTPUTMSB = 58)) or ((AWIDTH = 16) and (SIGNED = 0) and (BWIDTH = 8) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 8) and (OUTPUTMSB = 23)) or ((AWIDTH = 16) and (SIGNED = 0) and (BWIDTH = 8) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 0) and (OUTPUTMSB = 23)) or ((AWIDTH = 32) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 0) and (OUTPUTMSB = 31)) or ((AWIDTH = 32) and (SIGNED = 0) and (BWIDTH = 32) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 24) and (OUTPUTMSB = 63)) or ((AWIDTH = 20) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 24) and (OUTPUTMSB = 39)) or ((AWIDTH = 12) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 24) and (OUTPUTMSB = 31)) or ((AWIDTH = 15) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 0) and (OUTPUTMSB = 34)) or ((AWIDTH = 20) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 0) and (OUTPUTMSB = 39)) or ((AWIDTH = 12) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 0) and (OUTPUTMSB = 31)))
	report "Please run generate again" severity error;

end architecture rtl;

