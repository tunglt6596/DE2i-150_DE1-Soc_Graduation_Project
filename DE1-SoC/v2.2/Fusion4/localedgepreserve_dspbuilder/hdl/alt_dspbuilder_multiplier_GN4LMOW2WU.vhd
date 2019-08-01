library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_multiplier_GN4LMOW2WU is
	generic		( 			aWidth : natural := 15;
			Signed : natural := 0;
			bWidth : natural := 24;
			DEDICATED_MULTIPLIER_CIRCUITRY : string := "YES";
			pipeline : integer := 1;
			OutputLsb : integer := 0;
			OutputMsb : integer := 34);

	port(
		aclr : in std_logic;
		clock : in std_logic;
		dataa : in std_logic_vector((aWidth)-1 downto 0);
		datab : in std_logic_vector((bWidth)-1 downto 0);
		ena : in std_logic;
		result : out std_logic_vector((OutputMsb-OutputLsb+1)-1 downto 0);
		user_aclr : in std_logic);		
end entity;

architecture rtl of alt_dspbuilder_multiplier_GN4LMOW2WU is 

signal reset: STD_LOGIC;

Begin

-- DSP Builder Block - Simulink Block "Multiplier"
Multiplieri : alt_dspbuilder_sMultAltr  Generic map (
				pipeline	=>	1,
				lpm_representation	=>	"UNSIGNED",
				OutputMsb	=>	34,
				OutputLsb	=>	0,
				lpm_widtha	=>	15,
				lpm_widthb	=>	24,
				lpm_hint	=>	"DEDICATED_MULTIPLIER_CIRCUITRY=YES")
		port map (
				clock		=>	clock,
				aclr		=>	aclr,
				user_aclr	=>	user_aclr,
				ena			=>	ena,
				dataa		=>	dataa,
				datab		=>	datab,
				result		=>	result);

end architecture;		