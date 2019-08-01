library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library altera;
use altera.alt_dspbuilder_package.all;

library lpm;
use lpm.lpm_components.all;
entity alt_dspbuilder_parallel_adder_GNRFXUS4HJ is
	generic		( 			dataWidth : positive := 16;
			direction : string := "+";
			MaskValue : string := "1";
			pipeline : natural := 1;
			number_inputs : positive := 25);

	port(
		clock : in std_logic;
		aclr : in std_logic;
		result : out std_logic_vector(20 downto 0);
		user_aclr : in std_logic;
		ena : in std_logic;
		data0 : in std_logic_vector(15 downto 0);
		data1 : in std_logic_vector(15 downto 0);
		data2 : in std_logic_vector(15 downto 0);
		data3 : in std_logic_vector(15 downto 0);
		data4 : in std_logic_vector(15 downto 0);
		data5 : in std_logic_vector(15 downto 0);
		data6 : in std_logic_vector(15 downto 0);
		data7 : in std_logic_vector(15 downto 0);
		data8 : in std_logic_vector(15 downto 0);
		data9 : in std_logic_vector(15 downto 0);
		data10 : in std_logic_vector(15 downto 0);
		data11 : in std_logic_vector(15 downto 0);
		data12 : in std_logic_vector(15 downto 0);
		data13 : in std_logic_vector(15 downto 0);
		data14 : in std_logic_vector(15 downto 0);
		data15 : in std_logic_vector(15 downto 0);
		data16 : in std_logic_vector(15 downto 0);
		data17 : in std_logic_vector(15 downto 0);
		data18 : in std_logic_vector(15 downto 0);
		data19 : in std_logic_vector(15 downto 0);
		data20 : in std_logic_vector(15 downto 0);
		data21 : in std_logic_vector(15 downto 0);
		data22 : in std_logic_vector(15 downto 0);
		data23 : in std_logic_vector(15 downto 0);
		data24 : in std_logic_vector(15 downto 0));		
end entity;

architecture rtl of alt_dspbuilder_parallel_adder_GNRFXUS4HJ is 

	-- Connectors at depth 1
	signal connector_1_1 : std_logic_vector(17 - 1 downto 0);
	signal connector_1_2 : std_logic_vector(17 - 1 downto 0);
	signal connector_1_3 : std_logic_vector(17 - 1 downto 0);
	signal connector_1_4 : std_logic_vector(17 - 1 downto 0);
	signal connector_1_5 : std_logic_vector(17 - 1 downto 0);
	signal connector_1_6 : std_logic_vector(17 - 1 downto 0);
	signal connector_1_7 : std_logic_vector(17 - 1 downto 0);
	signal connector_1_8 : std_logic_vector(17 - 1 downto 0);
	signal connector_1_9 : std_logic_vector(17 - 1 downto 0);
	signal connector_1_10 : std_logic_vector(17 - 1 downto 0);
	signal connector_1_11 : std_logic_vector(17 - 1 downto 0);
	signal connector_1_12 : std_logic_vector(17 - 1 downto 0);
	signal connector_1_13 : std_logic_vector(17 - 1 downto 0);
	-- Connectors at depth 2
	signal connector_2_1 : std_logic_vector(18 - 1 downto 0);
	signal connector_2_2 : std_logic_vector(18 - 1 downto 0);
	signal connector_2_3 : std_logic_vector(18 - 1 downto 0);
	signal connector_2_4 : std_logic_vector(18 - 1 downto 0);
	signal connector_2_5 : std_logic_vector(18 - 1 downto 0);
	signal connector_2_6 : std_logic_vector(18 - 1 downto 0);
	signal connector_2_7 : std_logic_vector(18 - 1 downto 0);
	-- Connectors at depth 3
	signal connector_3_1 : std_logic_vector(19 - 1 downto 0);
	signal connector_3_2 : std_logic_vector(19 - 1 downto 0);
	signal connector_3_3 : std_logic_vector(19 - 1 downto 0);
	signal connector_3_4 : std_logic_vector(19 - 1 downto 0);
	-- Connectors at depth 4
	signal connector_4_1 : std_logic_vector(20 - 1 downto 0);
	signal connector_4_2 : std_logic_vector(20 - 1 downto 0);
	-- Connectors at depth 5
	signal connector_5_1 : std_logic_vector(21 - 1 downto 0);

