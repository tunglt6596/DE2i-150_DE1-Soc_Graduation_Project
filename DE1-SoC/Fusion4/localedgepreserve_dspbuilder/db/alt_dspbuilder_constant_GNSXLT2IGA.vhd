library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_constant_GNSXLT2IGA is
	generic		( 			BitPattern : string := "100000000";
			HDLTYPE : string := "STD_LOGIC_VECTOR";
			width : natural := 9);

	port(
		output : out std_logic_vector(8 downto 0));		
end entity;

architecture rtl of alt_dspbuilder_constant_GNSXLT2IGA is 
Begin
-- Constant
output		<=	"100000000";				
end architecture;