-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity div_import is
	port (
		clk : in std_logic;
		d : in std_logic_vector(24-1 downto 0);
		ena : in std_logic;
		q : out std_logic_vector(24-1 downto 0);
		z : in std_logic_vector(48-1 downto 0)
	);
end entity div_import;

architecture rtl of div_import is

component div_import_GN is
	port (
		clk : in std_logic;
		d : in std_logic_vector(24-1 downto 0);
		ena : in std_logic;
		q : out std_logic_vector(24-1 downto 0);
		z : in std_logic_vector(48-1 downto 0)
	);
end component div_import_GN;

begin

div_import_GN_0: if true generate
	inst_div_import_GN_0: div_import_GN
		port map(clk => clk, d => d, ena => ena, q => q, z => z);
end generate;

end architecture rtl;