Begin

	adder_1_1 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	17 - 1,
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
					LPM_WIDTH		=>	17 - 1,
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
					LPM_WIDTH		=>	17 - 1,
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
					LPM_WIDTH		=>	17 - 1,
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
					LPM_WIDTH		=>	17 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
-- 1 >= 9
-- 1 >= 10
					AddSubVal		=>	AddAdd
					)
			port map (
					dataa		=>	data8,
					datab		=>	data9,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_1_5);
	adder_1_6 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	17 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
-- 1 >= 11
-- 1 >= 12
					AddSubVal		=>	AddAdd
					)
			port map (
					dataa		=>	data10,
					datab		=>	data11,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_1_6);
	adder_1_7 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	17 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
-- 1 >= 13
-- 1 >= 14
					AddSubVal		=>	AddAdd
					)
			port map (
					dataa		=>	data12,
					datab		=>	data13,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_1_7);
	adder_1_8 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	17 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
-- 1 >= 15
-- 1 >= 16
					AddSubVal		=>	AddAdd
					)
			port map (
					dataa		=>	data14,
					datab		=>	data15,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_1_8);
	adder_1_9 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	17 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
-- 1 >= 17
-- 1 >= 18
					AddSubVal		=>	AddAdd
					)
			port map (
					dataa		=>	data16,
					datab		=>	data17,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_1_9);
	adder_1_10 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	17 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
-- 1 >= 19
-- 1 >= 20
					AddSubVal		=>	AddAdd
					)
			port map (
					dataa		=>	data18,
					datab		=>	data19,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_1_10);
	adder_1_11 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	17 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
-- 1 >= 21
-- 1 >= 22
					AddSubVal		=>	AddAdd
					)
			port map (
					dataa		=>	data20,
					datab		=>	data21,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_1_11);
	adder_1_12 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	17 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
-- 1 >= 23
-- 1 >= 24
					AddSubVal		=>	AddAdd
					)
			port map (
					dataa		=>	data22,
					datab		=>	data23,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_1_12);
	adder_1_13 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	17 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
-- 1 >= 25
-- 1 >= 26
					AddSubVal		=>	AddAdd
					)
			port map (
					dataa		=>	data24,
					datab		=>	(others=>'0'),
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_1_13);

	adder_2_1 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	18 - 1,
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
					LPM_WIDTH		=>	18 - 1,
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
					LPM_WIDTH		=>	18 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_1_5,
					datab		=>	connector_1_6,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_2_3);
	adder_2_4 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	18 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_1_7,
					datab		=>	connector_1_8,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_2_4);
	adder_2_5 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	18 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_1_9,
					datab		=>	connector_1_10,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_2_5);
	adder_2_6 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	18 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_1_11,
					datab		=>	connector_1_12,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_2_6);
	adder_2_7 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	18 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_1_13,
					datab		=>	(others=>'0'),
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_2_7);
	adder_3_1 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	19 - 1,
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
					LPM_WIDTH		=>	19 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_2_3,
					datab		=>	connector_2_4,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_3_2);
	adder_3_3 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	19 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_2_5,
					datab		=>	connector_2_6,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_3_3);
	adder_3_4 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	19 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_2_7,
					datab		=>	(others=>'0'),
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_3_4);
	adder_4_1 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	20 - 1,
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
	adder_4_2 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	20 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_3_3,
					datab		=>	connector_3_4,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_4_2);
	adder_5_1 : alt_dspbuilder_SAdderSub generic map (
					LPM_WIDTH		=>	21 - 1,
					PIPELINE		=>	1,
					SequenceLength	=>	1,
					SequenceValue 	=>  "1",
					AddSubVal		=>	AddAdd)
			port map (
					dataa		=>	connector_4_1,
					datab		=>	connector_4_2,
					clock		=>	clock,
					ena    		=>	ena,
					aclr   		=>	aclr,
					user_aclr	=>	user_aclr,
					result		=>	connector_5_1);

result <= connector_5_1;

end architecture;