library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_extract_bit_GNN5FDHW3U is
	generic		( 			ExtractedBit : natural := 8;
			width : natural := 9);

	port(
		aclr : in std_logic;
		clock : in std_logic;
		input : in std_logic_vector((width)-1 downto 0);
		output : out std_logic);		
end entity;

architecture rtl of alt_dspbuilder_extract_bit_GNN5FDHW3U is 
Begin
-- Constant
output		<=	input(8);				
end architecture;