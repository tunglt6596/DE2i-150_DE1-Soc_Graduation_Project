library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_cast_GN6RUFTBHU is
	generic		( 			round : natural := 0;
			saturate : natural := 0);

	port(
		input : in std_logic_vector(20 downto 0);
		output : out std_logic_vector(11 downto 0));		
end entity;



architecture rtl of alt_dspbuilder_cast_GN6RUFTBHU is 
Begin

-- Output - I/O assignment from Simulink Block  "Output"
Outputi : alt_dspbuilder_SBF generic map(
				width_inl=> 5 ,
				width_inr=> 16,
				width_outl=> 4,
				width_outr=> 8,
				lpm_signed=>  BusIsUnsigned ,
				round=> round,
				satur=> saturate)
		port map (
								xin(20 downto 0)  => input,
																yout => output				
				);
				
end architecture;