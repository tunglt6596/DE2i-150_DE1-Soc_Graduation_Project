library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_clock_GNN7TLRCSZ is


	port(
		aclr : in std_logic;
		aclr_n : in std_logic;
		aclr_out : out std_logic;
		clock : in std_logic;
		clock_out : out std_logic);		
end entity;



architecture rtl of alt_dspbuilder_clock_GNN7TLRCSZ is 
	signal aclr_reg : STD_LOGIC;
	signal first_cascade_register_input : STD_LOGIC_VECTOR(0 downto 0);
	signal first_cascade_register_output : STD_LOGIC_VECTOR(0 downto 0);
	signal second_cascade_register_output : STD_LOGIC_VECTOR(0 downto 0);
Begin

	-- Straight Bypass Clock 
	clock_out		<=	clock;

	-- reset logic

	aclr_reg <= aclr;
	aclr_out <= second_cascade_register_output(0);
	first_cascade_register_input(0) <= '0';

	aclr_delay : lpm_ff GENERIC MAP ( lpm_width => 1 )
	PORT MAP (
		data	=> 	first_cascade_register_input,
		clock	=>	clock,
		aset	=> 	aclr_reg,
		q		=> 	first_cascade_register_output
	);
		
	aclr_delay2 : lpm_ff GENERIC MAP ( lpm_width => 1 )
	PORT MAP (
		data	=> 	first_cascade_register_output,
		clock	=>	clock,
		aset	=> 	aclr_reg,
		q		=> 	second_cascade_register_output
	);
	

end architecture;