-- localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG.vhd

-- Generated using ACDS version 17.1 590

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG is
	port (
		valid_in : in  std_logic                     := '0';             -- valid_in.wire
		meanG    : out std_logic_vector(34 downto 0);                    --    meanG.wire
		Clock    : in  std_logic                     := '0';             --    Clock.clk
		reset    : in  std_logic                     := '0';             --         .reset
		pixel_in : in  std_logic_vector(10 downto 0) := (others => '0')  -- pixel_in.wire
	);
end entity localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG;

architecture rtl of localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG is
	component alt_dspbuilder_clock_GNQFU4PUDH is
		port (
			aclr      : in  std_logic := 'X'; -- reset
			aclr_n    : in  std_logic := 'X'; -- reset_n
			aclr_out  : out std_logic;        -- reset
			clock     : in  std_logic := 'X'; -- clk
			clock_out : out std_logic         -- clk
		);
	end component alt_dspbuilder_clock_GNQFU4PUDH;

	component localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator is
		port (
			data_12 : in  std_logic_vector(10 downto 0) := (others => 'X'); -- wire
			data_11 : in  std_logic_vector(10 downto 0) := (others => 'X'); -- wire
			mean    : out std_logic_vector(34 downto 0);                    -- wire
			Clock   : in  std_logic                     := 'X';             -- clk
			reset   : in  std_logic                     := 'X';             -- reset
			clken   : in  std_logic                     := 'X';             -- wire
			data_10 : in  std_logic_vector(10 downto 0) := (others => 'X'); -- wire
			data_02 : in  std_logic_vector(10 downto 0) := (others => 'X'); -- wire
			data_22 : in  std_logic_vector(10 downto 0) := (others => 'X'); -- wire
			data_01 : in  std_logic_vector(10 downto 0) := (others => 'X'); -- wire
			data_00 : in  std_logic_vector(10 downto 0) := (others => 'X'); -- wire
			data_21 : in  std_logic_vector(10 downto 0) := (others => 'X'); -- wire
			data_20 : in  std_logic_vector(10 downto 0) := (others => 'X')  -- wire
		);
	end component localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator;

	component alt_dspbuilder_port_GN37ALZBS4 is
		port (
			input  : in  std_logic := 'X'; -- wire
			output : out std_logic         -- wire
		);
	end component alt_dspbuilder_port_GN37ALZBS4;

	component localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer is
		port (
			data_in : in  std_logic_vector(10 downto 0) := (others => 'X'); -- wire
			clken   : in  std_logic                     := 'X';             -- wire
			data_02 : out std_logic_vector(10 downto 0);                    -- wire
			data_21 : out std_logic_vector(10 downto 0);                    -- wire
			data_22 : out std_logic_vector(10 downto 0);                    -- wire
			data_10 : out std_logic_vector(10 downto 0);                    -- wire
			Clock   : in  std_logic                     := 'X';             -- clk
			reset   : in  std_logic                     := 'X';             -- reset
			data_20 : out std_logic_vector(10 downto 0);                    -- wire
			data_11 : out std_logic_vector(10 downto 0);                    -- wire
			data_00 : out std_logic_vector(10 downto 0);                    -- wire
			data_01 : out std_logic_vector(10 downto 0);                    -- wire
			data_12 : out std_logic_vector(10 downto 0)                     -- wire
		);
	end component localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer;

	component alt_dspbuilder_port_GNLA26EJAH is
		port (
			input  : in  std_logic_vector(10 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(10 downto 0)                     -- wire
		);
	end component alt_dspbuilder_port_GNLA26EJAH;

	component alt_dspbuilder_port_GNH2FMNPFF is
		port (
			input  : in  std_logic_vector(34 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(34 downto 0)                     -- wire
		);
	end component alt_dspbuilder_port_GNH2FMNPFF;

	signal pixel_in_0_output_wire                                                          : std_logic_vector(10 downto 0); -- pixel_in_0:output -> localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer_0:data_in
	signal valid_in_0_output_wire                                                          : std_logic;                     -- valid_in_0:output -> [localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer_0:clken, localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator_0:clken]
	signal localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_00_wire         : std_logic_vector(10 downto 0); -- localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer_0:data_00 -> localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator_0:data_00
	signal localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_01_wire         : std_logic_vector(10 downto 0); -- localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer_0:data_01 -> localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator_0:data_01
	signal localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_02_wire         : std_logic_vector(10 downto 0); -- localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer_0:data_02 -> localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator_0:data_02
	signal localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_10_wire         : std_logic_vector(10 downto 0); -- localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer_0:data_10 -> localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator_0:data_10
	signal localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_11_wire         : std_logic_vector(10 downto 0); -- localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer_0:data_11 -> localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator_0:data_11
	signal localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_12_wire         : std_logic_vector(10 downto 0); -- localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer_0:data_12 -> localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator_0:data_12
	signal localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_20_wire         : std_logic_vector(10 downto 0); -- localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer_0:data_20 -> localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator_0:data_20
	signal localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_21_wire         : std_logic_vector(10 downto 0); -- localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer_0:data_21 -> localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator_0:data_21
	signal localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_22_wire         : std_logic_vector(10 downto 0); -- localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer_0:data_22 -> localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator_0:data_22
	signal localedgepreserve_fusion_cal_a_b_1_cal_meang_multiplier_accumulator_0_mean_wire : std_logic_vector(34 downto 0); -- localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator_0:mean -> meanG_0:input
	signal clock_0_clock_output_clk                                                        : std_logic;                     -- Clock_0:clock_out -> [localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer_0:Clock, localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator_0:Clock]
	signal clock_0_clock_output_reset                                                      : std_logic;                     -- Clock_0:aclr_out -> [localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer_0:reset, localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator_0:reset]

begin

	clock_0 : component alt_dspbuilder_clock_GNQFU4PUDH
		port map (
			clock_out => clock_0_clock_output_clk,   -- clock_output.clk
			aclr_out  => clock_0_clock_output_reset, --             .reset
			clock     => Clock,                      --        clock.clk
			aclr      => reset                       --             .reset
		);

	localedgepreserve_fusion_cal_a_b_1_cal_meang_multiplier_accumulator_0 : component localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_multiplier_accumulator
		port map (
			data_12 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_12_wire,         -- data_12.wire
			data_11 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_11_wire,         -- data_11.wire
			mean    => localedgepreserve_fusion_cal_a_b_1_cal_meang_multiplier_accumulator_0_mean_wire, --    mean.wire
			Clock   => clock_0_clock_output_clk,                                                        --   Clock.clk
			reset   => clock_0_clock_output_reset,                                                      --        .reset
			clken   => valid_in_0_output_wire,                                                          --   clken.wire
			data_10 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_10_wire,         -- data_10.wire
			data_02 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_02_wire,         -- data_02.wire
			data_22 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_22_wire,         -- data_22.wire
			data_01 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_01_wire,         -- data_01.wire
			data_00 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_00_wire,         -- data_00.wire
			data_21 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_21_wire,         -- data_21.wire
			data_20 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_20_wire          -- data_20.wire
		);

	valid_in_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => valid_in,               --  input.wire
			output => valid_in_0_output_wire  -- output.wire
		);

	localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0 : component localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG_line_buffer
		port map (
			data_in => pixel_in_0_output_wire,                                                  -- data_in.wire
			clken   => valid_in_0_output_wire,                                                  --   clken.wire
			data_02 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_02_wire, -- data_02.wire
			data_21 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_21_wire, -- data_21.wire
			data_22 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_22_wire, -- data_22.wire
			data_10 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_10_wire, -- data_10.wire
			Clock   => clock_0_clock_output_clk,                                                --   Clock.clk
			reset   => clock_0_clock_output_reset,                                              --        .reset
			data_20 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_20_wire, -- data_20.wire
			data_11 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_11_wire, -- data_11.wire
			data_00 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_00_wire, -- data_00.wire
			data_01 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_01_wire, -- data_01.wire
			data_12 => localedgepreserve_fusion_cal_a_b_1_cal_meang_line_buffer_0_data_12_wire  -- data_12.wire
		);

	pixel_in_0 : component alt_dspbuilder_port_GNLA26EJAH
		port map (
			input  => pixel_in,               --  input.wire
			output => pixel_in_0_output_wire  -- output.wire
		);

	meang_0 : component alt_dspbuilder_port_GNH2FMNPFF
		port map (
			input  => localedgepreserve_fusion_cal_a_b_1_cal_meang_multiplier_accumulator_0_mean_wire, --  input.wire
			output => meanG                                                                            -- output.wire
		);

end architecture rtl; -- of localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_1_Cal_MeanG
