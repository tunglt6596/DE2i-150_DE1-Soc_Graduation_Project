library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_gain_GNBM7YKIKA is
	generic		( 			InputWidth : natural := 9;
			lpm : natural := 0;
			MaskValue : string := "1";
			pipeline : natural := 5;
			gain : string := "011000");

	port(
		clock : in std_logic;
		aclr : in std_logic;
		Input : in std_logic_vector(8 downto 0);
		Output : out std_logic_vector(14 downto 0);
		user_aclr : in std_logic;
		ena : in std_logic);		
end entity;


architecture rtl of alt_dspbuilder_gain_GNBM7YKIKA is 
	constant mask		: STD_LOGIC_VECTOR(ToNatural(1-1) downto 0) := "1";
	signal aclr_signal : STD_LOGIC;
	signal seqenable	: std_logic ;
	signal enadff		: std_logic ;

Begin

	-- Reset is a combination of system reset and the user exposed reset
	aclr_signal <= aclr or user_aclr;

	-- Phase selection sequence
	gsq:if 5>0 generate
		gnoseq: if ((1=1) and (mask="1")) generate 
			enadff <= ena;
		end generate gnoseq;	
		gseq: if not ((1=1) and (mask="1")) generate 
			u:alt_dspbuilder_vecseq 	generic map 	(
							SequenceLength=>1,
							SequenceValue=>"1")
					port map		(clock=>clock, ena=>ena, aclr=>aclr_signal, sclr=>'0', yout=> seqenable);	
			enadff <= 	seqenable and ena;
		end generate gseq;
	end generate gsq;

	gnsq:if 5=0 generate
		enadff<='0';
	end generate gnsq;

	-- Gain
	U0:alt_dspbuilder_CST_MULT GENERIC MAP(widthin     => 9,   
			                widthcoef   => 6,   
			                widthr      => 15,   
			                cst         => "011000",
			                lpm_hint	=> "INPUT_B_IS_CONSTANT=YES,MAXIMIZE_SPEED=5",
			                pipeline    => 5)
		        PORT MAP   (clock	    => clock,
					        aclr	    => aclr_signal,
					        ena         => enadff,
					        data	    => Input,
					        result	    => Output);					
							
end architecture;