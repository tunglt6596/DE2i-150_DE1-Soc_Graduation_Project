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
		dataa : in std_logic_vector(lpm_width-1 downto 0) := (others=>'0')
	);
end entity alt_dspbuilder_logical_bus_op;

architecture rtl of alt_dspbuilder_logical_bus_op is

component alt_dspbuilder_logical_bus_op_GNAIUQX2FS is
	generic (
		LOGICAL_OP : string := "AltNOT";
		LPM_WIDTH : positive := 10;
		SHIFT_AMOUNT : natural := 1;
		MASK_VALUE : string := "1111111011";
		SIGNEXTENDRSHIFT : natural := 1
	);
	port (
		dataa : in std_logic_vector(10-1 downto 0) := (others=>'0');
		result : out std_logic_vector(10-1 downto 0)
	);
end component alt_dspbuilder_logical_bus_op_GNAIUQX2FS;

component alt_dspbuilder_logical_bus_op_GNZIK3BHQU is
	generic (
		LOGICAL_OP : string := "AltShiftLeft";
		LPM_WIDTH : positive := 10;
		SHIFT_AMOUNT : natural := 1;
		MASK_VALUE : string := "1111111011";
		SIGNEXTENDRSHIFT : natural := 1
	);
	port (
		dataa : in std_logic_vector(10-1 downto 0) := (others=>'0');
		result : out std_logic_vector(10-1 downto 0)
	);
end component alt_dspbuilder_logical_bus_op_GNZIK3BHQU;

begin

alt_dspbuilder_logical_bus_op_GNAIUQX2FS_0: if ((LOGICAL_OP = "AltNOT") and (LPM_WIDTH = 10) and (SHIFT_AMOUNT = 1) and (MASK_VALUE = "1111111011") and (SIGNEXTENDRSHIFT = 1)) generate
	inst_alt_dspbuilder_logical_bus_op_GNAIUQX2FS_0: alt_dspbuilder_logical_bus_op_GNAIUQX2FS
		generic map(LOGICAL_OP => "AltNOT", LPM_WIDTH => 10, SHIFT_AMOUNT => 1, MASK_VALUE => "1111111011", SIGNEXTENDRSHIFT => 1)
		port map(dataa => dataa, result => result);
end generate;

alt_dspbuilder_logical_bus_op_GNZIK3BHQU_1: if ((LOGICAL_OP = "AltShiftLeft") and (LPM_WIDTH = 10) and (SHIFT_AMOUNT = 1) and (MASK_VALUE = "1111111011") and (SIGNEXTENDRSHIFT = 1)) generate
	inst_alt_dspbuilder_logical_bus_op_GNZIK3BHQU_1: alt_dspbuilder_logical_bus_op_GNZIK3BHQU
		generic map(LOGICAL_OP => "AltShiftLeft", LPM_WIDTH => 10, SHIFT_AMOUNT => 1, MASK_VALUE => "1111111011", SIGNEXTENDRSHIFT => 1)
		port map(dataa => dataa, result => result);
end generate;

assert not (((LOGICAL_OP = "AltNOT") and (LPM_WIDTH = 10) and (SHIFT_AMOUNT = 1) and (MASK_VALUE = "1111111011") and (SIGNEXTENDRSHIFT = 1)) or ((LOGICAL_OP = "AltShiftLeft") and (LPM_WIDTH = 10) and (SHIFT_AMOUNT = 1) and (MASK_VALUE = "1111111011") and (SIGNEXTENDRSHIFT = 1)))
	report "Please run generate again" severity error;

end architecture rtl;

