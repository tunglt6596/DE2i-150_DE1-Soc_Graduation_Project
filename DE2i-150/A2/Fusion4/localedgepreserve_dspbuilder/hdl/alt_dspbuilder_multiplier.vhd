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
		aclr : in std_logic;
		datab : in std_logic_vector(bWidth-1 downto 0);
		dataa : in std_logic_vector(aWidth-1 downto 0);
		user_aclr : in std_logic;
		ena : in std_logic;
		clock : in std_logic
	);
end entity alt_dspbuilder_multiplier;

architecture rtl of alt_dspbuilder_multiplier is

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
		aclr : in std_logic;
		clock : in std_logic;
		dataa : in std_logic_vector(20-1 downto 0);
		datab : in std_logic_vector(24-1 downto 0);
		ena : in std_logic;
		result : out std_logic_vector(40-1 downto 0);
		user_aclr : in std_logic
	);
end component alt_dspbuilder_multiplier_GNYACTWEAF;

begin

alt_dspbuilder_multiplier_GNYACTWEAF_0: if ((AWIDTH = 20) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 0) and (OUTPUTMSB = 39)) generate
	inst_alt_dspbuilder_multiplier_GNYACTWEAF_0: alt_dspbuilder_multiplier_GNYACTWEAF
		generic map(AWIDTH => 20, SIGNED => 0, BWIDTH => 24, DEDICATED_MULTIPLIER_CIRCUITRY => "YES", PIPELINE => 1, OUTPUTLSB => 0, OUTPUTMSB => 39)
		port map(aclr => aclr, clock => clock, dataa => dataa, datab => datab, ena => ena, result => result, user_aclr => user_aclr);
end generate;

assert not (((AWIDTH = 20) and (SIGNED = 0) and (BWIDTH = 24) and (DEDICATED_MULTIPLIER_CIRCUITRY = "YES") and (PIPELINE = 1) and (OUTPUTLSB = 0) and (OUTPUTMSB = 39)))
	report "Please run generate again" severity error;

end architecture rtl;

