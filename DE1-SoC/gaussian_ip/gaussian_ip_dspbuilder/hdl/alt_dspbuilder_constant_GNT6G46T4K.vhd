library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_constant_GNT6G46T4K is
	generic		( 			BitPattern : string := "11110";
			HDLTYPE : string := "STD_LOGIC_VECTOR";
			width : natural := 5);

	port(
		output : out std_logic_vector(4 downto 0));		
end entity;

architecture rtl of alt_dspbuilder_constant_GNT6G46T4K is 
Begin
-- Constant
output		<=	"11110";				
end architecture;