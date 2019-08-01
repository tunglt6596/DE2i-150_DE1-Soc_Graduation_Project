-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity alt_dspbuilder_extract_bit is
	generic (
		EXTRACTEDBIT : natural := 0;
		WIDTH : natural := 4
	);
	port (
		output : out std_logic;
		input : in std_logic_vector(width-1 downto 0);
		aclr : in std_logic;
		clock : in std_logic
	);
end entity alt_dspbuilder_extract_bit;

architecture rtl of alt_dspbuilder_extract_bit is

component alt_dspbuilder_extract_bit_GNN5FDHW3U is
	generic (
		EXTRACTEDBIT : natural := 8;
		WIDTH : natural := 9
	);
	port (
		aclr : in std_logic;
		clock : in std_logic;
		input : in std_logic_vector(9-1 downto 0);
		output : out std_logic
	);
end component alt_dspbuilder_extract_bit_GNN5FDHW3U;

begin

alt_dspbuilder_extract_bit_GNN5FDHW3U_0: if ((EXTRACTEDBIT = 8) and (WIDTH = 9)) generate
	inst_alt_dspbuilder_extract_bit_GNN5FDHW3U_0: alt_dspbuilder_extract_bit_GNN5FDHW3U
		generic map(EXTRACTEDBIT => 8, WIDTH => 9)
		port map(aclr => aclr, clock => clock, input => input, output => output);
end generate;

assert not (((EXTRACTEDBIT = 8) and (WIDTH = 9)))
	report "Please run generate again" severity error;

end architecture rtl;

