library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_fifo_GNVYF2VJ4Q is
	generic		( 			numwords : positive := 1024;
			use_eab : natural := 1;
			ram_block_type : string := "AUTO";
			width : positive := 9;
			showahead_mode : natural := 0;
			family : string := "Cyclone V");

	port(
		clock : in std_logic;
		aclr : in std_logic;
		data : in std_logic_vector(8 downto 0);
		wrreq : in std_logic;
		rdreq : in std_logic;
		full : out std_logic;
		empty : out std_logic;
		q : out std_logic_vector(8 downto 0);
		usedw : out std_logic_vector(9 downto 0);
		sclr : in std_logic);		
end entity;

architecture rtl of alt_dspbuilder_fifo_GNVYF2VJ4Q is 
Begin

-- DSP Builder Block - Simulink Block "FIFO"
FIFOi : alt_dspbuilder_sCFifoAltr  Generic map 
			(
				width					=>	9,
				widthud					=>	10,
				numwords				=>	1024,
				intended_device_family	=>	"Cyclone V",
				lpm_hint				=>	"RAM_BLOCK_TYPE=AUTO",
								showahead_mode			=>	"OFF",
												use_eab					=>  "ON"
							)
		port map 
			(
				clock	=>	clock,
				sclr	=>	sclr,
				aclr 	=>  aclr,
				user_aclr => '0',
				data	=>	data,
				rdreq	=>	rdreq,
				wrreq	=>	wrreq,
				q		=>	q,
				full	=>	full,
				empty	=>	empty,
				usedw	=>	usedw
			);
end architecture;