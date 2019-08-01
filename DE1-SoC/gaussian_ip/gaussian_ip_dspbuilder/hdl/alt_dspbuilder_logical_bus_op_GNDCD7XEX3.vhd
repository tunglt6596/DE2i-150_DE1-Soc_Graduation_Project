library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_logical_bus_op_GNDCD7XEX3 is
	generic		( 			logical_op : string := "AltShiftLeft";
			lpm_width : positive := 10;
			shift_amount : natural := 2;
			mask_value : string := "1111111011";
			signextendrshift : natural := 0);

	port(
		dataa : in std_logic_vector((lpm_width)-1 downto 0);
		result : out std_logic_vector((lpm_width)-1 downto 0));		
end entity;

architecture rtl of alt_dspbuilder_logical_bus_op_GNDCD7XEX3 is 

Begin

-- Logical Bus Operation - Simulink Block "LogicalBusOperator"
LogicalBusOperatori : alt_dspbuilder_SBusLogical	generic map (
				lpm_width      => 10,
				lop            => AltShiftLeft,
				mask		   => 2,
				valmask		   => "1111111011",
				sgnext_rshift  => 0)
			port map (
				dataa  => dataa,
				result => result);
			
end architecture;