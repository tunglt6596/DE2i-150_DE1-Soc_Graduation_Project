library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_cast_GNHQ7L56RA is
	generic		( 			round : natural := 0;
			saturate : natural := 0);

	port(
		input : in std_logic_vector(15 downto 0);
		output : out std_logic_vector(16 downto 0));		
end entity;



architecture rtl of alt_dspbuilder_cast_GNHQ7L56RA is 
Begin

-- Output - I/O assignment from Simulink Block  "Output"
Outputi : alt_dspbuilder_SBF generic map(
				width_inl=> 8  + 1 ,
				width_inr=> 8,
				width_outl=> 9,
				width_outr=> 8,
				lpm_signed=>  BusIsSigned ,
				round=> round,
				satur=> saturate)
		port map (
								xin(15 downto 0)  => input,
								 xin(16) => '0', 								yout => output				
				);
				
end architecture;