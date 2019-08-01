-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity alt_dspbuilder_logical_bus_op is
	generic (
		LOGICAL_OP : string := "AltAND";
		LPM_WIDTH : positive := 8;
		SHIFT_AMOUNT : natural := 3;
		MASK_VALUE : string := "10101010";
		SIGNEXTENDRSHIFT : natural := 1
	);
	port (
		result : out std_logic_vector(lpm_width-1 downto 0);
		dataa : in std_logic_vector(lpm_width-1 downto 0)
	);
end entity alt_dspbuilder_logical_bus_op;

architecture rtl of alt_dspbuilder_logical_bus_op is

component alt_dspbuilder_logical_bus_op_GNGAQFHY4S is
	generic (
		LOGICAL_OP : string := "AltShiftLeft";
		LPM_WIDTH : positive := 12;
		SHIFT_AMOUNT : natural := 4;
		MASK_VALUE : string := "111111111011";
		SIGNEXTENDRSHIFT : natural := 0
	);
	port (
		dataa : in std_logic_vector(12-1 downto 0);
		result : out std_logic_vector(12-1 downto 0)
	);
end component alt_dspbuilder_logical_bus_op_GNGAQFHY4S;

begin

alt_dspbuilder_logical_bus_op_GNGAQFHY4S_0: if ((LOGICAL_OP = "AltShiftLeft") and (LPM_WIDTH = 12) and (SHIFT_AMOUNT = 4) and (MASK_VALUE = "111111111011") and (SIGNEXTENDRSHIFT = 0)) generate
	inst_alt_dspbuilder_logical_bus_op_GNGAQFHY4S_0: alt_dspbuilder_logical_bus_op_GNGAQFHY4S
		generic map(LOGICAL_OP => "AltShiftLeft", LPM_WIDTH => 12, SHIFT_AMOUNT => 4, MASK_VALUE => "111111111011", SIGNEXTENDRSHIFT => 0)
		port map(dataa => dataa, result => result);
end generate;

assert not (((LOGICAL_OP = "AltShiftLeft") and (LPM_WIDTH = 12) and (SHIFT_AMOUNT = 4) and (MASK_VALUE = "111111111011") and (SIGNEXTENDRSHIFT = 0)))
	report "Please run generate again" severity error;

end architecture rtl;

