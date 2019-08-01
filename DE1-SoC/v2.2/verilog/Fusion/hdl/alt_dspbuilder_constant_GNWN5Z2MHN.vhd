library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_constant_GNWN5Z2MHN is
	generic		( 			BitPattern : string := "100101";
			HDLTYPE : string := "STD_LOGIC_VECTOR";
			width : natural := 6);

	port(
		output : out std_logic_vector(5 downto 0));		
end entity;

architecture rtl of alt_dspbuilder_constant_GNWN5Z2MHN is 
Begin
-- Constant
output		<=	"100101";				
end architecture;