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

component alt_dspbuilder_multiplier_GNUH534PHC is
	generic (
		AWIDTH : natural := 16;
		SIGNED : natural := 0;
		BWIDTH : natural := 16;
		DEDICATED_MULTIPLIER_CIRCUITRY : string := "NO";
		PIPELINE : integer := 16;
		OUTPUTLSB : integer := 0;
		OUTPUTMSB : integer := 23
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		dataa : in std_logic_vector(16-1 downto 0) := (others=>'0');
		datab : in std_logic_vector(16-1 downto 0) := (others=>'0');
		ena : in std_logic := '0';
		result : out std_logic_vector(24-1 downto 0);
		user_aclr : in std_logic := '0'
	);
end component alt_dspbuilder_multiplier_GNUH534PHC;

begin

alt_dspbuilder_multiplier_GNUH534PHC_0: if ((AWIDTH = 16) and (SIGNED = 0) and (BWIDTH = 16) and (DEDICATED_MULTIPLIER_CIRCUITRY = "NO") and (PIPELINE = 16) and (OUTPUTLSB = 0) and (OUTPUTMSB = 23)) generate
	inst_alt_dspbuilder_multiplier_GNUH534PHC_0: alt_dspbuilder_multiplier_GNUH534PHC
		generic map(AWIDTH => 16, SIGNED => 0, BWIDTH => 16, DEDICATED_MULTIPLIER_CIRCUITRY => "NO", PIPELINE => 16, OUTPUTLSB => 0, OUTPUTMSB => 23)
		port map(aclr => aclr, clock => clock, dataa => dataa, datab => datab, ena => ena, result => result, user_aclr => user_aclr);
end generate;

assert not (((AWIDTH = 16) and (SIGNED = 0) and (BWIDTH = 16) and (DEDICATED_MULTIPLIER_CIRCUITRY = "NO") and (PIPELINE = 16) and (OUTPUTLSB = 0) and (OUTPUTMSB = 23)))
	report "Please run generate again" severity error;

end architecture rtl;

