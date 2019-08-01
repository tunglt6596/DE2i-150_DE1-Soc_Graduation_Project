-- localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_2_Cal_MeanG_multiplier_accumulator.vhd

-- Generated using ACDS version 17.1 590

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_2_Cal_MeanG_multiplier_accumulator is
	port (
		data_10 : in  std_logic_vector(10 downto 0) := (others => '0'); -- data_10.wire
		data_12 : in  std_logic_vector(10 downto 0) := (others => '0'); -- data_12.wire
		clken   : in  std_logic                     := '0';             --   clken.wire
		data_11 : in  std_logic_vector(10 downto 0) := (others => '0'); -- data_11.wire
		data_22 : in  std_logic_vector(10 downto 0) := (others => '0'); -- data_22.wire
		data_20 : in  std_logic_vector(10 downto 0) := (others => '0'); -- data_20.wire
		mean    : out std_logic_vector(34 downto 0);                    --    mean.wire
		Clock   : in  std_logic                     := '0';             --   Clock.clk
		reset   : in  std_logic                     := '0';             --        .reset
		data_00 : in  std_logic_vector(10 downto 0) := (others => '0'); -- data_00.wire
		data_02 : in  std_logic_vector(10 downto 0) := (others => '0'); -- data_02.wire
		data_21 : in  std_logic_vector(10 downto 0) := (others => '0'); -- data_21.wire
		data_01 : in  std_logic_vector(10 downto 0) := (others => '0')  -- data_01.wire
	);
end entity localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_2_Cal_MeanG_multiplier_accumulator;

