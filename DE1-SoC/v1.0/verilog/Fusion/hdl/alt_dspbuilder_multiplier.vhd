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

component alt_dspbuilder_multiplier_GNNIEJHQ5V is
	generic (
		AWIDTH : natural := 8;
		SIGNED : natural := 0;
		BWIDTH : natural := 26;
		DEDICATED_MULTIPLIER_CIRCUITRY : string := "NO";
		PIPELINE : integer := 8;
		OUTPUTLSB : integer := 0;
		OUTPUTMSB : integer := 25
	);
	port (
		aclr : in std_logic;
		clock : in std_logic;
		dataa : in std_logic_vector(8-1 downto 0);
		datab : in std_logic_vector(26-1 downto 0);
		ena : in std_logic;
		result : out std_logic_vector(26-1 downto 0);
		user_aclr : in std_logic
	);
end component alt_dspbuilder_multiplier_GNNIEJHQ5V;

begin

alt_dspbuilder_multiplier_GNNIEJHQ5V_0: if ((AWIDTH = 8) and (SIGNED = 0) and (BWIDTH = 26) and (DEDICATED_MULTIPLIER_CIRCUITRY = "NO") and (PIPELINE = 8) and (OUTPUTLSB = 0) and (OUTPUTMSB = 25)) generate
	inst_alt_dspbuilder_multiplier_GNNIEJHQ5V_0: alt_dspbuilder_multiplier_GNNIEJHQ5V
		generic map(AWIDTH => 8, SIGNED => 0, BWIDTH => 26, DEDICATED_MULTIPLIER_CIRCUITRY => "NO", PIPELINE => 8, OUTPUTLSB => 0, OUTPUTMSB => 25)
		port map(aclr => aclr, clock => clock, dataa => dataa, datab => datab, ena => ena, result => result, user_aclr => user_aclr);
end generate;

assert not (((AWIDTH = 8) and (SIGNED = 0) and (BWIDTH = 26) and (DEDICATED_MULTIPLIER_CIRCUITRY = "NO") and (PIPELINE = 8) and (OUTPUTLSB = 0) and (OUTPUTMSB = 25)))
	report "Please run generate again" severity error;

end architecture rtl;

