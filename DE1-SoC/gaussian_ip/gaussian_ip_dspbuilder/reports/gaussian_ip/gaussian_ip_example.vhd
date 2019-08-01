library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity gaussian_ip_example is  
	port(
		source_ready : in STD_LOGIC;
		source_data : out STD_LOGIC_VECTOR(7 downto 0);
		sink_sop1 : in STD_LOGIC;
		sink_sop2 : in STD_LOGIC;
		source_eop : out STD_LOGIC;
		sink_data2 : in STD_LOGIC_VECTOR(7 downto 0);
		source_valid : out STD_LOGIC;
		Clock : in STD_LOGIC;
		sink_ready1 : out STD_LOGIC;
		sink_data1 : in STD_LOGIC_VECTOR(7 downto 0);
		sink_ready2 : out STD_LOGIC;
		sink_eop1 : in STD_LOGIC;
		sink_valid2 : in STD_LOGIC;
		source_sop : out STD_LOGIC;
		sink_valid1 : in STD_LOGIC;
		reset : in STD_LOGIC;
		sink_eop2 : in STD_LOGIC); 
end entity;
architecture rtl of gaussian_ip_example is
component gaussian_ip
	  
	port(
		source_ready : in STD_LOGIC;
		source_data : out STD_LOGIC_VECTOR(7 downto 0);
		sink_sop1 : in STD_LOGIC;
		sink_sop2 : in STD_LOGIC;
		source_eop : out STD_LOGIC;
		sink_data2 : in STD_LOGIC_VECTOR(7 downto 0);
		source_valid : out STD_LOGIC;
		Clock : in STD_LOGIC;
		sink_ready1 : out STD_LOGIC;
		sink_data1 : in STD_LOGIC_VECTOR(7 downto 0);
		sink_ready2 : out STD_LOGIC;
		sink_eop1 : in STD_LOGIC;
		sink_valid2 : in STD_LOGIC;
		source_sop : out STD_LOGIC;
		sink_valid1 : in STD_LOGIC;
		reset : in STD_LOGIC;
		sink_eop2 : in STD_LOGIC); 
end component;
begin
	gaussian_ip_instance : 
		component gaussian_ip
			port map(
				source_ready => source_ready,
				source_data => source_data,
				sink_sop1 => sink_sop1,
				sink_sop2 => sink_sop2,
				source_eop => source_eop,
				sink_data2 => sink_data2,
				source_valid => source_valid,
				Clock => Clock,
				sink_ready1 => sink_ready1,
				sink_data1 => sink_data1,
				sink_ready2 => sink_ready2,
				sink_eop1 => sink_eop1,
				sink_valid2 => sink_valid2,
				source_sop => source_sop,
				sink_valid1 => sink_valid1,
				reset => reset,
				sink_eop2 => sink_eop2);
end architecture rtl;
