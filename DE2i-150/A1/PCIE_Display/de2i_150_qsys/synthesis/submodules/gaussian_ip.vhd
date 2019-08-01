-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity gaussian_ip is
	port (
		Clock : in std_logic;
		reset : in std_logic;
		sink_data1 : in std_logic_vector(8-1 downto 0);
		sink_data2 : in std_logic_vector(8-1 downto 0);
		sink_eop1 : in std_logic;
		sink_eop2 : in std_logic;
		sink_ready1 : out std_logic;
		sink_ready2 : out std_logic;
		sink_sop1 : in std_logic;
		sink_sop2 : in std_logic;
		sink_valid1 : in std_logic;
		sink_valid2 : in std_logic;
		source_data : out std_logic_vector(24-1 downto 0);
		source_eop : out std_logic;
		source_ready : in std_logic;
		source_sop : out std_logic;
		source_valid : out std_logic;
		switch : in std_logic_vector(2-1 downto 0)
	);
end entity gaussian_ip;

architecture rtl of gaussian_ip is

component gaussian_ip_GN is
	port (
		Clock : in std_logic;
		reset : in std_logic;
		sink_data1 : in std_logic_vector(8-1 downto 0);
		sink_data2 : in std_logic_vector(8-1 downto 0);
		sink_eop1 : in std_logic;
		sink_eop2 : in std_logic;
		sink_ready1 : out std_logic;
		sink_ready2 : out std_logic;
		sink_sop1 : in std_logic;
		sink_sop2 : in std_logic;
		sink_valid1 : in std_logic;
		sink_valid2 : in std_logic;
		source_data : out std_logic_vector(24-1 downto 0);
		source_eop : out std_logic;
		source_ready : in std_logic;
		source_sop : out std_logic;
		source_valid : out std_logic;
		switch : in std_logic_vector(2-1 downto 0)
	);
end component gaussian_ip_GN;

begin

gaussian_ip_GN_0: if true generate
	inst_gaussian_ip_GN_0: gaussian_ip_GN
		port map(Clock => Clock, reset => reset, sink_data1 => sink_data1, sink_data2 => sink_data2, sink_eop1 => sink_eop1, sink_eop2 => sink_eop2, sink_ready1 => sink_ready1, sink_ready2 => sink_ready2, sink_sop1 => sink_sop1, sink_sop2 => sink_sop2, sink_valid1 => sink_valid1, sink_valid2 => sink_valid2, source_data => source_data, source_eop => source_eop, source_ready => source_ready, source_sop => source_sop, source_valid => source_valid, switch => switch);
end generate;

end architecture rtl;

