-- localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_1_multiplier_accumulator1.vhd

-- Generated using ACDS version 17.1 590

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_1_multiplier_accumulator1 is
	port (
		grad_y  : out std_logic_vector(12 downto 0);                    --  grad_y.wire
		data_12 : in  std_logic_vector(7 downto 0)  := (others => '0'); -- data_12.wire
		data_10 : in  std_logic_vector(7 downto 0)  := (others => '0'); -- data_10.wire
		data_02 : in  std_logic_vector(7 downto 0)  := (others => '0'); -- data_02.wire
		Clock   : in  std_logic                     := '0';             --   Clock.clk
		reset   : in  std_logic                     := '0';             --        .reset
		data_20 : in  std_logic_vector(7 downto 0)  := (others => '0'); -- data_20.wire
		clken   : in  std_logic                     := '0';             --   clken.wire
		data_22 : in  std_logic_vector(7 downto 0)  := (others => '0'); -- data_22.wire
		data_00 : in  std_logic_vector(7 downto 0)  := (others => '0')  -- data_00.wire
	);
end entity localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_1_multiplier_accumulator1;

architecture rtl of localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_1_multiplier_accumulator1 is
	component alt_dspbuilder_clock_GNQFU4PUDH is
		port (
			aclr      : in  std_logic := 'X'; -- reset
			aclr_n    : in  std_logic := 'X'; -- reset_n
			aclr_out  : out std_logic;        -- reset
			clock     : in  std_logic := 'X'; -- clk
			clock_out : out std_logic         -- clk
		);
	end component alt_dspbuilder_clock_GNQFU4PUDH;

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

	component alt_dspbuilder_gnd_GN is
		port (
			output : out std_logic   -- wire
		);
	end component alt_dspbuilder_gnd_GN;

	component alt_dspbuilder_port_GNA5S4SQDN is
		port (
			input  : in  std_logic_vector(7 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(7 downto 0)                     -- wire
		);
	end component alt_dspbuilder_port_GNA5S4SQDN;

	component alt_dspbuilder_pipelined_adder_GN4HTUTWRG is
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
	end component alt_dspbuilder_pipelined_adder_GN4HTUTWRG;

	component alt_dspbuilder_delay_GNAM6PTFR4 is
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
	end component alt_dspbuilder_delay_GNAM6PTFR4;

	component alt_dspbuilder_parallel_adder_GNNQ3FWLTP is
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
			result    : out std_logic_vector(12 downto 0);                    -- wire
			user_aclr : in  std_logic                     := 'X';             -- wire
			ena       : in  std_logic                     := 'X';             -- wire
			data0     : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- wire
			data1     : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- wire
			data2     : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- wire
			data3     : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- wire
			data4     : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- wire
			data5     : in  std_logic_vector(9 downto 0)  := (others => 'X')  -- wire
		);
	end component alt_dspbuilder_parallel_adder_GNNQ3FWLTP;

	component alt_dspbuilder_constant_GN6SFEINY6 is
		generic (
			BitPattern : string  := "0000";
			HDLTYPE    : string  := "STD_LOGIC_VECTOR";
			width      : natural := 4
		);
		port (
			output : out std_logic_vector(1 downto 0)   -- wire
		);
	end component alt_dspbuilder_constant_GN6SFEINY6;

	component alt_dspbuilder_port_GN37ALZBS4 is
		port (
			input  : in  std_logic := 'X'; -- wire
			output : out std_logic         -- wire
		);
	end component alt_dspbuilder_port_GN37ALZBS4;

	component alt_dspbuilder_bus_concat_GNKLOJ6ING is
		generic (
			widthA : natural := 8;
			widthB : natural := 8
		);
		port (
			a      : in  std_logic_vector(widthA-1 downto 0)        := (others => 'X'); -- wire
			aclr   : in  std_logic                                  := 'X';             -- clk
			b      : in  std_logic_vector(widthB-1 downto 0)        := (others => 'X'); -- wire
			clock  : in  std_logic                                  := 'X';             -- clk
			output : out std_logic_vector(widthA+widthB-1 downto 0)                     -- wire
		);
	end component alt_dspbuilder_bus_concat_GNKLOJ6ING;

	component alt_dspbuilder_constant_GNTHQFUUUC is
		generic (
			BitPattern : string  := "0000";
			HDLTYPE    : string  := "STD_LOGIC_VECTOR";
			width      : natural := 4
		);
		port (
			output : out std_logic_vector(9 downto 0)   -- wire
		);
	end component alt_dspbuilder_constant_GNTHQFUUUC;

	component alt_dspbuilder_logical_bus_op_GNAIUQX2FS is
		generic (
			logical_op       : string   := "AltAND";
			lpm_width        : positive := 8;
			shift_amount     : natural  := 3;
			mask_value       : string   := "10101010";
			signextendrshift : natural  := 1
		);
		port (
			dataa  : in  std_logic_vector(lpm_width-1 downto 0) := (others => 'X'); -- wire
			result : out std_logic_vector(lpm_width-1 downto 0)                     -- wire
		);
	end component alt_dspbuilder_logical_bus_op_GNAIUQX2FS;

	component alt_dspbuilder_logical_bus_op_GNZIK3BHQU is
		generic (
			logical_op       : string   := "AltAND";
			lpm_width        : positive := 8;
			shift_amount     : natural  := 3;
			mask_value       : string   := "10101010";
			signextendrshift : natural  := 1
		);
		port (
			dataa  : in  std_logic_vector(lpm_width-1 downto 0) := (others => 'X'); -- wire
			result : out std_logic_vector(lpm_width-1 downto 0)                     -- wire
		);
	end component alt_dspbuilder_logical_bus_op_GNZIK3BHQU;

	component alt_dspbuilder_port_GNKZFR37ZH is
		port (
			input  : in  std_logic_vector(12 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(12 downto 0)                     -- wire
		);
	end component alt_dspbuilder_port_GNKZFR37ZH;

	component alt_dspbuilder_cast_GNBZR5PMEK is
		generic (
			round    : natural := 0;
			saturate : natural := 0
		);
		port (
			input  : in  std_logic_vector(7 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(7 downto 0)                     -- wire
		);
	end component alt_dspbuilder_cast_GNBZR5PMEK;

	component alt_dspbuilder_cast_GN6DDKTPIR is
		generic (
			round    : natural := 0;
			saturate : natural := 0
		);
		port (
			input  : in  std_logic_vector(7 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(9 downto 0)                     -- wire
		);
	end component alt_dspbuilder_cast_GN6DDKTPIR;

	signal delaysclrgnd_output_wire                          : std_logic;                     -- DelaysclrGND:output -> Delay:sclr
	signal pipelined_adder3user_aclrgnd_output_wire          : std_logic;                     -- Pipelined_Adder3user_aclrGND:output -> Pipelined_Adder3:user_aclr
	signal pipelined_adder2user_aclrgnd_output_wire          : std_logic;                     -- Pipelined_Adder2user_aclrGND:output -> Pipelined_Adder2:user_aclr
	signal pipelined_adder1user_aclrgnd_output_wire          : std_logic;                     -- Pipelined_Adder1user_aclrGND:output -> Pipelined_Adder1:user_aclr
	signal delay2sclrgnd_output_wire                         : std_logic;                     -- Delay2sclrGND:output -> Delay2:sclr
	signal parallel_adder_subtractoruser_aclrgnd_output_wire : std_logic;                     -- Parallel_Adder_Subtractoruser_aclrGND:output -> Parallel_Adder_Subtractor:user_aclr
	signal delay1sclrgnd_output_wire                         : std_logic;                     -- Delay1sclrGND:output -> Delay1:sclr
	signal constant3_output_wire                             : std_logic_vector(1 downto 0);  -- Constant3:output -> Bus_Concatenation1:a
	signal constant4_output_wire                             : std_logic_vector(1 downto 0);  -- Constant4:output -> Bus_Concatenation2:a
	signal constant5_output_wire                             : std_logic_vector(1 downto 0);  -- Constant5:output -> Bus_Concatenation4:a
	signal constant9_output_wire                             : std_logic_vector(1 downto 0);  -- Constant9:output -> Bus_Concatenation3:a
	signal data_00_0_output_wire                             : std_logic_vector(7 downto 0);  -- data_00_0:output -> Delay:input
	signal clken_0_output_wire                               : std_logic;                     -- clken_0:output -> [Delay1:ena, Delay2:ena, Delay:ena, Parallel_Adder_Subtractor:ena, Pipelined_Adder1:ena, Pipelined_Adder2:ena, Pipelined_Adder3:ena]
	signal data_20_0_output_wire                             : std_logic_vector(7 downto 0);  -- data_20_0:output -> Delay1:input
	signal bus_concatenation2_output_wire                    : std_logic_vector(9 downto 0);  -- Bus_Concatenation2:output -> Logical_Bus_Operator2:dataa
	signal logical_bus_operator2_result_wire                 : std_logic_vector(9 downto 0);  -- Logical_Bus_Operator2:result -> Delay2:input
	signal bus_concatenation1_output_wire                    : std_logic_vector(9 downto 0);  -- Bus_Concatenation1:output -> Logical_Bus_Operator3:dataa
	signal bus_concatenation4_output_wire                    : std_logic_vector(9 downto 0);  -- Bus_Concatenation4:output -> Logical_Bus_Operator4:dataa
	signal logical_bus_operator4_result_wire                 : std_logic_vector(9 downto 0);  -- Logical_Bus_Operator4:result -> Logical_Bus_Operator5:dataa
	signal bus_concatenation3_output_wire                    : std_logic_vector(9 downto 0);  -- Bus_Concatenation3:output -> Logical_Bus_Operator6:dataa
	signal pipelined_adder1_result_wire                      : std_logic_vector(9 downto 0);  -- Pipelined_Adder1:result -> Parallel_Adder_Subtractor:data1
	signal delay2_output_wire                                : std_logic_vector(9 downto 0);  -- Delay2:output -> Parallel_Adder_Subtractor:data2
	signal pipelined_adder2_result_wire                      : std_logic_vector(9 downto 0);  -- Pipelined_Adder2:result -> Parallel_Adder_Subtractor:data3
	signal pipelined_adder3_result_wire                      : std_logic_vector(9 downto 0);  -- Pipelined_Adder3:result -> Parallel_Adder_Subtractor:data5
	signal logical_bus_operator3_result_wire                 : std_logic_vector(9 downto 0);  -- Logical_Bus_Operator3:result -> Pipelined_Adder1:dataa
	signal constant7_output_wire                             : std_logic_vector(9 downto 0);  -- Constant7:output -> Pipelined_Adder1:datab
	signal logical_bus_operator5_result_wire                 : std_logic_vector(9 downto 0);  -- Logical_Bus_Operator5:result -> Pipelined_Adder2:dataa
	signal constant8_output_wire                             : std_logic_vector(9 downto 0);  -- Constant8:output -> Pipelined_Adder2:datab
	signal logical_bus_operator6_result_wire                 : std_logic_vector(9 downto 0);  -- Logical_Bus_Operator6:result -> Pipelined_Adder3:dataa
	signal constant6_output_wire                             : std_logic_vector(9 downto 0);  -- Constant6:output -> Pipelined_Adder3:datab
	signal parallel_adder_subtractor_result_wire             : std_logic_vector(12 downto 0); -- Parallel_Adder_Subtractor:result -> grad_y_0:input
	signal data_02_0_output_wire                             : std_logic_vector(7 downto 0);  -- data_02_0:output -> cast265:input
	signal cast265_output_wire                               : std_logic_vector(7 downto 0);  -- cast265:output -> Bus_Concatenation1:b
	signal data_12_0_output_wire                             : std_logic_vector(7 downto 0);  -- data_12_0:output -> cast266:input
	signal cast266_output_wire                               : std_logic_vector(7 downto 0);  -- cast266:output -> Bus_Concatenation4:b
	signal data_22_0_output_wire                             : std_logic_vector(7 downto 0);  -- data_22_0:output -> cast267:input
	signal cast267_output_wire                               : std_logic_vector(7 downto 0);  -- cast267:output -> Bus_Concatenation3:b
	signal data_10_0_output_wire                             : std_logic_vector(7 downto 0);  -- data_10_0:output -> cast268:input
	signal cast268_output_wire                               : std_logic_vector(7 downto 0);  -- cast268:output -> Bus_Concatenation2:b
	signal delay_output_wire                                 : std_logic_vector(7 downto 0);  -- Delay:output -> cast269:input
	signal cast269_output_wire                               : std_logic_vector(9 downto 0);  -- cast269:output -> Parallel_Adder_Subtractor:data0
	signal delay1_output_wire                                : std_logic_vector(7 downto 0);  -- Delay1:output -> cast270:input
	signal cast270_output_wire                               : std_logic_vector(9 downto 0);  -- cast270:output -> Parallel_Adder_Subtractor:data4
	signal clock_0_clock_output_clk                          : std_logic;                     -- Clock_0:clock_out -> [Bus_Concatenation1:clock, Bus_Concatenation2:clock, Bus_Concatenation3:clock, Bus_Concatenation4:clock, Delay1:clock, Delay2:clock, Delay:clock, Parallel_Adder_Subtractor:clock, Pipelined_Adder1:clock, Pipelined_Adder2:clock, Pipelined_Adder3:clock]
	signal clock_0_clock_output_reset                        : std_logic;                     -- Clock_0:aclr_out -> [Bus_Concatenation1:aclr, Bus_Concatenation2:aclr, Bus_Concatenation3:aclr, Bus_Concatenation4:aclr, Delay1:aclr, Delay2:aclr, Delay:aclr, Parallel_Adder_Subtractor:aclr, Pipelined_Adder1:aclr, Pipelined_Adder2:aclr, Pipelined_Adder3:aclr]

begin

	clock_0 : component alt_dspbuilder_clock_GNQFU4PUDH
		port map (
			clock_out => clock_0_clock_output_clk,   -- clock_output.clk
			aclr_out  => clock_0_clock_output_reset, --             .reset
			clock     => Clock,                      --        clock.clk
			aclr      => reset                       --             .reset
		);

	delay : component alt_dspbuilder_delay_GN53FGQEY3
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 1
		)
		port map (
			input  => data_00_0_output_wire,      --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay_output_wire,          --     output.wire
			sclr   => delaysclrgnd_output_wire,   --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delaysclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delaysclrgnd_output_wire  -- output.wire
		);

	data_10_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => data_10,               --  input.wire
			output => data_10_0_output_wire  -- output.wire
		);

	data_12_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => data_12,               --  input.wire
			output => data_12_0_output_wire  -- output.wire
		);

	pipelined_adder3 : component alt_dspbuilder_pipelined_adder_GN4HTUTWRG
		generic map (
			pipeline => 1,
			width    => 10
		)
		port map (
			clock     => clock_0_clock_output_clk,                 -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,               --           .reset
			dataa     => logical_bus_operator6_result_wire,        --      dataa.wire
			datab     => constant6_output_wire,                    --      datab.wire
			result    => pipelined_adder3_result_wire,             --     result.wire
			user_aclr => pipelined_adder3user_aclrgnd_output_wire, --  user_aclr.wire
			ena       => clken_0_output_wire                       --        ena.wire
		);

	pipelined_adder3user_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => pipelined_adder3user_aclrgnd_output_wire  -- output.wire
		);

	pipelined_adder2 : component alt_dspbuilder_pipelined_adder_GN4HTUTWRG
		generic map (
			pipeline => 1,
			width    => 10
		)
		port map (
			clock     => clock_0_clock_output_clk,                 -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,               --           .reset
			dataa     => logical_bus_operator5_result_wire,        --      dataa.wire
			datab     => constant8_output_wire,                    --      datab.wire
			result    => pipelined_adder2_result_wire,             --     result.wire
			user_aclr => pipelined_adder2user_aclrgnd_output_wire, --  user_aclr.wire
			ena       => clken_0_output_wire                       --        ena.wire
		);

	pipelined_adder2user_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => pipelined_adder2user_aclrgnd_output_wire  -- output.wire
		);

	pipelined_adder1 : component alt_dspbuilder_pipelined_adder_GN4HTUTWRG
		generic map (
			pipeline => 1,
			width    => 10
		)
		port map (
			clock     => clock_0_clock_output_clk,                 -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,               --           .reset
			dataa     => logical_bus_operator3_result_wire,        --      dataa.wire
			datab     => constant7_output_wire,                    --      datab.wire
			result    => pipelined_adder1_result_wire,             --     result.wire
			user_aclr => pipelined_adder1user_aclrgnd_output_wire, --  user_aclr.wire
			ena       => clken_0_output_wire                       --        ena.wire
		);

	pipelined_adder1user_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => pipelined_adder1user_aclrgnd_output_wire  -- output.wire
		);

	delay2 : component alt_dspbuilder_delay_GNAM6PTFR4
		generic map (
			ClockPhase => "1",
			BitPattern => "0000000001",
			width      => 10,
			use_init   => 0,
			delay      => 1
		)
		port map (
			input  => logical_bus_operator2_result_wire, --      input.wire
			clock  => clock_0_clock_output_clk,          -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset,        --           .reset
			output => delay2_output_wire,                --     output.wire
			sclr   => delay2sclrgnd_output_wire,         --       sclr.wire
			ena    => clken_0_output_wire                --        ena.wire
		);

	delay2sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay2sclrgnd_output_wire  -- output.wire
		);

	parallel_adder_subtractor : component alt_dspbuilder_parallel_adder_GNNQ3FWLTP
		generic map (
			dataWidth     => 10,
			direction     => "+",
			MaskValue     => "1",
			pipeline      => 1,
			number_inputs => 6
		)
		port map (
			clock     => clock_0_clock_output_clk,                          -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,                        --           .reset
			result    => parallel_adder_subtractor_result_wire,             --     result.wire
			user_aclr => parallel_adder_subtractoruser_aclrgnd_output_wire, --  user_aclr.wire
			ena       => clken_0_output_wire,                               --        ena.wire
			data0     => cast269_output_wire,                               --      data0.wire
			data1     => pipelined_adder1_result_wire,                      --      data1.wire
			data2     => delay2_output_wire,                                --      data2.wire
			data3     => pipelined_adder2_result_wire,                      --      data3.wire
			data4     => cast270_output_wire,                               --      data4.wire
			data5     => pipelined_adder3_result_wire                       --      data5.wire
		);

	parallel_adder_subtractoruser_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => parallel_adder_subtractoruser_aclrgnd_output_wire  -- output.wire
		);

	delay1 : component alt_dspbuilder_delay_GN53FGQEY3
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 1
		)
		port map (
			input  => data_20_0_output_wire,      --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay1_output_wire,         --     output.wire
			sclr   => delay1sclrgnd_output_wire,  --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay1sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay1sclrgnd_output_wire  -- output.wire
		);

	constant3 : component alt_dspbuilder_constant_GN6SFEINY6
		generic map (
			BitPattern => "00",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 2
		)
		port map (
			output => constant3_output_wire  -- output.wire
		);

	clken_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => clken,               --  input.wire
			output => clken_0_output_wire  -- output.wire
		);

	data_00_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => data_00,               --  input.wire
			output => data_00_0_output_wire  -- output.wire
		);

	data_22_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => data_22,               --  input.wire
			output => data_22_0_output_wire  -- output.wire
		);

	bus_concatenation1 : component alt_dspbuilder_bus_concat_GNKLOJ6ING
		generic map (
			widthA => 2,
			widthB => 8
		)
		port map (
			clock  => clock_0_clock_output_clk,       -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset,     --           .reset
			a      => constant3_output_wire,          --          a.wire
			b      => cast265_output_wire,            --          b.wire
			output => bus_concatenation1_output_wire  --     output.wire
		);

	bus_concatenation2 : component alt_dspbuilder_bus_concat_GNKLOJ6ING
		generic map (
			widthA => 2,
			widthB => 8
		)
		port map (
			clock  => clock_0_clock_output_clk,       -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset,     --           .reset
			a      => constant4_output_wire,          --          a.wire
			b      => cast268_output_wire,            --          b.wire
			output => bus_concatenation2_output_wire  --     output.wire
		);

	data_02_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => data_02,               --  input.wire
			output => data_02_0_output_wire  -- output.wire
		);

	bus_concatenation3 : component alt_dspbuilder_bus_concat_GNKLOJ6ING
		generic map (
			widthA => 2,
			widthB => 8
		)
		port map (
			clock  => clock_0_clock_output_clk,       -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset,     --           .reset
			a      => constant9_output_wire,          --          a.wire
			b      => cast267_output_wire,            --          b.wire
			output => bus_concatenation3_output_wire  --     output.wire
		);

	constant8 : component alt_dspbuilder_constant_GNTHQFUUUC
		generic map (
			BitPattern => "0000000001",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 10
		)
		port map (
			output => constant8_output_wire  -- output.wire
		);

	logical_bus_operator6 : component alt_dspbuilder_logical_bus_op_GNAIUQX2FS
		generic map (
			logical_op       => "AltNOT",
			lpm_width        => 10,
			shift_amount     => 1,
			mask_value       => "1111111011",
			signextendrshift => 1
		)
		port map (
			dataa  => bus_concatenation3_output_wire,    --  dataa.wire
			result => logical_bus_operator6_result_wire  -- result.wire
		);

	bus_concatenation4 : component alt_dspbuilder_bus_concat_GNKLOJ6ING
		generic map (
			widthA => 2,
			widthB => 8
		)
		port map (
			clock  => clock_0_clock_output_clk,       -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset,     --           .reset
			a      => constant5_output_wire,          --          a.wire
			b      => cast266_output_wire,            --          b.wire
			output => bus_concatenation4_output_wire  --     output.wire
		);

	constant9 : component alt_dspbuilder_constant_GN6SFEINY6
		generic map (
			BitPattern => "00",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 2
		)
		port map (
			output => constant9_output_wire  -- output.wire
		);

	logical_bus_operator5 : component alt_dspbuilder_logical_bus_op_GNAIUQX2FS
		generic map (
			logical_op       => "AltNOT",
			lpm_width        => 10,
			shift_amount     => 1,
			mask_value       => "1111111011",
			signextendrshift => 1
		)
		port map (
			dataa  => logical_bus_operator4_result_wire, --  dataa.wire
			result => logical_bus_operator5_result_wire  -- result.wire
		);

	constant6 : component alt_dspbuilder_constant_GNTHQFUUUC
		generic map (
			BitPattern => "0000000001",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 10
		)
		port map (
			output => constant6_output_wire  -- output.wire
		);

	logical_bus_operator4 : component alt_dspbuilder_logical_bus_op_GNZIK3BHQU
		generic map (
			logical_op       => "AltShiftLeft",
			lpm_width        => 10,
			shift_amount     => 1,
			mask_value       => "1111111011",
			signextendrshift => 1
		)
		port map (
			dataa  => bus_concatenation4_output_wire,    --  dataa.wire
			result => logical_bus_operator4_result_wire  -- result.wire
		);

	constant7 : component alt_dspbuilder_constant_GNTHQFUUUC
		generic map (
			BitPattern => "0000000001",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 10
		)
		port map (
			output => constant7_output_wire  -- output.wire
		);

	logical_bus_operator3 : component alt_dspbuilder_logical_bus_op_GNAIUQX2FS
		generic map (
			logical_op       => "AltNOT",
			lpm_width        => 10,
			shift_amount     => 1,
			mask_value       => "1111111011",
			signextendrshift => 1
		)
		port map (
			dataa  => bus_concatenation1_output_wire,    --  dataa.wire
			result => logical_bus_operator3_result_wire  -- result.wire
		);

	data_20_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => data_20,               --  input.wire
			output => data_20_0_output_wire  -- output.wire
		);

	constant4 : component alt_dspbuilder_constant_GN6SFEINY6
		generic map (
			BitPattern => "00",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 2
		)
		port map (
			output => constant4_output_wire  -- output.wire
		);

	logical_bus_operator2 : component alt_dspbuilder_logical_bus_op_GNZIK3BHQU
		generic map (
			logical_op       => "AltShiftLeft",
			lpm_width        => 10,
			shift_amount     => 1,
			mask_value       => "1111111011",
			signextendrshift => 1
		)
		port map (
			dataa  => bus_concatenation2_output_wire,    --  dataa.wire
			result => logical_bus_operator2_result_wire  -- result.wire
		);

	constant5 : component alt_dspbuilder_constant_GN6SFEINY6
		generic map (
			BitPattern => "00",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 2
		)
		port map (
			output => constant5_output_wire  -- output.wire
		);

	grad_y_0 : component alt_dspbuilder_port_GNKZFR37ZH
		port map (
			input  => parallel_adder_subtractor_result_wire, --  input.wire
			output => grad_y                                 -- output.wire
		);

	cast265 : component alt_dspbuilder_cast_GNBZR5PMEK
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => data_02_0_output_wire, --  input.wire
			output => cast265_output_wire    -- output.wire
		);

	cast266 : component alt_dspbuilder_cast_GNBZR5PMEK
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => data_12_0_output_wire, --  input.wire
			output => cast266_output_wire    -- output.wire
		);

	cast267 : component alt_dspbuilder_cast_GNBZR5PMEK
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => data_22_0_output_wire, --  input.wire
			output => cast267_output_wire    -- output.wire
		);

	cast268 : component alt_dspbuilder_cast_GNBZR5PMEK
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => data_10_0_output_wire, --  input.wire
			output => cast268_output_wire    -- output.wire
		);

	cast269 : component alt_dspbuilder_cast_GN6DDKTPIR
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => delay_output_wire,   --  input.wire
			output => cast269_output_wire  -- output.wire
		);

	cast270 : component alt_dspbuilder_cast_GN6DDKTPIR
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => delay1_output_wire,  --  input.wire
			output => cast270_output_wire  -- output.wire
		);

end architecture rtl; -- of localedgepreserve_GN_localedgepreserve_Fusion_Cal_Magnitude_Gradient_1_multiplier_accumulator1