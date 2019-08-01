library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_memdelay_GNGGI56XG4 is
	generic		( 			RAMTYPE : string := "AUTO";
			WIDTH : positive := 8;
			DELAY : positive := 664);

	port(
		aclr : in std_logic;
		clock : in std_logic;
		ena : in std_logic;
		input : in std_logic_vector((WIDTH)-1 downto 0);
		output : out std_logic_vector((WIDTH)-1 downto 0);
		user_aclr : in std_logic);		
end entity;

architecture rtl of alt_dspbuilder_memdelay_GNGGI56XG4 is
Begin

-- Tap Delay Line - Simulink Block "MemoryDelay"
MemoryDelayi : alt_dspbuilder_SShiftTap generic map (
                width       =>  8 ,
                use_dedicated_circuitry =>  1,
                lpm_hint    =>  "RAM_BLOCK_TYPE=AUTO",
                number_of_taps  =>  1,
                tap_distance    =>  664)
        port map (data      =>  input,
                  clock     =>  clock,
                  sclr      =>  '0',
                  aclr      =>  aclr,
                  user_aclr =>  user_aclr,
                  ena       =>  ena,
                  taps      =>  output);

end architecture;