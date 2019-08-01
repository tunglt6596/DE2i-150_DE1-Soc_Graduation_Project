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

component alt_dspbuilder_memdelay_GNXMJOJMJV is
	generic (
		RAMTYPE : string := "AUTO";
		WIDTH : positive := 8;
		DELAY : positive := 2
	);
	port (
		aclr : in std_logic;
		clock : in std_logic;
		ena : in std_logic;
		input : in std_logic_vector(8-1 downto 0);
		output : out std_logic_vector(8-1 downto 0);
		user_aclr : in std_logic
	);
end component alt_dspbuilder_memdelay_GNXMJOJMJV;

begin

alt_dspbuilder_memdelay_GNXMJOJMJV_0: if ((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 2)) generate
	inst_alt_dspbuilder_memdelay_GNXMJOJMJV_0: alt_dspbuilder_memdelay_GNXMJOJMJV
		generic map(RAMTYPE => "AUTO", WIDTH => 8, DELAY => 2)
		port map(aclr => aclr, clock => clock, ena => ena, input => input, output => output, user_aclr => user_aclr);
end generate;

assert not (((RAMTYPE = "AUTO") and (WIDTH = 8) and (DELAY = 2)))
	report "Please run generate again" severity error;

end architecture rtl;