architecture rtl of localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_2_Cal_MeanG_multiplier_accumulator is
	component alt_dspbuilder_clock_GNQFU4PUDH is
		port (
			aclr      : in  std_logic := 'X'; -- reset
			aclr_n    : in  std_logic := 'X'; -- reset_n
			aclr_out  : out std_logic;        -- reset
			clock     : in  std_logic := 'X'; -- clk
			clock_out : out std_logic         -- clk
		);
	end component alt_dspbuilder_clock_GNQFU4PUDH;

	component alt_dspbuilder_multiplier_GN4LMOW2WU is
		generic (
			aWidth                         : natural := 8;
			Signed                         : natural := 0;
			bWidth                         : natural := 8;
			DEDICATED_MULTIPLIER_CIRCUITRY : string  := "AUTO";
			pipeline                       : integer := 0;
			OutputLsb                      : integer := 0;
			OutputMsb                      : integer := 8
		);
		port (
			aclr      : in  std_logic                                          := 'X';             -- clk
			clock     : in  std_logic                                          := 'X';             -- clk
			dataa     : in  std_logic_vector(aWidth-1 downto 0)                := (others => 'X'); -- wire
			datab     : in  std_logic_vector(bWidth-1 downto 0)                := (others => 'X'); -- wire
			ena       : in  std_logic                                          := 'X';             -- wire
			result    : out std_logic_vector(OutputMsb-OutputLsb+1-1 downto 0);                    -- wire
			user_aclr : in  std_logic                                          := 'X'              -- wire
		);
	end component alt_dspbuilder_multiplier_GN4LMOW2WU;

	component alt_dspbuilder_gnd_GN is
		port (
			output : out std_logic   -- wire
		);
	end component alt_dspbuilder_gnd_GN;

	component alt_dspbuilder_parallel_adder_GNDV6TKE3O is
		generic (
			dataWidth     : positive := 8;
			direction     : string   := "+";
			MaskValue     : string   := "1";
			pipeline      : natural  := 0;
			number_inputs : positive := 2
		);
		port (
			clock     : in  std_logic                     := 'X';             -- clk
			aclr      : in  std_logic                     := 'X';             -- reset
			result    : out std_logic_vector(15 downto 0);                    -- wire
			user_aclr : in  std_logic                     := 'X';             -- wire
			ena       : in  std_logic                     := 'X';             -- wire
			data0     : in  std_logic_vector(11 downto 0) := (others => 'X'); -- wire
			data1     : in  std_logic_vector(11 downto 0) := (others => 'X'); -- wire
			data2     : in  std_logic_vector(11 downto 0) := (others => 'X'); -- wire
			data3     : in  std_logic_vector(11 downto 0) := (others => 'X'); -- wire
			data4     : in  std_logic_vector(11 downto 0) := (others => 'X'); -- wire
			data5     : in  std_logic_vector(11 downto 0) := (others => 'X'); -- wire
			data6     : in  std_logic_vector(11 downto 0) := (others => 'X'); -- wire
			data7     : in  std_logic_vector(11 downto 0) := (others => 'X'); -- wire
			data8     : in  std_logic_vector(11 downto 0) := (others => 'X')  -- wire
		);
	end component alt_dspbuilder_parallel_adder_GNDV6TKE3O;

	component alt_dspbuilder_constant_GNUTAAMD7E is
		generic (
			BitPattern : string  := "0000";
			HDLTYPE    : string  := "STD_LOGIC_VECTOR";
			width      : natural := 4
		);
		port (
			output : out std_logic_vector(23 downto 0)   -- wire
		);
	end component alt_dspbuilder_constant_GNUTAAMD7E;

	component alt_dspbuilder_port_GN37ALZBS4 is
		port (
			input  : in  std_logic := 'X'; -- wire
			output : out std_logic         -- wire
		);
	end component alt_dspbuilder_port_GN37ALZBS4;

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

	component alt_dspbuilder_cast_GNKMAYNGZH is
		generic (
			round    : natural := 0;
			saturate : natural := 0
		);
		port (
			input  : in  std_logic_vector(15 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(14 downto 0)                     -- wire
		);
	end component alt_dspbuilder_cast_GNKMAYNGZH;

	component alt_dspbuilder_cast_GNZZO4R4AV is
		generic (
			round    : natural := 0;
			saturate : natural := 0
		);
		port (
			input  : in  std_logic_vector(10 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(11 downto 0)                     -- wire
		);
	end component alt_dspbuilder_cast_GNZZO4R4AV;

	signal multiplier2user_aclrgnd_output_wire               : std_logic;                     -- Multiplier2user_aclrGND:output -> Multiplier2:user_aclr
	signal parallel_adder_subtractoruser_aclrgnd_output_wire : std_logic;                     -- Parallel_Adder_Subtractoruser_aclrGND:output -> Parallel_Adder_Subtractor:user_aclr
	signal constant2_output_wire                             : std_logic_vector(23 downto 0); -- Constant2:output -> Multiplier2:datab
	signal clken_0_output_wire                               : std_logic;                     -- clken_0:output -> [Multiplier2:ena, Parallel_Adder_Subtractor:ena]
	signal multiplier2_result_wire                           : std_logic_vector(34 downto 0); -- Multiplier2:result -> mean_0:input
	signal parallel_adder_subtractor_result_wire             : std_logic_vector(15 downto 0); -- Parallel_Adder_Subtractor:result -> cast82:input
	signal cast82_output_wire                                : std_logic_vector(14 downto 0); -- cast82:output -> Multiplier2:dataa
	signal data_00_0_output_wire                             : std_logic_vector(10 downto 0); -- data_00_0:output -> cast83:input
	signal cast83_output_wire                                : std_logic_vector(11 downto 0); -- cast83:output -> Parallel_Adder_Subtractor:data0
	signal data_01_0_output_wire                             : std_logic_vector(10 downto 0); -- data_01_0:output -> cast84:input
	signal cast84_output_wire                                : std_logic_vector(11 downto 0); -- cast84:output -> Parallel_Adder_Subtractor:data1
	signal data_02_0_output_wire                             : std_logic_vector(10 downto 0); -- data_02_0:output -> cast85:input
	signal cast85_output_wire                                : std_logic_vector(11 downto 0); -- cast85:output -> Parallel_Adder_Subtractor:data2
	signal data_10_0_output_wire                             : std_logic_vector(10 downto 0); -- data_10_0:output -> cast86:input
	signal cast86_output_wire                                : std_logic_vector(11 downto 0); -- cast86:output -> Parallel_Adder_Subtractor:data3
	signal data_11_0_output_wire                             : std_logic_vector(10 downto 0); -- data_11_0:output -> cast87:input
	signal cast87_output_wire                                : std_logic_vector(11 downto 0); -- cast87:output -> Parallel_Adder_Subtractor:data4
	signal data_12_0_output_wire                             : std_logic_vector(10 downto 0); -- data_12_0:output -> cast88:input
	signal cast88_output_wire                                : std_logic_vector(11 downto 0); -- cast88:output -> Parallel_Adder_Subtractor:data5
	signal data_20_0_output_wire                             : std_logic_vector(10 downto 0); -- data_20_0:output -> cast89:input
	signal cast89_output_wire                                : std_logic_vector(11 downto 0); -- cast89:output -> Parallel_Adder_Subtractor:data6
	signal data_21_0_output_wire                             : std_logic_vector(10 downto 0); -- data_21_0:output -> cast90:input
	signal cast90_output_wire                                : std_logic_vector(11 downto 0); -- cast90:output -> Parallel_Adder_Subtractor:data7
	signal data_22_0_output_wire                             : std_logic_vector(10 downto 0); -- data_22_0:output -> cast91:input
	signal cast91_output_wire                                : std_logic_vector(11 downto 0); -- cast91:output -> Parallel_Adder_Subtractor:data8
	signal clock_0_clock_output_clk                          : std_logic;                     -- Clock_0:clock_out -> [Multiplier2:clock, Parallel_Adder_Subtractor:clock]
	signal clock_0_clock_output_reset                        : std_logic;                     -- Clock_0:aclr_out -> [Multiplier2:aclr, Parallel_Adder_Subtractor:aclr]

begin

	clock_0 : component alt_dspbuilder_clock_GNQFU4PUDH
		port map (
			clock_out => clock_0_clock_output_clk,   -- clock_output.clk
			aclr_out  => clock_0_clock_output_reset, --             .reset
			clock     => Clock,                      --        clock.clk
			aclr      => reset                       --             .reset
		);

	multiplier2 : component alt_dspbuilder_multiplier_GN4LMOW2WU
		generic map (
			aWidth                         => 15,
			Signed                         => 0,
			bWidth                         => 24,
			DEDICATED_MULTIPLIER_CIRCUITRY => "YES",
			pipeline                       => 1,
			OutputLsb                      => 0,
			OutputMsb                      => 34
		)
		port map (
			clock     => clock_0_clock_output_clk,            -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,          --           .reset
			dataa     => cast82_output_wire,                  --      dataa.wire
			datab     => constant2_output_wire,               --      datab.wire
			result    => multiplier2_result_wire,             --     result.wire
			user_aclr => multiplier2user_aclrgnd_output_wire, --  user_aclr.wire
			ena       => clken_0_output_wire                  --        ena.wire
		);

	multiplier2user_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => multiplier2user_aclrgnd_output_wire  -- output.wire
		);

	parallel_adder_subtractor : component alt_dspbuilder_parallel_adder_GNDV6TKE3O
		generic map (
			dataWidth     => 12,
			direction     => "+",
			MaskValue     => "1",
			pipeline      => 1,
			number_inputs => 9
		)
		port map (
			clock     => clock_0_clock_output_clk,                          -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,                        --           .reset
			result    => parallel_adder_subtractor_result_wire,             --     result.wire
			user_aclr => parallel_adder_subtractoruser_aclrgnd_output_wire, --  user_aclr.wire
			ena       => clken_0_output_wire,                               --        ena.wire
			data0     => cast83_output_wire,                                --      data0.wire
			data1     => cast84_output_wire,                                --      data1.wire
			data2     => cast85_output_wire,                                --      data2.wire
			data3     => cast86_output_wire,                                --      data3.wire
			data4     => cast87_output_wire,                                --      data4.wire
			data5     => cast88_output_wire,                                --      data5.wire
			data6     => cast89_output_wire,                                --      data6.wire
			data7     => cast90_output_wire,                                --      data7.wire
			data8     => cast91_output_wire                                 --      data8.wire
		);

	parallel_adder_subtractoruser_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => parallel_adder_subtractoruser_aclrgnd_output_wire  -- output.wire
		);

	constant2 : component alt_dspbuilder_constant_GNUTAAMD7E
		generic map (
			BitPattern => "000111000111000111000111",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 24
		)
		port map (
			output => constant2_output_wire  -- output.wire
		);

	clken_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => clken,               --  input.wire
			output => clken_0_output_wire  -- output.wire
		);

	data_00_0 : component alt_dspbuilder_port_GNLA26EJAH
		port map (
			input  => data_00,               --  input.wire
			output => data_00_0_output_wire  -- output.wire
		);

	data_11_0 : component alt_dspbuilder_port_GNLA26EJAH
		port map (
			input  => data_11,               --  input.wire
			output => data_11_0_output_wire  -- output.wire
		);

	data_22_0 : component alt_dspbuilder_port_GNLA26EJAH
		port map (
			input  => data_22,               --  input.wire
			output => data_22_0_output_wire  -- output.wire
		);

	data_10_0 : component alt_dspbuilder_port_GNLA26EJAH
		port map (
			input  => data_10,               --  input.wire
			output => data_10_0_output_wire  -- output.wire
		);

	data_21_0 : component alt_dspbuilder_port_GNLA26EJAH
		port map (
			input  => data_21,               --  input.wire
			output => data_21_0_output_wire  -- output.wire
		);

	data_02_0 : component alt_dspbuilder_port_GNLA26EJAH
		port map (
			input  => data_02,               --  input.wire
			output => data_02_0_output_wire  -- output.wire
		);

	data_01_0 : component alt_dspbuilder_port_GNLA26EJAH
		port map (
			input  => data_01,               --  input.wire
			output => data_01_0_output_wire  -- output.wire
		);

	data_12_0 : component alt_dspbuilder_port_GNLA26EJAH
		port map (
			input  => data_12,               --  input.wire
			output => data_12_0_output_wire  -- output.wire
		);

	data_20_0 : component alt_dspbuilder_port_GNLA26EJAH
		port map (
			input  => data_20,               --  input.wire
			output => data_20_0_output_wire  -- output.wire
		);

	mean_0 : component alt_dspbuilder_port_GNH2FMNPFF
		port map (
			input  => multiplier2_result_wire, --  input.wire
			output => mean                     -- output.wire
		);

	cast82 : component alt_dspbuilder_cast_GNKMAYNGZH
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => parallel_adder_subtractor_result_wire, --  input.wire
			output => cast82_output_wire                     -- output.wire
		);

	cast83 : component alt_dspbuilder_cast_GNZZO4R4AV
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => data_00_0_output_wire, --  input.wire
			output => cast83_output_wire     -- output.wire
		);

	cast84 : component alt_dspbuilder_cast_GNZZO4R4AV
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => data_01_0_output_wire, --  input.wire
			output => cast84_output_wire     -- output.wire
		);

	cast85 : component alt_dspbuilder_cast_GNZZO4R4AV
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => data_02_0_output_wire, --  input.wire
			output => cast85_output_wire     -- output.wire
		);

	cast86 : component alt_dspbuilder_cast_GNZZO4R4AV
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => data_10_0_output_wire, --  input.wire
			output => cast86_output_wire     -- output.wire
		);

	cast87 : component alt_dspbuilder_cast_GNZZO4R4AV
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => data_11_0_output_wire, --  input.wire
			output => cast87_output_wire     -- output.wire
		);

	cast88 : component alt_dspbuilder_cast_GNZZO4R4AV
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => data_12_0_output_wire, --  input.wire
			output => cast88_output_wire     -- output.wire
		);

	cast89 : component alt_dspbuilder_cast_GNZZO4R4AV
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => data_20_0_output_wire, --  input.wire
			output => cast89_output_wire     -- output.wire
		);

	cast90 : component alt_dspbuilder_cast_GNZZO4R4AV
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => data_21_0_output_wire, --  input.wire
			output => cast90_output_wire     -- output.wire
		);

	cast91 : component alt_dspbuilder_cast_GNZZO4R4AV
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => data_22_0_output_wire, --  input.wire
			output => cast91_output_wire     -- output.wire
		);

end architecture rtl; -- of localedgepreserve_GN_localedgepreserve_Fusion_Cal_A_B_2_Cal_MeanG_multiplier_accumulator
