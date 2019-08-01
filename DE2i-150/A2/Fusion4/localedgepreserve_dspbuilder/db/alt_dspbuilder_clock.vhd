-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity alt_dspbuilder_clock is
	generic (
		DOMAIN : string := "default";
		RESET : string := "ACTIVE_HIGH"
	);
	port (
		aclr : in std_logic := '0';
		clock_out : out std_logic;
		clock : in std_logic := '0';
		aclr_n : in std_logic := '0';
		aclr_out : out std_logic
	);
end entity alt_dspbuilder_clock;

architecture rtl of alt_dspbuilder_clock is

component alt_dspbuilder_clock_GNN7TLRCSZ is
	generic (
		DOMAIN : string := "default";
		RESET : string := "REGISTERED_HIGH"
	);
	port (
		aclr : in std_logic := '0';
		aclr_out : out std_logic;
		clock : in std_logic := '0';
		clock_out : out std_logic
	);
end component alt_dspbuilder_clock_GNN7TLRCSZ;

component alt_dspbuilder_clock_GNQFU4PUDH is
	generic (
		DOMAIN : string := "default";
		RESET : string := "ACTIVE_HIGH"
	);
	port (
		aclr : in std_logic := '0';
		aclr_out : out std_logic;
		clock : in std_logic := '0';
		clock_out : out std_logic
	);
end component alt_dspbuilder_clock_GNQFU4PUDH;

begin

alt_dspbuilder_clock_GNN7TLRCSZ_0: if ((DOMAIN = "default") and (RESET = "REGISTERED_HIGH")) generate
	inst_alt_dspbuilder_clock_GNN7TLRCSZ_0: alt_dspbuilder_clock_GNN7TLRCSZ
		generic map(DOMAIN => "default", RESET => "REGISTERED_HIGH")
		port map(aclr => aclr, aclr_out => aclr_out, clock => clock, clock_out => clock_out);
end generate;

alt_dspbuilder_clock_GNQFU4PUDH_1: if ((DOMAIN = "default") and (RESET = "ACTIVE_HIGH")) generate
	inst_alt_dspbuilder_clock_GNQFU4PUDH_1: alt_dspbuilder_clock_GNQFU4PUDH
		generic map(DOMAIN => "default", RESET => "ACTIVE_HIGH")
		port map(aclr => aclr, aclr_out => aclr_out, clock => clock, clock_out => clock_out);
end generate;

assert not (((DOMAIN = "default") and (RESET = "REGISTERED_HIGH")) or ((DOMAIN = "default") and (RESET = "ACTIVE_HIGH")))
	report "Please run generate again" severity error;

end architecture rtl;

