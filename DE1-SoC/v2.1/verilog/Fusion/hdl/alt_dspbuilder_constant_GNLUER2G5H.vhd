library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_constant_GNLUER2G5H is
	generic		( 			BitPattern : string := "1001010111111111111";
			HDLTYPE : string := "STD_LOGIC_VECTOR";
			width : natural := 19);

	port(
		output : out std_logic_vector(18 downto 0));		
end entity;

architecture rtl of alt_dspbuilder_constant_GNLUER2G5H is 
Begin
-- Constant
output		<=	"1001010111111111111";				
end architecture;