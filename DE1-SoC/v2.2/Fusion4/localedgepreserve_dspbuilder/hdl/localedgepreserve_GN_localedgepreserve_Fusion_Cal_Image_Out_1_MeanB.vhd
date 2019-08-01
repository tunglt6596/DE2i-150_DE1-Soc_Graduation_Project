-- localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanB.vhd

-- Generated using ACDS version 17.1 590

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanB is
	port (
		valid_in : in  std_logic                     := '0';             -- valid_in.wire
		b_in     : in  std_logic_vector(15 downto 0) := (others => '0'); --     b_in.wire
		b_out    : out std_logic_vector(15 downto 0);                    --    b_out.wire
		Clock    : in  std_logic                     := '0';             --    Clock.clk
		reset    : in  std_logic                     := '0'              --         .reset
	);
end entity localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanB;

architecture rtl of localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanB is
	component alt_dspbuilder_clock_GNQFU4PUDH is
		port (
			aclr      : in  std_logic := 'X'; -- reset
			aclr_n    : in  std_logic := 'X'; -- reset_n
			aclr_out  : out std_logic;        -- reset
			clock     : in  std_logic := 'X'; -- clk
			clock_out : out std_logic         -- clk
		);
	end component alt_dspbuilder_clock_GNQFU4PUDH;

	component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator is
		port (
			b_out   : out std_logic_vector(15 downto 0);                    -- wire
			data_20 : in  std_logic_vector(15 downto 0) := (others => 'X'); -- wire
			Clock   : in  std_logic                     := 'X';             -- clk
			reset   : in  std_logic                     := 'X';             -- reset
			data_21 : in  std_logic_vector(15 downto 0) := (others => 'X'); -- wire
			data_01 : in  std_logic_vector(15 downto 0) := (others => 'X'); -- wire
			data_02 : in  std_logic_vector(15 downto 0) := (others => 'X'); -- wire
			clken   : in  std_logic                     := 'X';             -- wire
			data_22 : in  std_logic_vector(15 downto 0) := (others => 'X'); -- wire
			data_10 : in  std_logic_vector(15 downto 0) := (others => 'X'); -- wire
			data_11 : in  std_logic_vector(15 downto 0) := (others => 'X'); -- wire
			data_00 : in  std_logic_vector(15 downto 0) := (others => 'X'); -- wire
			data_12 : in  std_logic_vector(15 downto 0) := (others => 'X')  -- wire
		);
	end component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator;

	component alt_dspbuilder_port_GNBO6OMO5Y is
		port (
			input  : in  std_logic_vector(15 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(15 downto 0)                     -- wire
		);
	end component alt_dspbuilder_port_GNBO6OMO5Y;

	component alt_dspbuilder_port_GN37ALZBS4 is
		port (
			input  : in  std_logic := 'X'; -- wire
			output : out std_logic         -- wire
		);
	end component alt_dspbuilder_port_GN37ALZBS4;

	component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer is
		port (
			data_20 : out std_logic_vector(15 downto 0);                    -- wire
			data_22 : out std_logic_vector(15 downto 0);                    -- wire
			data_10 : out std_logic_vector(15 downto 0);                    -- wire
			data_01 : out std_logic_vector(15 downto 0);                    -- wire
			data_21 : out std_logic_vector(15 downto 0);                    -- wire
			Clock   : in  std_logic                     := 'X';             -- clk
			reset   : in  std_logic                     := 'X';             -- reset
			clken   : in  std_logic                     := 'X';             -- wire
			data_00 : out std_logic_vector(15 downto 0);                    -- wire
			data_02 : out std_logic_vector(15 downto 0);                    -- wire
			data_11 : out std_logic_vector(15 downto 0);                    -- wire
			data_12 : out std_logic_vector(15 downto 0);                    -- wire
			data_in : in  std_logic_vector(15 downto 0) := (others => 'X')  -- wire
		);
	end component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer;

	signal b_in_0_output_wire                                                                 : std_logic_vector(15 downto 0); -- b_in_0:output -> localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer_0:data_in
	signal valid_in_0_output_wire                                                             : std_logic;                     -- valid_in_0:output -> [localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer_0:clken, localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator_0:clken]
	signal localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_00_wire          : std_logic_vector(15 downto 0); -- localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer_0:data_00 -> localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator_0:data_00
	signal localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_01_wire          : std_logic_vector(15 downto 0); -- localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer_0:data_01 -> localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator_0:data_01
	signal localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_02_wire          : std_logic_vector(15 downto 0); -- localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer_0:data_02 -> localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator_0:data_02
	signal localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_10_wire          : std_logic_vector(15 downto 0); -- localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer_0:data_10 -> localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator_0:data_10
	signal localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_11_wire          : std_logic_vector(15 downto 0); -- localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer_0:data_11 -> localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator_0:data_11
	signal localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_12_wire          : std_logic_vector(15 downto 0); -- localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer_0:data_12 -> localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator_0:data_12
	signal localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_20_wire          : std_logic_vector(15 downto 0); -- localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer_0:data_20 -> localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator_0:data_20
	signal localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_21_wire          : std_logic_vector(15 downto 0); -- localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer_0:data_21 -> localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator_0:data_21
	signal localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_22_wire          : std_logic_vector(15 downto 0); -- localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer_0:data_22 -> localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator_0:data_22
	signal localedgepreserve_fusion_cal_image_out_1_meanb_multiplier_accumulator_0_b_out_wire : std_logic_vector(15 downto 0); -- localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator_0:b_out -> b_out_0:input
	signal clock_0_clock_output_clk                                                           : std_logic;                     -- Clock_0:clock_out -> [localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer_0:Clock, localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator_0:Clock]
	signal clock_0_clock_output_reset                                                         : std_logic;                     -- Clock_0:aclr_out -> [localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer_0:reset, localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator_0:reset]

begin

	clock_0 : component alt_dspbuilder_clock_GNQFU4PUDH
		port map (
			clock_out => clock_0_clock_output_clk,   -- clock_output.clk
			aclr_out  => clock_0_clock_output_reset, --             .reset
			clock     => Clock,                      --        clock.clk
			aclr      => reset                       --             .reset
		);

	localedgepreserve_fusion_cal_image_out_1_meanb_multiplier_accumulator_0 : component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_multiplier_accumulator
		port map (
			b_out   => localedgepreserve_fusion_cal_image_out_1_meanb_multiplier_accumulator_0_b_out_wire, --   b_out.wire
			data_20 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_20_wire,          -- data_20.wire
			Clock   => clock_0_clock_output_clk,                                                           --   Clock.clk
			reset   => clock_0_clock_output_reset,                                                         --        .reset
			data_21 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_21_wire,          -- data_21.wire
			data_01 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_01_wire,          -- data_01.wire
			data_02 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_02_wire,          -- data_02.wire
			clken   => valid_in_0_output_wire,                                                             --   clken.wire
			data_22 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_22_wire,          -- data_22.wire
			data_10 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_10_wire,          -- data_10.wire
			data_11 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_11_wire,          -- data_11.wire
			data_00 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_00_wire,          -- data_00.wire
			data_12 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_12_wire           -- data_12.wire
		);

	b_out_0 : component alt_dspbuilder_port_GNBO6OMO5Y
		port map (
			input  => localedgepreserve_fusion_cal_image_out_1_meanb_multiplier_accumulator_0_b_out_wire, --  input.wire
			output => b_out                                                                               -- output.wire
		);

	valid_in_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => valid_in,               --  input.wire
			output => valid_in_0_output_wire  -- output.wire
		);

	localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0 : component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_line_buffer
		port map (
			data_20 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_20_wire, -- data_20.wire
			data_22 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_22_wire, -- data_22.wire
			data_10 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_10_wire, -- data_10.wire
			data_01 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_01_wire, -- data_01.wire
			data_21 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_21_wire, -- data_21.wire
			Clock   => clock_0_clock_output_clk,                                                  --   Clock.clk
			reset   => clock_0_clock_output_reset,                                                --        .reset
			clken   => valid_in_0_output_wire,                                                    --   clken.wire
			data_00 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_00_wire, -- data_00.wire
			data_02 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_02_wire, -- data_02.wire
			data_11 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_11_wire, -- data_11.wire
			data_12 => localedgepreserve_fusion_cal_image_out_1_meanb_line_buffer_0_data_12_wire, -- data_12.wire
			data_in => b_in_0_output_wire                                                         -- data_in.wire
		);

	b_in_0 : component alt_dspbuilder_port_GNBO6OMO5Y
		port map (
			input  => b_in,               --  input.wire
			output => b_in_0_output_wire  -- output.wire
		);

end architecture rtl; -- of localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanB
