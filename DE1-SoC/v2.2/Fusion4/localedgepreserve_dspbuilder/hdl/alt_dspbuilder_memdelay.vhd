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
		input : in std_logic_vector(WIDTH-1 downto 0);
		aclr : in std_logic;
		user_aclr : in std_logic;
		ena : in std_logic;
		clock : in std_logic
	);
end entity alt_dspbuilder_memdelay;

architecture rtl of alt_dspbuilder_memdelay is

component alt_dspbuilder_memdelay_GNZWVQQT43 is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 24;
		DELAY : positive := 1
	);
	port (
		aclr : in std_logic;
		clock : in std_logic;
		ena : in std_logic;
		input : in std_logic_vector(24-1 downto 0);
		output : out std_logic_vector(24-1 downto 0);
		user_aclr : in std_logic
	);
end component alt_dspbuilder_memdelay_GNZWVQQT43;

begin

alt_dspbuilder_memdelay_GNZWVQQT43_0: if ((RAMTYPE = "AUTO") and (WIDTH = 24) and (DELAY = 1)) generate
	inst_alt_dspbuilder_memdelay_GNZWVQQT43_0: alt_dspbuilder_memdelay_GNZWVQQT43
		generic map(RAMTYPE => "AUTO", WIDTH => 24, DELAY => 1)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

assert not (((RAMTYPE = "AUTO") and (WIDTH = 24) and (DELAY = 1)))
	report "Please run generate again" severity error;

end architecture rtl;

