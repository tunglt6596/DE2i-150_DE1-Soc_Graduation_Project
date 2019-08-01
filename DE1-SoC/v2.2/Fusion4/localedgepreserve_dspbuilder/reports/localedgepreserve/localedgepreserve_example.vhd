library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity localedgepreserve_example is  
	port(
		sink1_valid : in STD_LOGIC;
		source_ready : in STD_LOGIC;
		source_data : out STD_LOGIC_VECTOR(7 downto 0);
		sink1_ready : out STD_LOGIC;
		source_eop : out STD_LOGIC;
		sink2_ready : out STD_LOGIC;
		source_valid : out STD_LOGIC;
		sink2_eop : in STD_LOGIC;
		Clock : in STD_LOGIC;
		sink2_data : in STD_LOGIC_VECTOR(7 downto 0);
		sink1_sop : in STD_LOGIC;
		source_sop : out STD_LOGIC;
		sink1_eop : in STD_LOGIC;
		sink1_data : in STD_LOGIC_VECTOR(7 downto 0);
		reset : in STD_LOGIC;
		sink2_valid : in STD_LOGIC;
		sink2_sop : in STD_LOGIC); 
end entity;
architecture rtl of localedgepreserve_example is
component localedgepreserve
	  
	port(
		sink1_valid : in STD_LOGIC;
		source_ready : in STD_LOGIC;
		source_data : out STD_LOGIC_VECTOR(7 downto 0);
		sink1_ready : out STD_LOGIC;
		source_eop : out STD_LOGIC;
		sink2_ready : out STD_LOGIC;
		source_valid : out STD_LOGIC;
		sink2_eop : in STD_LOGIC;
		Clock : in STD_LOGIC;
		sink2_data : in STD_LOGIC_VECTOR(7 downto 0);
		sink1_sop : in STD_LOGIC;
		source_sop : out STD_LOGIC;
		sink1_eop : in STD_LOGIC;
		sink1_data : in STD_LOGIC_VECTOR(7 downto 0);
		reset : in STD_LOGIC;
		sink2_valid : in STD_LOGIC;
		sink2_sop : in STD_LOGIC); 
end component;
begin
	localedgepreserve_instance : 
		component localedgepreserve
			port map(
				sink1_valid => sink1_valid,
				source_ready => source_ready,
				source_data => source_data,
				sink1_ready => sink1_ready,
				source_eop => source_eop,
				sink2_ready => sink2_ready,
				source_valid => source_valid,
				sink2_eop => sink2_eop,
				Clock => Clock,
				sink2_data => sink2_data,
				sink1_sop => sink1_sop,
				source_sop => source_sop,
				sink1_eop => sink1_eop,
				sink1_data => sink1_data,
				reset => reset,
				sink2_valid => sink2_valid,
				sink2_sop => sink2_sop);
end architecture rtl;
