library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_parallel_adder_GNDV6TKE3O is
	generic		( 			dataWidth : positive := 12;
			direction : string := "+";
			MaskValue : string := "1";
			pipeline : natural := 1;
			number_inputs : positive := 9);

	port(
		clock : in std_logic;
		aclr : in std_logic;
		result : out std_logic_vector(15 downto 0);
		user_aclr : in std_logic;
		ena : in std_logic;
		data0 : in std_logic_vector(11 downto 0);
		data1 : in std_logic_vector(11 downto 0);
		data2 : in std_logic_vector(11 downto 0);
		data3 : in std_logic_vector(11 downto 0);
		data4 : in std_logic_vector(11 downto 0);
		data5 : in std_logic_vector(11 downto 0);
		data6 : in std_logic_vector(11 downto 0);
		data7 : in std_logic_vector(11 downto 0);
		data8 : in std_logic_vector(11 downto 0));		
end entity;

architecture rtl of alt_dspbuilder_parallel_adder_GNDV6TKE3O is 

	-- Connectors at depth 1
	signal connector_1_1 : std_logic_vector(13 - 1 downto 0);
	signal connector_1_2 : std_logic_vector(13 - 1 downto 0);
	signal connector_1_3 : std_logic_vector(13 - 1 downto 0);
	signal connector_1_4 : std_logic_vector(13 - 1 downto 0);
	signal connector_1_5 : std_logic_vector(13 - 1 downto 0);
	-- Connectors at depth 2
	signal connector_2_1 : std_logic_vector(14 - 1 downto 0);
	signal connector_2_2 : std_logic_vector(14 - 1 downto 0);
	signal connector_2_3 : std_logic_vector(14 - 1 downto 0);
	-- Connectors at depth 3
	signal connector_3_1 : std_logic_vector(15 - 1 downto 0);
	signal connector_3_2 : std_logic_vector(15 - 1 downto 0);
	-- Connectors at depth 4
	signal connector_4_1 : std_logic_vector(16 - 1 downto 0);

Begin

	adder_1_1 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	13 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
-- 1 >= 1
-- +
-- 1 >= 2
					AddSubVal		=>	AddAdd
					)
			port map (
					dataa		=>	data0,
					datab		=>	data1,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_1_1);
	adder_1_2 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	13 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
-- 1 >= 3
-- 1 >= 4
					AddSubVal		=>	AddAdd
					)
			port map (
					dataa		=>	data2,
					datab		=>	data3,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_1_2);
	adder_1_3 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	13 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
-- 1 >= 5
-- 1 >= 6
					AddSubVal		=>	AddAdd
					)
			port map (
					dataa		=>	data4,
					datab		=>	data5,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_1_3);
	adder_1_4 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	13 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
-- 1 >= 7
-- 1 >= 8
					AddSubVal		=>	AddAdd
					)
			port map (
					dataa		=>	data6,
					datab		=>	data7,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_1_4);
	adder_1_5 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	13 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
-- 1 >= 9
-- 1 >= 10
					AddSubVal		=>	AddAdd
					)
			port map (
					dataa		=>	data8,
					datab		=>	(others=>'0'),
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_1_5);

	adder_2_1 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	14 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_1_1,
					datab		=>	connector_1_2,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_2_1);
	adder_2_2 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	14 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_1_3,
					datab		=>	connector_1_4,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_2_2);
	adder_2_3 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	14 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_1_5,
					datab		=>	(others=>'0'),
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_2_3);
	adder_3_1 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	15 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_2_1,
					datab		=>	connector_2_2,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_3_1);
	adder_3_2 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	15 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_2_3,
					datab		=>	(others=>'0'),
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_3_2);
	adder_4_1 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	16 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_3_1,
					datab		=>	connector_3_2,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_4_1);

result <= connector_4_1;

end architecture;