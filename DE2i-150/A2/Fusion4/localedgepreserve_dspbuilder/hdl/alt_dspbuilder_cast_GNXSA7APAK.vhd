library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_cast_GNXSA7APAK is
	generic		( 			round : natural := 0;
			saturate : natural := 0);

	port(
		input : in std_logic_vector(34 downto 0);
		output : out std_logic_vector(39 downto 0));		
end entity;



architecture rtl of alt_dspbuilder_cast_GNXSA7APAK is 
Begin

-- Output - I/O assignment from Simulink Block  "Output"
Outputi : alt_dspbuilder_SBF generic map(
				width_inl=> 11  + 1 ,
				width_inr=> 24,
				width_outl=> 16,
				width_outr=> 24,
				lpm_signed=>  BusIsUnsigned ,
				round=> round,
				satur=> saturate)
		port map (
								xin(34 downto 0)  => input,
								 xin(35) => '0', 								yout => output				
				);
				
end architecture;