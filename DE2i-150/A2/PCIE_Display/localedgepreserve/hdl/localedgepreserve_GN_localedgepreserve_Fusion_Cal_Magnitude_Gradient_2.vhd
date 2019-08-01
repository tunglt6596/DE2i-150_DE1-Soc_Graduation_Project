-- localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2.vhd

-- Generated using ACDS version 17.1 590

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2 is
	port (
		Clock     : in  std_logic                     := '0';             --     Clock.clk
		reset     : in  std_logic                     := '0';             --          .reset
		valid_in  : in  std_logic                     := '0';             --  valid_in.wire
		eof_out   : out std_logic;                                        --   eof_out.wire
		grad_out  : out std_logic_vector(10 downto 0);                    --  grad_out.wire
		sof_out   : out std_logic;                                        --   sof_out.wire
		pixel_out : out std_logic_vector(7 downto 0);                     -- pixel_out.wire
		eof_in    : in  std_logic                     := '0';             --    eof_in.wire
		valid_out : out std_logic;                                        -- valid_out.wire
		pixel_in  : in  std_logic_vector(7 downto 0)  := (others => '0')  --  pixel_in.wire
	);
end entity localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2;

architecture rtl of localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2 is
	component alt_dspbuilder_clock_GNQFU4PUDH is
		port (
			aclr      : in  std_logic := 'X'; -- reset
			aclr_n    : in  std_logic := 'X'; -- reset_n
			aclr_out  : out std_logic;        -- reset
			clock     : in  std_logic := 'X'; -- clk
			clock_out : out std_logic         -- clk
		);
	end component alt_dspbuilder_clock_GNQFU4PUDH;

	component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_generate_signals is
		port (
			sof_out   : out std_logic;        -- wire
			valid_out : out std_logic;        -- wire
			valid_in  : in  std_logic := 'X'; -- wire
			eof_in    : in  std_logic := 'X'; -- wire
			Clock     : in  std_logic := 'X'; -- clk
			reset     : in  std_logic := 'X'; -- reset
			eof_out   : out std_logic         -- wire
		);
	end component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_generate_signals;

	component alt_dspbuilder_port_GN37ALZBS4 is
		port (
			input  : in  std_logic := 'X'; -- wire
			output : out std_logic         -- wire
		);
	end component alt_dspbuilder_port_GN37ALZBS4;

	component alt_dspbuilder_port_GNA5S4SQDN is
		port (
			input  : in  std_logic_vector(7 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(7 downto 0)                     -- wire
		);
	end component alt_dspbuilder_port_GNA5S4SQDN;

	component alt_dspbuilder_pipelined_adder_GNTWZRTG4I is
		generic (
			pipeline : integer := 0;
			width    : natural := 0
		);
		port (
			aclr      : in  std_logic                          := 'X';             -- clk
			add_sub   : in  std_logic                          := 'X';             -- wire
			cin       : in  std_logic                          := 'X';             -- wire
			clock     : in  std_logic                          := 'X';             -- clk
			cout      : out std_logic;                                             -- wire
			dataa     : in  std_logic_vector(width-1 downto 0) := (others => 'X'); -- wire
			datab     : in  std_logic_vector(width-1 downto 0) := (others => 'X'); -- wire
			ena       : in  std_logic                          := 'X';             -- wire
			result    : out std_logic_vector(width-1 downto 0);                    -- wire
			user_aclr : in  std_logic                          := 'X'              -- wire
		);
	end component alt_dspbuilder_pipelined_adder_GNTWZRTG4I;

	component alt_dspbuilder_gnd_GN is
		port (
			output : out std_logic   -- wire
		);
	end component alt_dspbuilder_gnd_GN;

	component alt_dspbuilder_magnitude_GNBHL4WGDH is
		generic (
			width : natural := 1
		);
		port (
			data   : in  std_logic_vector(width-1 downto 0)   := (others => 'X'); -- wire
			result : out std_logic_vector(width+1-1 downto 0)                     -- wire
		);
	end component alt_dspbuilder_magnitude_GNBHL4WGDH;

	component alt_dspbuilder_port_GNLA26EJAH is
		port (
			input  : in  std_logic_vector(10 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(10 downto 0)                     -- wire
		);
	end component alt_dspbuilder_port_GNLA26EJAH;

	component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer is
		port (
			data_10   : out std_logic_vector(7 downto 0);                    -- wire
			data_in   : in  std_logic_vector(7 downto 0) := (others => 'X'); -- wire
			data_02   : out std_logic_vector(7 downto 0);                    -- wire
			pixel_out : out std_logic_vector(7 downto 0);                    -- wire
			data_11   : out std_logic_vector(7 downto 0);                    -- wire
			data_12   : out std_logic_vector(7 downto 0);                    -- wire
			data_22   : out std_logic_vector(7 downto 0);                    -- wire
			data_01   : out std_logic_vector(7 downto 0);                    -- wire
			clken     : in  std_logic                    := 'X';             -- wire
			data_21   : out std_logic_vector(7 downto 0);                    -- wire
			Clock     : in  std_logic                    := 'X';             -- clk
			reset     : in  std_logic                    := 'X';             -- reset
			data_20   : out std_logic_vector(7 downto 0);                    -- wire
			data_00   : out std_logic_vector(7 downto 0)                     -- wire
		);
	end component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer;

	component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator1 is
		port (
			data_02 : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			Clock   : in  std_logic                     := 'X';             -- clk
			reset   : in  std_logic                     := 'X';             -- reset
			clken   : in  std_logic                     := 'X';             -- wire
			data_00 : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_10 : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_22 : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_20 : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			grad_y  : out std_logic_vector(12 downto 0);                    -- wire
			data_12 : in  std_logic_vector(7 downto 0)  := (others => 'X')  -- wire
		);
	end component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator1;

	component alt_dspbuilder_delay_GN53FGQEY3 is
		generic (
			ClockPhase : string   := "1";
			BitPattern : string   := "00000001";
			width      : positive := 8;
			use_init   : natural  := 0;
			delay      : positive := 1
		);
		port (
			aclr   : in  std_logic                          := 'X';             -- clk
			clock  : in  std_logic                          := 'X';             -- clk
			ena    : in  std_logic                          := 'X';             -- wire
			input  : in  std_logic_vector(width-1 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(width-1 downto 0);                    -- wire
			sclr   : in  std_logic                          := 'X'              -- wire
		);
	end component alt_dspbuilder_delay_GN53FGQEY3;

	component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator is
		port (
			data_21 : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			Clock   : in  std_logic                     := 'X';             -- clk
			reset   : in  std_logic                     := 'X';             -- reset
			data_02 : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_00 : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			clken   : in  std_logic                     := 'X';             -- wire
			grad_x  : out std_logic_vector(12 downto 0);                    -- wire
			data_20 : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_22 : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_01 : in  std_logic_vector(7 downto 0)  := (others => 'X')  -- wire
		);
	end component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator;

	component alt_dspbuilder_cast_GNGHP3W5LB is
		generic (
			round    : natural := 0;
			saturate : natural := 0
		);
		port (
			input  : in  std_logic_vector(13 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(10 downto 0)                     -- wire
		);
	end component alt_dspbuilder_cast_GNGHP3W5LB;

	signal pipelined_adderuser_aclrgnd_output_wire                                                 : std_logic;                     -- Pipelined_Adderuser_aclrGND:output -> Pipelined_Adder:user_aclr
	signal delay3sclrgnd_output_wire                                                               : std_logic;                     -- Delay3sclrGND:output -> Delay3:sclr
	signal valid_in_0_output_wire                                                                  : std_logic;                     -- valid_in_0:output -> [Delay3:ena, Pipelined_Adder:ena, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_generate_signals_0:valid_in, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer_0:clken, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator1_0:clken, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator_0:clken]
	signal eof_in_0_output_wire                                                                    : std_logic;                     -- eof_in_0:output -> localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_generate_signals_0:eof_in
	signal pixel_in_0_output_wire                                                                  : std_logic_vector(7 downto 0);  -- pixel_in_0:output -> localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer_0:data_in
	signal localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_pixel_out_wire          : std_logic_vector(7 downto 0);  -- localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer_0:pixel_out -> Delay3:input
	signal localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_00_wire            : std_logic_vector(7 downto 0);  -- localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer_0:data_00 -> [localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator1_0:data_00, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator_0:data_00]
	signal localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_01_wire            : std_logic_vector(7 downto 0);  -- localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer_0:data_01 -> localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator_0:data_01
	signal localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_02_wire            : std_logic_vector(7 downto 0);  -- localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer_0:data_02 -> [localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator1_0:data_02, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator_0:data_02]
	signal localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_20_wire            : std_logic_vector(7 downto 0);  -- localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer_0:data_20 -> [localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator1_0:data_20, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator_0:data_20]
	signal localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_21_wire            : std_logic_vector(7 downto 0);  -- localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer_0:data_21 -> localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator_0:data_21
	signal localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_22_wire            : std_logic_vector(7 downto 0);  -- localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer_0:data_22 -> [localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator1_0:data_22, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator_0:data_22]
	signal localedgepreserve_fusion_cal_magnitude_gradient_2_multiplier_accumulator_0_grad_x_wire  : std_logic_vector(12 downto 0); -- localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator_0:grad_x -> Magnitude:data
	signal localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_10_wire            : std_logic_vector(7 downto 0);  -- localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer_0:data_10 -> localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator1_0:data_10
	signal localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_12_wire            : std_logic_vector(7 downto 0);  -- localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer_0:data_12 -> localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator1_0:data_12
	signal localedgepreserve_fusion_cal_magnitude_gradient_2_multiplier_accumulator1_0_grad_y_wire : std_logic_vector(12 downto 0); -- localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator1_0:grad_y -> Magnitude1:data
	signal delay3_output_wire                                                                      : std_logic_vector(7 downto 0);  -- Delay3:output -> pixel_out_0:input
	signal pipelined_adder_result_wire                                                             : std_logic_vector(10 downto 0); -- Pipelined_Adder:result -> grad_out_0:input
	signal localedgepreserve_fusion_cal_magnitude_gradient_2_generate_signals_0_valid_out_wire     : std_logic;                     -- localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_generate_signals_0:valid_out -> valid_out_0:input
	signal localedgepreserve_fusion_cal_magnitude_gradient_2_generate_signals_0_sof_out_wire       : std_logic;                     -- localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_generate_signals_0:sof_out -> sof_out_0:input
	signal localedgepreserve_fusion_cal_magnitude_gradient_2_generate_signals_0_eof_out_wire       : std_logic;                     -- localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_generate_signals_0:eof_out -> eof_out_0:input
	signal magnitude_result_wire                                                                   : std_logic_vector(13 downto 0); -- Magnitude:result -> cast263:input
	signal cast263_output_wire                                                                     : std_logic_vector(10 downto 0); -- cast263:output -> Pipelined_Adder:dataa
	signal magnitude1_result_wire                                                                  : std_logic_vector(13 downto 0); -- Magnitude1:result -> cast264:input
	signal cast264_output_wire                                                                     : std_logic_vector(10 downto 0); -- cast264:output -> Pipelined_Adder:datab
	signal clock_0_clock_output_clk                                                                : std_logic;                     -- Clock_0:clock_out -> [Delay3:clock, Pipelined_Adder:clock, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_generate_signals_0:Clock, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer_0:Clock, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator1_0:Clock, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator_0:Clock]
	signal clock_0_clock_output_reset                                                              : std_logic;                     -- Clock_0:aclr_out -> [Delay3:aclr, Pipelined_Adder:aclr, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_generate_signals_0:reset, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer_0:reset, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator1_0:reset, localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator_0:reset]

begin

	clock_0 : component alt_dspbuilder_clock_GNQFU4PUDH
		port map (
			clock_out => clock_0_clock_output_clk,   -- clock_output.clk
			aclr_out  => clock_0_clock_output_reset, --             .reset
			clock     => Clock,                      --        clock.clk
			aclr      => reset                       --             .reset
		);

	localedgepreserve_fusion_cal_magnitude_gradient_2_generate_signals_0 : component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_generate_signals
		port map (
			sof_out   => localedgepreserve_fusion_cal_magnitude_gradient_2_generate_signals_0_sof_out_wire,   --   sof_out.wire
			valid_out => localedgepreserve_fusion_cal_magnitude_gradient_2_generate_signals_0_valid_out_wire, -- valid_out.wire
			valid_in  => valid_in_0_output_wire,                                                              --  valid_in.wire
			eof_in    => eof_in_0_output_wire,                                                                --    eof_in.wire
			Clock     => clock_0_clock_output_clk,                                                            --     Clock.clk
			reset     => clock_0_clock_output_reset,                                                          --          .reset
			eof_out   => localedgepreserve_fusion_cal_magnitude_gradient_2_generate_signals_0_eof_out_wire    --   eof_out.wire
		);

	valid_in_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => valid_in,               --  input.wire
			output => valid_in_0_output_wire  -- output.wire
		);

	eof_out_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => localedgepreserve_fusion_cal_magnitude_gradient_2_generate_signals_0_eof_out_wire, --  input.wire
			output => eof_out                                                                            -- output.wire
		);

	pixel_in_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => pixel_in,               --  input.wire
			output => pixel_in_0_output_wire  -- output.wire
		);

	pipelined_adder : component alt_dspbuilder_pipelined_adder_GNTWZRTG4I
		generic map (
			pipeline => 1,
			width    => 11
		)
		port map (
			clock     => clock_0_clock_output_clk,                -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,              --           .reset
			dataa     => cast263_output_wire,                     --      dataa.wire
			datab     => cast264_output_wire,                     --      datab.wire
			result    => pipelined_adder_result_wire,             --     result.wire
			user_aclr => pipelined_adderuser_aclrgnd_output_wire, --  user_aclr.wire
			ena       => valid_in_0_output_wire                   --        ena.wire
		);

	pipelined_adderuser_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => pipelined_adderuser_aclrgnd_output_wire  -- output.wire
		);

	magnitude : component alt_dspbuilder_magnitude_GNBHL4WGDH
		generic map (
			width => 13
		)
		port map (
			data   => localedgepreserve_fusion_cal_magnitude_gradient_2_multiplier_accumulator_0_grad_x_wire, --   data.wire
			result => magnitude_result_wire                                                                   -- result.wire
		);

	eof_in_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => eof_in,               --  input.wire
			output => eof_in_0_output_wire  -- output.wire
		);

	grad_out_0 : component alt_dspbuilder_port_GNLA26EJAH
		port map (
			input  => pipelined_adder_result_wire, --  input.wire
			output => grad_out                     -- output.wire
		);

	magnitude1 : component alt_dspbuilder_magnitude_GNBHL4WGDH
		generic map (
			width => 13
		)
		port map (
			data   => localedgepreserve_fusion_cal_magnitude_gradient_2_multiplier_accumulator1_0_grad_y_wire, --   data.wire
			result => magnitude1_result_wire                                                                   -- result.wire
		);

	valid_out_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => localedgepreserve_fusion_cal_magnitude_gradient_2_generate_signals_0_valid_out_wire, --  input.wire
			output => valid_out                                                                            -- output.wire
		);

	localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0 : component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_line_buffer
		port map (
			data_10   => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_10_wire,   --   data_10.wire
			data_in   => pixel_in_0_output_wire,                                                         --   data_in.wire
			data_02   => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_02_wire,   --   data_02.wire
			pixel_out => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_pixel_out_wire, -- pixel_out.wire
			data_11   => open,                                                                           --   data_11.wire
			data_12   => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_12_wire,   --   data_12.wire
			data_22   => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_22_wire,   --   data_22.wire
			data_01   => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_01_wire,   --   data_01.wire
			clken     => valid_in_0_output_wire,                                                         --     clken.wire
			data_21   => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_21_wire,   --   data_21.wire
			Clock     => clock_0_clock_output_clk,                                                       --     Clock.clk
			reset     => clock_0_clock_output_reset,                                                     --          .reset
			data_20   => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_20_wire,   --   data_20.wire
			data_00   => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_00_wire    --   data_00.wire
		);

	localedgepreserve_fusion_cal_magnitude_gradient_2_multiplier_accumulator1_0 : component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator1
		port map (
			data_02 => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_02_wire,            -- data_02.wire
			Clock   => clock_0_clock_output_clk,                                                                --   Clock.clk
			reset   => clock_0_clock_output_reset,                                                              --        .reset
			clken   => valid_in_0_output_wire,                                                                  --   clken.wire
			data_00 => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_00_wire,            -- data_00.wire
			data_10 => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_10_wire,            -- data_10.wire
			data_22 => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_22_wire,            -- data_22.wire
			data_20 => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_20_wire,            -- data_20.wire
			grad_y  => localedgepreserve_fusion_cal_magnitude_gradient_2_multiplier_accumulator1_0_grad_y_wire, --  grad_y.wire
			data_12 => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_12_wire             -- data_12.wire
		);

	sof_out_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => localedgepreserve_fusion_cal_magnitude_gradient_2_generate_signals_0_sof_out_wire, --  input.wire
			output => sof_out                                                                            -- output.wire
		);

	pixel_out_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay3_output_wire, --  input.wire
			output => pixel_out           -- output.wire
		);

	delay3 : component alt_dspbuilder_delay_GN53FGQEY3
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 1
		)
		port map (
			input  => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_pixel_out_wire, --      input.wire
			clock  => clock_0_clock_output_clk,                                                       -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset,                                                     --           .reset
			output => delay3_output_wire,                                                             --     output.wire
			sclr   => delay3sclrgnd_output_wire,                                                      --       sclr.wire
			ena    => valid_in_0_output_wire                                                          --        ena.wire
		);

	delay3sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay3sclrgnd_output_wire  -- output.wire
		);

	localedgepreserve_fusion_cal_magnitude_gradient_2_multiplier_accumulator_0 : component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2_multiplier_accumulator
		port map (
			data_21 => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_21_wire,           -- data_21.wire
			Clock   => clock_0_clock_output_clk,                                                               --   Clock.clk
			reset   => clock_0_clock_output_reset,                                                             --        .reset
			data_02 => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_02_wire,           -- data_02.wire
			data_00 => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_00_wire,           -- data_00.wire
			clken   => valid_in_0_output_wire,                                                                 --   clken.wire
			grad_x  => localedgepreserve_fusion_cal_magnitude_gradient_2_multiplier_accumulator_0_grad_x_wire, --  grad_x.wire
			data_20 => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_20_wire,           -- data_20.wire
			data_22 => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_22_wire,           -- data_22.wire
			data_01 => localedgepreserve_fusion_cal_magnitude_gradient_2_line_buffer_0_data_01_wire            -- data_01.wire
		);

	cast263 : component alt_dspbuilder_cast_GNGHP3W5LB
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => magnitude_result_wire, --  input.wire
			output => cast263_output_wire    -- output.wire
		);

	cast264 : component alt_dspbuilder_cast_GNGHP3W5LB
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => magnitude1_result_wire, --  input.wire
			output => cast264_output_wire     -- output.wire
		);

end architecture rtl; -- of localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_2
