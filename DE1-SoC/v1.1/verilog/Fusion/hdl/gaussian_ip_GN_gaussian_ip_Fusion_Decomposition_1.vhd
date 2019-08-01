-- gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_1.vhd

-- Generated using ACDS version 17.1 590

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_1 is
	port (
		valid_in  : in  std_logic                    := '0';             --  valid_in.wire
		valid_out : out std_logic;                                       -- valid_out.wire
		pixel_out : out std_logic_vector(7 downto 0);                    -- pixel_out.wire
		diff_out  : out std_logic_vector(9 downto 0);                    --  diff_out.wire
		eof_out   : out std_logic;                                       --   eof_out.wire
		sof_in    : in  std_logic                    := '0';             --    sof_in.wire
		Clock     : in  std_logic                    := '0';             --     Clock.clk
		reset     : in  std_logic                    := '0';             --          .reset
		pixel_in  : in  std_logic_vector(7 downto 0) := (others => '0'); --  pixel_in.wire
		eof_in    : in  std_logic                    := '0';             --    eof_in.wire
		sof_out   : out std_logic                                        --   sof_out.wire
	);
end entity gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_1;

architecture rtl of gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_1 is
	component alt_dspbuilder_clock_GNQFU4PUDH is
		port (
			aclr      : in  std_logic := 'X'; -- reset
			aclr_n    : in  std_logic := 'X'; -- reset_n
			aclr_out  : out std_logic;        -- reset
			clock     : in  std_logic := 'X'; -- clk
			clock_out : out std_logic         -- clk
		);
	end component alt_dspbuilder_clock_GNQFU4PUDH;

	component alt_dspbuilder_port_GN37ALZBS4 is
		port (
			input  : in  std_logic := 'X'; -- wire
			output : out std_logic         -- wire
		);
	end component alt_dspbuilder_port_GN37ALZBS4;

	component gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator is
		port (
			data_34    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_41    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_33    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_30    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_20    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_21    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_10    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			Clock      : in  std_logic                     := 'X';             -- clk
			reset      : in  std_logic                     := 'X';             -- reset
			data_44    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_24    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_00    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_22    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_23    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_04    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_40    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_31    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_13    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_12    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			pixel_diff : out std_logic_vector(9 downto 0);                     -- wire
			pixel_out  : out std_logic_vector(23 downto 0);                    -- wire
			data_03    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_02    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_14    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_32    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			clken      : in  std_logic                     := 'X';             -- wire
			data_43    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_42    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_11    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- wire
			data_01    : in  std_logic_vector(7 downto 0)  := (others => 'X')  -- wire
		);
	end component gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator;

	component alt_dspbuilder_port_GNA5S4SQDN is
		port (
			input  : in  std_logic_vector(7 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(7 downto 0)                     -- wire
		);
	end component alt_dspbuilder_port_GNA5S4SQDN;

	component alt_dspbuilder_port_GNSSYS4J5R is
		port (
			input  : in  std_logic_vector(9 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(9 downto 0)                     -- wire
		);
	end component alt_dspbuilder_port_GNSSYS4J5R;

	component gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_1_generate_signals is
		port (
			valid_out : out std_logic;        -- wire
			valid_in  : in  std_logic := 'X'; -- wire
			eof_in    : in  std_logic := 'X'; -- wire
			sof_in    : in  std_logic := 'X'; -- wire
			Clock     : in  std_logic := 'X'; -- clk
			reset     : in  std_logic := 'X'; -- reset
			sof_out   : out std_logic;        -- wire
			eof_out   : out std_logic         -- wire
		);
	end component gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_1_generate_signals;

	component gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_1_line_buffer is
		port (
			data_42 : out std_logic_vector(7 downto 0);                    -- wire
			data_in : in  std_logic_vector(7 downto 0) := (others => 'X'); -- wire
			data_10 : out std_logic_vector(7 downto 0);                    -- wire
			data_14 : out std_logic_vector(7 downto 0);                    -- wire
			data_20 : out std_logic_vector(7 downto 0);                    -- wire
			data_23 : out std_logic_vector(7 downto 0);                    -- wire
			data_43 : out std_logic_vector(7 downto 0);                    -- wire
			data_04 : out std_logic_vector(7 downto 0);                    -- wire
			data_44 : out std_logic_vector(7 downto 0);                    -- wire
			data_40 : out std_logic_vector(7 downto 0);                    -- wire
			data_00 : out std_logic_vector(7 downto 0);                    -- wire
			data_22 : out std_logic_vector(7 downto 0);                    -- wire
			data_34 : out std_logic_vector(7 downto 0);                    -- wire
			data_31 : out std_logic_vector(7 downto 0);                    -- wire
			data_11 : out std_logic_vector(7 downto 0);                    -- wire
			data_12 : out std_logic_vector(7 downto 0);                    -- wire
			data_33 : out std_logic_vector(7 downto 0);                    -- wire
			data_41 : out std_logic_vector(7 downto 0);                    -- wire
			Clock   : in  std_logic                    := 'X';             -- clk
			reset   : in  std_logic                    := 'X';             -- reset
			data_03 : out std_logic_vector(7 downto 0);                    -- wire
			data_30 : out std_logic_vector(7 downto 0);                    -- wire
			data_21 : out std_logic_vector(7 downto 0);                    -- wire
			data_01 : out std_logic_vector(7 downto 0);                    -- wire
			data_02 : out std_logic_vector(7 downto 0);                    -- wire
			data_13 : out std_logic_vector(7 downto 0);                    -- wire
			clken   : in  std_logic                    := 'X';             -- wire
			data_24 : out std_logic_vector(7 downto 0);                    -- wire
			data_32 : out std_logic_vector(7 downto 0)                     -- wire
		);
	end component gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_1_line_buffer;

	component alt_dspbuilder_memdelay_GN7KC3ZSDB is
		generic (
			RAMTYPE : string   := "AUTO";
			WIDTH   : positive := 8;
			DELAY   : positive := 1
		);
		port (
			aclr      : in  std_logic                          := 'X';             -- clk
			clock     : in  std_logic                          := 'X';             -- clk
			ena       : in  std_logic                          := 'X';             -- wire
			input     : in  std_logic_vector(WIDTH-1 downto 0) := (others => 'X'); -- wire
			output    : out std_logic_vector(WIDTH-1 downto 0);                    -- wire
			user_aclr : in  std_logic                          := 'X'              -- wire
		);
	end component alt_dspbuilder_memdelay_GN7KC3ZSDB;

	component alt_dspbuilder_gnd_GN is
		port (
			output : out std_logic   -- wire
		);
	end component alt_dspbuilder_gnd_GN;

	component alt_dspbuilder_round_GNDZO35HDL is
		generic (
			OUT_WIDTH_g     : natural := 6;
			IN_WIDTH_g      : natural := 8;
			PIPELINE_g      : natural := 0;
			ROUNDING_TYPE_g : string  := "TRUNCATE_LOW";
			SIGNED_g        : natural := 1
		);
		port (
			clk       : in  std_logic                     := 'X';             -- clk
			reset     : in  std_logic                     := 'X';             -- wire
			datain    : in  std_logic_vector(23 downto 0) := (others => 'X'); -- wire
			dataout   : out std_logic_vector(7 downto 0);                     -- wire
			ena       : in  std_logic                     := 'X';             -- wire
			user_aclr : in  std_logic                     := 'X'              -- wire
		);
	end component alt_dspbuilder_round_GNDZO35HDL;

	component alt_dspbuilder_vcc_GN is
		port (
			output : out std_logic   -- wire
		);
	end component alt_dspbuilder_vcc_GN;

	signal memory_delayuser_aclrgnd_output_wire                                        : std_logic;                     -- Memory_Delayuser_aclrGND:output -> Memory_Delay:user_aclr
	signal rounduser_aclrgnd_output_wire                                               : std_logic;                     -- Rounduser_aclrGND:output -> Round:user_aclr
	signal roundenavcc_output_wire                                                     : std_logic;                     -- RoundenaVCC:output -> Round:ena
	signal roundresetgnd_output_wire                                                   : std_logic;                     -- RoundresetGND:output -> Round:reset
	signal valid_in_0_output_wire                                                      : std_logic;                     -- valid_in_0:output -> [Memory_Delay:ena, gaussian_ip_Fusion_Decomposition_1_generate_signals_0:valid_in, gaussian_ip_Fusion_Decomposition_1_line_buffer_0:clken, gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:clken]
	signal round_dataout_wire                                                          : std_logic_vector(7 downto 0);  -- Round:dataout -> Memory_Delay:input
	signal sof_in_0_output_wire                                                        : std_logic;                     -- sof_in_0:output -> gaussian_ip_Fusion_Decomposition_1_generate_signals_0:sof_in
	signal eof_in_0_output_wire                                                        : std_logic;                     -- eof_in_0:output -> gaussian_ip_Fusion_Decomposition_1_generate_signals_0:eof_in
	signal pixel_in_0_output_wire                                                      : std_logic_vector(7 downto 0);  -- pixel_in_0:output -> gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_in
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_00_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_00 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_00
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_01_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_01 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_01
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_02_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_02 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_02
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_03_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_03 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_03
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_04_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_04 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_04
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_10_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_10 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_10
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_11_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_11 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_11
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_12_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_12 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_12
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_13_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_13 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_13
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_14_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_14 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_14
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_20_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_20 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_20
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_21_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_21 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_21
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_22_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_22 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_22
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_23_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_23 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_23
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_24_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_24 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_24
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_30_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_30 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_30
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_31_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_31 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_31
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_32_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_32 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_32
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_33_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_33 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_33
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_34_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_34 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_34
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_40_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_40 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_40
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_41_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_41 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_41
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_42_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_42 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_42
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_43_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_43 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_43
	signal gaussian_ip_fusion_decomposition_1_line_buffer_0_data_44_wire               : std_logic_vector(7 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_line_buffer_0:data_44 -> gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:data_44
	signal gaussian_ip_fusion_decomposition_1_multiplier_accumulator_0_pixel_out_wire  : std_logic_vector(23 downto 0); -- gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:pixel_out -> Round:datain
	signal memory_delay_output_wire                                                    : std_logic_vector(7 downto 0);  -- Memory_Delay:output -> pixel_out_0:input
	signal gaussian_ip_fusion_decomposition_1_multiplier_accumulator_0_pixel_diff_wire : std_logic_vector(9 downto 0);  -- gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:pixel_diff -> diff_out_0:input
	signal gaussian_ip_fusion_decomposition_1_generate_signals_0_valid_out_wire        : std_logic;                     -- gaussian_ip_Fusion_Decomposition_1_generate_signals_0:valid_out -> valid_out_0:input
	signal gaussian_ip_fusion_decomposition_1_generate_signals_0_sof_out_wire          : std_logic;                     -- gaussian_ip_Fusion_Decomposition_1_generate_signals_0:sof_out -> sof_out_0:input
	signal gaussian_ip_fusion_decomposition_1_generate_signals_0_eof_out_wire          : std_logic;                     -- gaussian_ip_Fusion_Decomposition_1_generate_signals_0:eof_out -> eof_out_0:input
	signal clock_0_clock_output_clk                                                    : std_logic;                     -- Clock_0:clock_out -> [Memory_Delay:clock, Round:clk, gaussian_ip_Fusion_Decomposition_1_generate_signals_0:Clock, gaussian_ip_Fusion_Decomposition_1_line_buffer_0:Clock, gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:Clock]
	signal clock_0_clock_output_reset                                                  : std_logic;                     -- Clock_0:aclr_out -> [Memory_Delay:aclr, Round:reset, gaussian_ip_Fusion_Decomposition_1_generate_signals_0:reset, gaussian_ip_Fusion_Decomposition_1_line_buffer_0:reset, gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator_0:reset]

begin

	clock_0 : component alt_dspbuilder_clock_GNQFU4PUDH
		port map (
			clock_out => clock_0_clock_output_clk,   -- clock_output.clk
			aclr_out  => clock_0_clock_output_reset, --             .reset
			clock     => Clock,                      --        clock.clk
			aclr      => reset                       --             .reset
		);

	valid_in_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => valid_in,               --  input.wire
			output => valid_in_0_output_wire  -- output.wire
		);

	eof_out_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => gaussian_ip_fusion_decomposition_1_generate_signals_0_eof_out_wire, --  input.wire
			output => eof_out                                                             -- output.wire
		);

	gaussian_ip_fusion_decomposition_1_multiplier_accumulator_0 : component gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_1_multiplier_accumulator
		port map (
			data_34    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_34_wire,               --    data_34.wire
			data_41    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_41_wire,               --    data_41.wire
			data_33    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_33_wire,               --    data_33.wire
			data_30    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_30_wire,               --    data_30.wire
			data_20    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_20_wire,               --    data_20.wire
			data_21    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_21_wire,               --    data_21.wire
			data_10    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_10_wire,               --    data_10.wire
			Clock      => clock_0_clock_output_clk,                                                    --      Clock.clk
			reset      => clock_0_clock_output_reset,                                                  --           .reset
			data_44    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_44_wire,               --    data_44.wire
			data_24    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_24_wire,               --    data_24.wire
			data_00    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_00_wire,               --    data_00.wire
			data_22    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_22_wire,               --    data_22.wire
			data_23    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_23_wire,               --    data_23.wire
			data_04    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_04_wire,               --    data_04.wire
			data_40    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_40_wire,               --    data_40.wire
			data_31    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_31_wire,               --    data_31.wire
			data_13    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_13_wire,               --    data_13.wire
			data_12    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_12_wire,               --    data_12.wire
			pixel_diff => gaussian_ip_fusion_decomposition_1_multiplier_accumulator_0_pixel_diff_wire, -- pixel_diff.wire
			pixel_out  => gaussian_ip_fusion_decomposition_1_multiplier_accumulator_0_pixel_out_wire,  --  pixel_out.wire
			data_03    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_03_wire,               --    data_03.wire
			data_02    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_02_wire,               --    data_02.wire
			data_14    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_14_wire,               --    data_14.wire
			data_32    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_32_wire,               --    data_32.wire
			clken      => valid_in_0_output_wire,                                                      --      clken.wire
			data_43    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_43_wire,               --    data_43.wire
			data_42    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_42_wire,               --    data_42.wire
			data_11    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_11_wire,               --    data_11.wire
			data_01    => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_01_wire                --    data_01.wire
		);

	pixel_in_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => pixel_in,               --  input.wire
			output => pixel_in_0_output_wire  -- output.wire
		);

	diff_out_0 : component alt_dspbuilder_port_GNSSYS4J5R
		port map (
			input  => gaussian_ip_fusion_decomposition_1_multiplier_accumulator_0_pixel_diff_wire, --  input.wire
			output => diff_out                                                                     -- output.wire
		);

	gaussian_ip_fusion_decomposition_1_generate_signals_0 : component gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_1_generate_signals
		port map (
			valid_out => gaussian_ip_fusion_decomposition_1_generate_signals_0_valid_out_wire, -- valid_out.wire
			valid_in  => valid_in_0_output_wire,                                               --  valid_in.wire
			eof_in    => eof_in_0_output_wire,                                                 --    eof_in.wire
			sof_in    => sof_in_0_output_wire,                                                 --    sof_in.wire
			Clock     => clock_0_clock_output_clk,                                             --     Clock.clk
			reset     => clock_0_clock_output_reset,                                           --          .reset
			sof_out   => gaussian_ip_fusion_decomposition_1_generate_signals_0_sof_out_wire,   --   sof_out.wire
			eof_out   => gaussian_ip_fusion_decomposition_1_generate_signals_0_eof_out_wire    --   eof_out.wire
		);

	eof_in_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => eof_in,               --  input.wire
			output => eof_in_0_output_wire  -- output.wire
		);

	gaussian_ip_fusion_decomposition_1_line_buffer_0 : component gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_1_line_buffer
		port map (
			data_42 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_42_wire, -- data_42.wire
			data_in => pixel_in_0_output_wire,                                        -- data_in.wire
			data_10 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_10_wire, -- data_10.wire
			data_14 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_14_wire, -- data_14.wire
			data_20 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_20_wire, -- data_20.wire
			data_23 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_23_wire, -- data_23.wire
			data_43 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_43_wire, -- data_43.wire
			data_04 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_04_wire, -- data_04.wire
			data_44 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_44_wire, -- data_44.wire
			data_40 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_40_wire, -- data_40.wire
			data_00 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_00_wire, -- data_00.wire
			data_22 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_22_wire, -- data_22.wire
			data_34 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_34_wire, -- data_34.wire
			data_31 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_31_wire, -- data_31.wire
			data_11 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_11_wire, -- data_11.wire
			data_12 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_12_wire, -- data_12.wire
			data_33 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_33_wire, -- data_33.wire
			data_41 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_41_wire, -- data_41.wire
			Clock   => clock_0_clock_output_clk,                                      --   Clock.clk
			reset   => clock_0_clock_output_reset,                                    --        .reset
			data_03 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_03_wire, -- data_03.wire
			data_30 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_30_wire, -- data_30.wire
			data_21 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_21_wire, -- data_21.wire
			data_01 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_01_wire, -- data_01.wire
			data_02 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_02_wire, -- data_02.wire
			data_13 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_13_wire, -- data_13.wire
			clken   => valid_in_0_output_wire,                                        --   clken.wire
			data_24 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_24_wire, -- data_24.wire
			data_32 => gaussian_ip_fusion_decomposition_1_line_buffer_0_data_32_wire  -- data_32.wire
		);

	valid_out_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => gaussian_ip_fusion_decomposition_1_generate_signals_0_valid_out_wire, --  input.wire
			output => valid_out                                                             -- output.wire
		);

	sof_in_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => sof_in,               --  input.wire
			output => sof_in_0_output_wire  -- output.wire
		);

	memory_delay : component alt_dspbuilder_memdelay_GN7KC3ZSDB
		generic map (
			RAMTYPE => "AUTO",
			WIDTH   => 8,
			DELAY   => 1
		)
		port map (
			clock     => clock_0_clock_output_clk,             -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,           --           .reset
			input     => round_dataout_wire,                   --      input.wire
			output    => memory_delay_output_wire,             --     output.wire
			user_aclr => memory_delayuser_aclrgnd_output_wire, --  user_aclr.wire
			ena       => valid_in_0_output_wire                --        ena.wire
		);

	memory_delayuser_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => memory_delayuser_aclrgnd_output_wire  -- output.wire
		);

	round : component alt_dspbuilder_round_GNDZO35HDL
		generic map (
			OUT_WIDTH_g     => 8,
			IN_WIDTH_g      => 24,
			PIPELINE_g      => 0,
			ROUNDING_TYPE_g => "ROUND_UP",
			SIGNED_g        => 0
		)
		port map (
			clk       => clock_0_clock_output_clk,                                                   -- clk_reset.clk
			reset     => clock_0_clock_output_reset,                                                 --          .reset
			datain    => gaussian_ip_fusion_decomposition_1_multiplier_accumulator_0_pixel_out_wire, --    datain.wire
			dataout   => round_dataout_wire,                                                         --   dataout.wire
			ena       => roundenavcc_output_wire,                                                    --       ena.wire
			user_aclr => rounduser_aclrgnd_output_wire                                               -- user_aclr.wire
		);

	rounduser_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => rounduser_aclrgnd_output_wire  -- output.wire
		);

	roundenavcc : component alt_dspbuilder_vcc_GN
		port map (
			output => roundenavcc_output_wire  -- output.wire
		);

	roundresetgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => roundresetgnd_output_wire  -- output.wire
		);

	sof_out_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => gaussian_ip_fusion_decomposition_1_generate_signals_0_sof_out_wire, --  input.wire
			output => sof_out                                                             -- output.wire
		);

	pixel_out_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => memory_delay_output_wire, --  input.wire
			output => pixel_out                 -- output.wire
		);

end architecture rtl; -- of gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_1
