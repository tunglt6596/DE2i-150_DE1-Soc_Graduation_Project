-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity alt_dspbuilder_bus_concat is
	generic (
		WIDTHA : natural := 8;
		WIDTHB : natural := 8
	);
	port (
		output : out std_logic_vector(widthA+widthB-1 downto 0);
		a : in std_logic_vector(widthA-1 downto 0);
		b : in std_logic_vector(widthB-1 downto 0);
		aclr : in std_logic;
		clock : in std_logic
	);
end entity alt_dspbuilder_bus_concat;

architecture rtl of alt_dspbuilder_bus_concat is

component alt_dspbuilder_bus_concat_GNU3KBQ5HN is
	generic (
		WIDTHA : natural := 24;
		WIDTHB : natural := 16
	);
	port (
		a : in std_logic_vector(24-1 downto 0);
		aclr : in std_logic;
		b : in std_logic_vector(16-1 downto 0);
		clock : in std_logic;
		output : out std_logic_vector(40-1 downto 0)
	);
end component alt_dspbuilder_bus_concat_GNU3KBQ5HN;

begin

alt_dspbuilder_bus_concat_GNU3KBQ5HN_0: if ((WIDTHA = 24) and (WIDTHB = 16)) generate
	inst_alt_dspbuilder_bus_concat_GNU3KBQ5HN_0: alt_dspbuilder_bus_concat_GNU3KBQ5HN
		generic map(WIDTHA => 24, WIDTHB => 16)
		port map(a => a, aclr => aclr, b => b, clock => clock, output => output);
end generate;

assert not (((WIDTHA = 24) and (WIDTHB = 16)))
	report "Please run generate again" severity error;

end architecture rtl;

