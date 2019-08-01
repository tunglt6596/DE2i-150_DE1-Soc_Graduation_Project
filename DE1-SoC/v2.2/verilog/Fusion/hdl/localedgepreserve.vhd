-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity localedgepreserve is
	port (
		Clock : in std_logic;
		reset : in std_logic;
		sink1_data : in std_logic_vector(8-1 downto 0);
		sink1_eop : in std_logic;
		sink1_ready : out std_logic;
		sink1_sop : in std_logic;
		sink1_valid : in std_logic;
		sink2_data : in std_logic_vector(8-1 downto 0);
		sink2_eop : in std_logic;
		sink2_ready : out std_logic;
		sink2_sop : in std_logic;
		sink2_valid : in std_logic;
		source_data : out std_logic_vector(8-1 downto 0);
		source_eop : out std_logic;
		source_ready : in std_logic;
		source_sop : out std_logic;
		source_valid : out std_logic
	);
end entity localedgepreserve;

architecture rtl of localedgepreserve is

component localedgepreserve_GN is
	port (
		Clock : in std_logic;
		reset : in std_logic;
		sink1_data : in std_logic_vector(8-1 downto 0);
		sink1_eop : in std_logic;
		sink1_ready : out std_logic;
		sink1_sop : in std_logic;
		sink1_valid : in std_logic;
		sink2_data : in std_logic_vector(8-1 downto 0);
		sink2_eop : in std_logic;
		sink2_ready : out std_logic;
		sink2_sop : in std_logic;
		sink2_valid : in std_logic;
		source_data : out std_logic_vector(8-1 downto 0);
		source_eop : out std_logic;
		source_ready : in std_logic;
		source_sop : out std_logic;
		source_valid : out std_logic
	);
end component localedgepreserve_GN;

begin

localedgepreserve_GN_0: if true generate
	inst_localedgepreserve_GN_0: localedgepreserve_GN
		port map(Clock => Clock, reset => reset, sink1_data => sink1_data, sink1_eop => sink1_eop, sink1_ready => sink1_ready, sink1_sop => sink1_sop, sink1_valid => sink1_valid, sink2_data => sink2_data, sink2_eop => sink2_eop, sink2_ready => sink2_ready, sink2_sop => sink2_sop, sink2_valid => sink2_valid, source_data => source_data, source_eop => source_eop, source_ready => source_ready, source_sop => source_sop, source_valid => source_valid);
end generate;

end architecture rtl;

