-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity dual_port_ram_sync_import is
	port (
		clock : in std_logic;
		data : in std_logic_vector(16-1 downto 0);
		q : out std_logic_vector(16-1 downto 0);
		read_address : in std_logic_vector(8-1 downto 0);
		we : in std_logic;
		write_address : in std_logic_vector(8-1 downto 0)
	);
end entity dual_port_ram_sync_import;

architecture rtl of dual_port_ram_sync_import is

component dual_port_ram_sync_import_GN is
	port (
		clock : in std_logic;
		data : in std_logic_vector(16-1 downto 0);
		q : out std_logic_vector(16-1 downto 0);
		read_address : in std_logic_vector(8-1 downto 0);
		we : in std_logic;
		write_address : in std_logic_vector(8-1 downto 0)
	);
end component dual_port_ram_sync_import_GN;

begin

dual_port_ram_sync_import_GN_0: if true generate
	inst_dual_port_ram_sync_import_GN_0: dual_port_ram_sync_import_GN
		port map(clock => clock, data => data, q => q, read_address => read_address, we => we, write_address => write_address);
end generate;

end architecture rtl;

