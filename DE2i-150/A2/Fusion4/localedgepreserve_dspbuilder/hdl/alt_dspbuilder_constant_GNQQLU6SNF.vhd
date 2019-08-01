library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_constant_GNQQLU6SNF is
	generic		( 			BitPattern : string := "10000000000000000";
			HDLTYPE : string := "STD_LOGIC_VECTOR";
			width : natural := 17);

	port(
		output : out std_logic_vector(16 downto 0));		
end entity;

architecture rtl of alt_dspbuilder_constant_GNQQLU6SNF is 
Begin
-- Constant
output		<=	"10000000000000000";				
end architecture;