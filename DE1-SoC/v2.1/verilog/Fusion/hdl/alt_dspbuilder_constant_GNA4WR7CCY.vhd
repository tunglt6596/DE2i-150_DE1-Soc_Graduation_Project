library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_constant_GNA4WR7CCY is
	generic		( 			BitPattern : string := "00001100011";
			HDLTYPE : string := "STD_LOGIC_VECTOR";
			width : natural := 11);

	port(
		output : out std_logic_vector(10 downto 0));		
end entity;

architecture rtl of alt_dspbuilder_constant_GNA4WR7CCY is 
Begin
-- Constant
output		<=	"00001100011";				
end architecture;