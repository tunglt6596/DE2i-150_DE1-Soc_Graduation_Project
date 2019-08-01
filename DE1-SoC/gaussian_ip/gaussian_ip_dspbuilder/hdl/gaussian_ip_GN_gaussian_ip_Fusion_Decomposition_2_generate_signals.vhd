-- gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_2_generate_signals.vhd

-- Generated using ACDS version 17.1 590

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_2_generate_signals is
	port (
		sof_in    : in  std_logic := '0'; --    sof_in.wire
		Clock     : in  std_logic := '0'; --     Clock.clk
		reset     : in  std_logic := '0'; --          .reset
		eof_out   : out std_logic;        --   eof_out.wire
		valid_out : out std_logic;        -- valid_out.wire
		sof_out   : out std_logic;        --   sof_out.wire
		valid_in  : in  std_logic := '0'; --  valid_in.wire
		eof_in    : in  std_logic := '0'  --    eof_in.wire
	);
end entity gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_2_generate_signals;

architecture rtl of gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_2_generate_signals is
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

	component alt_dspbuilder_counter_GN6FXRTDGM is
		generic (
			svalue       : string  := "0";
			use_cnt_ena  : string  := "false";
			use_cout     : string  := "false";
			modulus      : integer := 256;
			use_sclr     : string  := "false";
			ndirection   : natural := 1;
			use_usr_aclr : string  := "false";
			width        : natural := 8;
			use_ena      : string  := "false";
			use_sset     : string  := "false";
			use_aload    : string  := "false";
			avalue       : string  := "0";
			use_aset     : string  := "false";
			use_sload    : string  := "false";
			use_cin      : string  := "false"
		);
		port (
			aclr      : in  std_logic                          := 'X';             -- clk
			aload     : in  std_logic                          := 'X';             -- wire
			aset      : in  std_logic                          := 'X';             -- wire
			cin       : in  std_logic                          := 'X';             -- wire
			clock     : in  std_logic                          := 'X';             -- clk
			cnt_ena   : in  std_logic                          := 'X';             -- wire
			cout      : out std_logic;                                             -- wire
			data      : in  std_logic_vector(width-1 downto 0) := (others => 'X'); -- wire
			direction : in  std_logic                          := 'X';             -- wire
			ena       : in  std_logic                          := 'X';             -- wire
			q         : out std_logic_vector(width-1 downto 0);                    -- wire
			sclr      : in  std_logic                          := 'X';             -- wire
			sload     : in  std_logic                          := 'X';             -- wire
			sset      : in  std_logic                          := 'X';             -- wire
			user_aclr : in  std_logic                          := 'X'              -- wire
		);
	end component alt_dspbuilder_counter_GN6FXRTDGM;

	component alt_dspbuilder_comparator_GN is
		generic (
			Operator  : string  := "Altaeb";
			lpm_width : natural := 8
		);
		port (
			clock  : in  std_logic                              := 'X';             -- clk
			dataa  : in  std_logic_vector(lpm_width-1 downto 0) := (others => 'X'); -- wire
			datab  : in  std_logic_vector(lpm_width-1 downto 0) := (others => 'X'); -- wire
			result : out std_logic;                                                 -- wire
			sclr   : in  std_logic                              := 'X'              -- clk
		);
	end component alt_dspbuilder_comparator_GN;

	component alt_dspbuilder_counter_GN23RXZ44L is
		generic (
			svalue       : string  := "0";
			use_cnt_ena  : string  := "false";
			use_cout     : string  := "false";
			modulus      : integer := 256;
			use_sclr     : string  := "false";
			ndirection   : natural := 1;
			use_usr_aclr : string  := "false";
			width        : natural := 8;
			use_ena      : string  := "false";
			use_sset     : string  := "false";
			use_aload    : string  := "false";
			avalue       : string  := "0";
			use_aset     : string  := "false";
			use_sload    : string  := "false";
			use_cin      : string  := "false"
		);
		port (
			aclr      : in  std_logic                          := 'X';             -- clk
			aload     : in  std_logic                          := 'X';             -- wire
			aset      : in  std_logic                          := 'X';             -- wire
			cin       : in  std_logic                          := 'X';             -- wire
			clock     : in  std_logic                          := 'X';             -- clk
			cnt_ena   : in  std_logic                          := 'X';             -- wire
			cout      : out std_logic;                                             -- wire
			data      : in  std_logic_vector(width-1 downto 0) := (others => 'X'); -- wire
			direction : in  std_logic                          := 'X';             -- wire
			ena       : in  std_logic                          := 'X';             -- wire
			q         : out std_logic_vector(width-1 downto 0);                    -- wire
			sclr      : in  std_logic                          := 'X';             -- wire
			sload     : in  std_logic                          := 'X';             -- wire
			sset      : in  std_logic                          := 'X';             -- wire
			user_aclr : in  std_logic                          := 'X'              -- wire
		);
	end component alt_dspbuilder_counter_GN23RXZ44L;

	component alt_dspbuilder_logical_bit_op_GNA5ZFEL7V is
		generic (
			LogicalOp     : string   := "AltAND";
			number_inputs : positive := 2
		);
		port (
			result : out std_logic;        -- wire
			data0  : in  std_logic := 'X'; -- wire
			data1  : in  std_logic := 'X'  -- wire
		);
	end component alt_dspbuilder_logical_bit_op_GNA5ZFEL7V;

	component alt_dspbuilder_logical_bit_op_GNYMSBQTJ6 is
		generic (
			LogicalOp     : string   := "AltAND";
			number_inputs : positive := 2
		);
		port (
			result : out std_logic;        -- wire
			data0  : in  std_logic := 'X'; -- wire
			data1  : in  std_logic := 'X'; -- wire
			data2  : in  std_logic := 'X'  -- wire
		);
	end component alt_dspbuilder_logical_bit_op_GNYMSBQTJ6;

	component alt_dspbuilder_counter_GNSGWKEVBY is
		generic (
			svalue       : string  := "0";
			use_cnt_ena  : string  := "false";
			use_cout     : string  := "false";
			modulus      : integer := 256;
			use_sclr     : string  := "false";
			ndirection   : natural := 1;
			use_usr_aclr : string  := "false";
			width        : natural := 8;
			use_ena      : string  := "false";
			use_sset     : string  := "false";
			use_aload    : string  := "false";
			avalue       : string  := "0";
			use_aset     : string  := "false";
			use_sload    : string  := "false";
			use_cin      : string  := "false"
		);
		port (
			aclr      : in  std_logic                          := 'X';             -- clk
			aload     : in  std_logic                          := 'X';             -- wire
			aset      : in  std_logic                          := 'X';             -- wire
			cin       : in  std_logic                          := 'X';             -- wire
			clock     : in  std_logic                          := 'X';             -- clk
			cnt_ena   : in  std_logic                          := 'X';             -- wire
			cout      : out std_logic;                                             -- wire
			data      : in  std_logic_vector(width-1 downto 0) := (others => 'X'); -- wire
			direction : in  std_logic                          := 'X';             -- wire
			ena       : in  std_logic                          := 'X';             -- wire
			q         : out std_logic_vector(width-1 downto 0);                    -- wire
			sclr      : in  std_logic                          := 'X';             -- wire
			sload     : in  std_logic                          := 'X';             -- wire
			sset      : in  std_logic                          := 'X';             -- wire
			user_aclr : in  std_logic                          := 'X'              -- wire
		);
	end component alt_dspbuilder_counter_GNSGWKEVBY;

	component alt_dspbuilder_constant_GN3HHC36SK is
		generic (
			BitPattern : string  := "0000";
			HDLTYPE    : string  := "STD_LOGIC_VECTOR";
			width      : natural := 4
		);
		port (
			output : out std_logic_vector(9 downto 0)   -- wire
		);
	end component alt_dspbuilder_constant_GN3HHC36SK;

	component alt_dspbuilder_constant_GNVYJZZDO6 is
		generic (
			BitPattern : string  := "0000";
			HDLTYPE    : string  := "STD_LOGIC_VECTOR";
			width      : natural := 4
		);
		port (
			output : out std_logic_vector(9 downto 0)   -- wire
		);
	end component alt_dspbuilder_constant_GNVYJZZDO6;

	component alt_dspbuilder_constant_GN5P5NHC35 is
		generic (
			BitPattern : string  := "0000";
			HDLTYPE    : string  := "STD_LOGIC_VECTOR";
			width      : natural := 4
		);
		port (
			output : out std_logic_vector(9 downto 0)   -- wire
		);
	end component alt_dspbuilder_constant_GN5P5NHC35;

	component alt_dspbuilder_logical_bit_op_GN5A3KLAEC is
		generic (
			LogicalOp     : string   := "AltAND";
			number_inputs : positive := 2
		);
		port (
			result : out std_logic;        -- wire
			data0  : in  std_logic := 'X'; -- wire
			data1  : in  std_logic := 'X'; -- wire
			data2  : in  std_logic := 'X'  -- wire
		);
	end component alt_dspbuilder_logical_bit_op_GN5A3KLAEC;

	component alt_dspbuilder_constant_GNT6G46T4K is
		generic (
			BitPattern : string  := "0000";
			HDLTYPE    : string  := "STD_LOGIC_VECTOR";
			width      : natural := 4
		);
		port (
			output : out std_logic_vector(4 downto 0)   -- wire
		);
	end component alt_dspbuilder_constant_GNT6G46T4K;

	component alt_dspbuilder_constant_GNFJXS55VN is
		generic (
			BitPattern : string  := "0000";
			HDLTYPE    : string  := "STD_LOGIC_VECTOR";
			width      : natural := 4
		);
		port (
			output : out std_logic_vector(9 downto 0)   -- wire
		);
	end component alt_dspbuilder_constant_GNFJXS55VN;

	component alt_dspbuilder_constant_GN2I6BJOVH is
		generic (
			BitPattern : string  := "0000";
			HDLTYPE    : string  := "STD_LOGIC_VECTOR";
			width      : natural := 4
		);
		port (
			output : out std_logic_vector(9 downto 0)   -- wire
		);
	end component alt_dspbuilder_constant_GN2I6BJOVH;

	component alt_dspbuilder_constant_GNPD64ZOE3 is
		generic (
			BitPattern : string  := "0000";
			HDLTYPE    : string  := "STD_LOGIC_VECTOR";
			width      : natural := 4
		);
		port (
			output : out std_logic_vector(4 downto 0)   -- wire
		);
	end component alt_dspbuilder_constant_GNPD64ZOE3;

	component alt_dspbuilder_constant_GNSY7ZR6JL is
		generic (
			BitPattern : string  := "0000";
			HDLTYPE    : string  := "STD_LOGIC_VECTOR";
			width      : natural := 4
		);
		port (
			output : out std_logic_vector(9 downto 0)   -- wire
		);
	end component alt_dspbuilder_constant_GNSY7ZR6JL;

	component alt_dspbuilder_cast_GN5D52DF5S is
		generic (
			round    : natural := 0;
			saturate : natural := 0
		);
		port (
			input  : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- wire
			output : out std_logic_vector(10 downto 0)                     -- wire
		);
	end component alt_dspbuilder_cast_GN5D52DF5S;

	component alt_dspbuilder_cast_GNNBSPPAI5 is
		generic (
			round    : natural := 0;
			saturate : natural := 0
		);
		port (
			input  : in  std_logic_vector(4 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(5 downto 0)                     -- wire
		);
	end component alt_dspbuilder_cast_GNNBSPPAI5;

	signal eof_in_0_output_wire              : std_logic;                     -- eof_in_0:output -> [Counter:sset, counter_col:sclr, counter_row:sclr]
	signal comparator3_result_wire           : std_logic;                     -- Comparator3:result -> Logical_Bit_Operator:data0
	signal comparator4_result_wire           : std_logic;                     -- Comparator4:result -> Logical_Bit_Operator:data1
	signal comparator1_result_wire           : std_logic;                     -- Comparator1:result -> Logical_Bit_Operator1:data0
	signal comparator2_result_wire           : std_logic;                     -- Comparator2:result -> Logical_Bit_Operator1:data1
	signal logical_bit_operator_result_wire  : std_logic;                     -- Logical_Bit_Operator:result -> Logical_Bit_Operator2:data0
	signal logical_bit_operator1_result_wire : std_logic;                     -- Logical_Bit_Operator1:result -> Logical_Bit_Operator2:data1
	signal comparator5_result_wire           : std_logic;                     -- Comparator5:result -> [Logical_Bit_Operator2:data2, Logical_Bit_Operator8:data1]
	signal valid_in_0_output_wire            : std_logic;                     -- valid_in_0:output -> [Logical_Bit_Operator3:data0, Logical_Bit_Operator5:data0, Logical_Bit_Operator6:data0, Logical_Bit_Operator7:data0, Logical_Bit_Operator8:data0, counter_col:cnt_ena]
	signal comparator6_result_wire           : std_logic;                     -- Comparator6:result -> Logical_Bit_Operator3:data1
	signal logical_bit_operator2_result_wire : std_logic;                     -- Logical_Bit_Operator2:result -> Logical_Bit_Operator5:data1
	signal comparator_result_wire            : std_logic;                     -- Comparator:result -> Logical_Bit_Operator6:data1
	signal comparator8_result_wire           : std_logic;                     -- Comparator8:result -> Logical_Bit_Operator7:data1
	signal comparator7_result_wire           : std_logic;                     -- Comparator7:result -> Logical_Bit_Operator7:data2
	signal logical_bit_operator8_result_wire : std_logic;                     -- Logical_Bit_Operator8:result -> Counter:cnt_ena
	signal logical_bit_operator6_result_wire : std_logic;                     -- Logical_Bit_Operator6:result -> counter_row:cnt_ena
	signal logical_bit_operator5_result_wire : std_logic;                     -- Logical_Bit_Operator5:result -> valid_out_0:input
	signal logical_bit_operator7_result_wire : std_logic;                     -- Logical_Bit_Operator7:result -> sof_out_0:input
	signal logical_bit_operator3_result_wire : std_logic;                     -- Logical_Bit_Operator3:result -> eof_out_0:input
	signal constant1_output_wire             : std_logic_vector(9 downto 0);  -- Constant1:output -> cast181:input
	signal cast181_output_wire               : std_logic_vector(10 downto 0); -- cast181:output -> Comparator:datab
	signal constant2_output_wire             : std_logic_vector(9 downto 0);  -- Constant2:output -> cast182:input
	signal cast182_output_wire               : std_logic_vector(10 downto 0); -- cast182:output -> Comparator1:datab
	signal constant3_output_wire             : std_logic_vector(9 downto 0);  -- Constant3:output -> cast183:input
	signal cast183_output_wire               : std_logic_vector(10 downto 0); -- cast183:output -> Comparator2:datab
	signal constant4_output_wire             : std_logic_vector(9 downto 0);  -- Constant4:output -> cast184:input
	signal cast184_output_wire               : std_logic_vector(10 downto 0); -- cast184:output -> Comparator3:datab
	signal constant5_output_wire             : std_logic_vector(9 downto 0);  -- Constant5:output -> cast185:input
	signal cast185_output_wire               : std_logic_vector(10 downto 0); -- cast185:output -> Comparator4:datab
	signal constant6_output_wire             : std_logic_vector(9 downto 0);  -- Constant6:output -> cast186:input
	signal cast186_output_wire               : std_logic_vector(10 downto 0); -- cast186:output -> Comparator7:datab
	signal constant7_output_wire             : std_logic_vector(4 downto 0);  -- Constant7:output -> cast187:input
	signal cast187_output_wire               : std_logic_vector(5 downto 0);  -- cast187:output -> Comparator5:datab
	signal constant8_output_wire             : std_logic_vector(4 downto 0);  -- Constant8:output -> cast188:input
	signal cast188_output_wire               : std_logic_vector(5 downto 0);  -- cast188:output -> Comparator6:datab
	signal constant9_output_wire             : std_logic_vector(9 downto 0);  -- Constant9:output -> cast189:input
	signal cast189_output_wire               : std_logic_vector(10 downto 0); -- cast189:output -> Comparator8:datab
	signal counter_row_q_wire                : std_logic_vector(9 downto 0);  -- counter_row:q -> [cast190:input, cast196:input, cast197:input]
	signal cast190_output_wire               : std_logic_vector(10 downto 0); -- cast190:output -> Comparator8:dataa
	signal counter_col_q_wire                : std_logic_vector(9 downto 0);  -- counter_col:q -> [cast191:input, cast192:input, cast194:input, cast195:input]
	signal cast191_output_wire               : std_logic_vector(10 downto 0); -- cast191:output -> Comparator7:dataa
	signal cast192_output_wire               : std_logic_vector(10 downto 0); -- cast192:output -> Comparator:dataa
	signal counter_q_wire                    : std_logic_vector(4 downto 0);  -- Counter:q -> [cast193:input, cast198:input]
	signal cast193_output_wire               : std_logic_vector(5 downto 0);  -- cast193:output -> Comparator5:dataa
	signal cast194_output_wire               : std_logic_vector(10 downto 0); -- cast194:output -> Comparator3:dataa
	signal cast195_output_wire               : std_logic_vector(10 downto 0); -- cast195:output -> Comparator1:dataa
	signal cast196_output_wire               : std_logic_vector(10 downto 0); -- cast196:output -> Comparator4:dataa
	signal cast197_output_wire               : std_logic_vector(10 downto 0); -- cast197:output -> Comparator2:dataa
	signal cast198_output_wire               : std_logic_vector(5 downto 0);  -- cast198:output -> Comparator6:dataa
	signal clock_0_clock_output_clk          : std_logic;                     -- Clock_0:clock_out -> [Comparator1:clock, Comparator2:clock, Comparator3:clock, Comparator4:clock, Comparator5:clock, Comparator6:clock, Comparator7:clock, Comparator8:clock, Comparator:clock, Counter:clock, counter_col:clock, counter_row:clock]
	signal clock_0_clock_output_reset        : std_logic;                     -- Clock_0:aclr_out -> [Comparator1:sclr, Comparator2:sclr, Comparator3:sclr, Comparator4:sclr, Comparator5:sclr, Comparator6:sclr, Comparator7:sclr, Comparator8:sclr, Comparator:sclr, Counter:aclr, counter_col:aclr, counter_row:aclr]

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
			input  => logical_bit_operator3_result_wire, --  input.wire
			output => eof_out                            -- output.wire
		);

	counter_col : component alt_dspbuilder_counter_GN6FXRTDGM
		generic map (
			svalue       => "1",
			use_cnt_ena  => "true",
			use_cout     => "false",
			modulus      => 664,
			use_sclr     => "true",
			ndirection   => 1,
			use_usr_aclr => "false",
			width        => 10,
			use_ena      => "false",
			use_sset     => "false",
			use_aload    => "false",
			avalue       => "0",
			use_aset     => "false",
			use_sload    => "false",
			use_cin      => "false"
		)
		port map (
			clock   => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr    => clock_0_clock_output_reset, --           .reset
			cnt_ena => valid_in_0_output_wire,     --    cnt_ena.wire
			sclr    => eof_in_0_output_wire,       --       sclr.wire
			q       => counter_col_q_wire,         --          q.wire
			cout    => open                        --       cout.wire
		);

	comparator : component alt_dspbuilder_comparator_GN
		generic map (
			Operator  => "Altaeb",
			lpm_width => 11
		)
		port map (
			clock  => clock_0_clock_output_clk,   -- clock_sclr.clk
			sclr   => clock_0_clock_output_reset, --           .reset
			dataa  => cast192_output_wire,        --      dataa.wire
			datab  => cast181_output_wire,        --      datab.wire
			result => comparator_result_wire      --     result.wire
		);

	comparator1 : component alt_dspbuilder_comparator_GN
		generic map (
			Operator  => "Altagb",
			lpm_width => 11
		)
		port map (
			clock  => clock_0_clock_output_clk,   -- clock_sclr.clk
			sclr   => clock_0_clock_output_reset, --           .reset
			dataa  => cast195_output_wire,        --      dataa.wire
			datab  => cast182_output_wire,        --      datab.wire
			result => comparator1_result_wire     --     result.wire
		);

	valid_out_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => logical_bit_operator5_result_wire, --  input.wire
			output => valid_out                          -- output.wire
		);

	counter : component alt_dspbuilder_counter_GN23RXZ44L
		generic map (
			svalue       => "1",
			use_cnt_ena  => "true",
			use_cout     => "false",
			modulus      => 31,
			use_sclr     => "false",
			ndirection   => 1,
			use_usr_aclr => "false",
			width        => 5,
			use_ena      => "false",
			use_sset     => "true",
			use_aload    => "false",
			avalue       => "0",
			use_aset     => "false",
			use_sload    => "false",
			use_cin      => "false"
		)
		port map (
			clock   => clock_0_clock_output_clk,          -- clock_aclr.clk
			aclr    => clock_0_clock_output_reset,        --           .reset
			cnt_ena => logical_bit_operator8_result_wire, --    cnt_ena.wire
			sset    => eof_in_0_output_wire,              --       sset.wire
			q       => counter_q_wire,                    --          q.wire
			cout    => open                               --       cout.wire
		);

	comparator5 : component alt_dspbuilder_comparator_GN
		generic map (
			Operator  => "Altagb",
			lpm_width => 6
		)
		port map (
			clock  => clock_0_clock_output_clk,   -- clock_sclr.clk
			sclr   => clock_0_clock_output_reset, --           .reset
			dataa  => cast193_output_wire,        --      dataa.wire
			datab  => cast187_output_wire,        --      datab.wire
			result => comparator5_result_wire     --     result.wire
		);

	comparator4 : component alt_dspbuilder_comparator_GN
		generic map (
			Operator  => "Altagb",
			lpm_width => 11
		)
		port map (
			clock  => clock_0_clock_output_clk,   -- clock_sclr.clk
			sclr   => clock_0_clock_output_reset, --           .reset
			dataa  => cast196_output_wire,        --      dataa.wire
			datab  => cast185_output_wire,        --      datab.wire
			result => comparator4_result_wire     --     result.wire
		);

	comparator3 : component alt_dspbuilder_comparator_GN
		generic map (
			Operator  => "Altalb",
			lpm_width => 11
		)
		port map (
			clock  => clock_0_clock_output_clk,   -- clock_sclr.clk
			sclr   => clock_0_clock_output_reset, --           .reset
			dataa  => cast194_output_wire,        --      dataa.wire
			datab  => cast184_output_wire,        --      datab.wire
			result => comparator3_result_wire     --     result.wire
		);

	comparator2 : component alt_dspbuilder_comparator_GN
		generic map (
			Operator  => "Altagb",
			lpm_width => 11
		)
		port map (
			clock  => clock_0_clock_output_clk,   -- clock_sclr.clk
			sclr   => clock_0_clock_output_reset, --           .reset
			dataa  => cast197_output_wire,        --      dataa.wire
			datab  => cast183_output_wire,        --      datab.wire
			result => comparator2_result_wire     --     result.wire
		);

	logical_bit_operator1 : component alt_dspbuilder_logical_bit_op_GNA5ZFEL7V
		generic map (
			LogicalOp     => "AltAND",
			number_inputs => 2
		)
		port map (
			result => logical_bit_operator1_result_wire, -- result.wire
			data0  => comparator1_result_wire,           --  data0.wire
			data1  => comparator2_result_wire            --  data1.wire
		);

	logical_bit_operator2 : component alt_dspbuilder_logical_bit_op_GNYMSBQTJ6
		generic map (
			LogicalOp     => "AltOR",
			number_inputs => 3
		)
		port map (
			result => logical_bit_operator2_result_wire, -- result.wire
			data0  => logical_bit_operator_result_wire,  --  data0.wire
			data1  => logical_bit_operator1_result_wire, --  data1.wire
			data2  => comparator5_result_wire            --  data2.wire
		);

	logical_bit_operator3 : component alt_dspbuilder_logical_bit_op_GNA5ZFEL7V
		generic map (
			LogicalOp     => "AltAND",
			number_inputs => 2
		)
		port map (
			result => logical_bit_operator3_result_wire, -- result.wire
			data0  => valid_in_0_output_wire,            --  data0.wire
			data1  => comparator6_result_wire            --  data1.wire
		);

	counter_row : component alt_dspbuilder_counter_GNSGWKEVBY
		generic map (
			svalue       => "0",
			use_cnt_ena  => "true",
			use_cout     => "false",
			modulus      => 504,
			use_sclr     => "true",
			ndirection   => 1,
			use_usr_aclr => "false",
			width        => 10,
			use_ena      => "false",
			use_sset     => "false",
			use_aload    => "false",
			avalue       => "0",
			use_aset     => "false",
			use_sload    => "false",
			use_cin      => "false"
		)
		port map (
			clock   => clock_0_clock_output_clk,          -- clock_aclr.clk
			aclr    => clock_0_clock_output_reset,        --           .reset
			cnt_ena => logical_bit_operator6_result_wire, --    cnt_ena.wire
			sclr    => eof_in_0_output_wire,              --       sclr.wire
			q       => counter_row_q_wire,                --          q.wire
			cout    => open                               --       cout.wire
		);

	constant2 : component alt_dspbuilder_constant_GN3HHC36SK
		generic map (
			BitPattern => "0000100101",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 10
		)
		port map (
			output => constant2_output_wire  -- output.wire
		);

	comparator8 : component alt_dspbuilder_comparator_GN
		generic map (
			Operator  => "Altaeb",
			lpm_width => 11
		)
		port map (
			clock  => clock_0_clock_output_clk,   -- clock_sclr.clk
			sclr   => clock_0_clock_output_reset, --           .reset
			dataa  => cast190_output_wire,        --      dataa.wire
			datab  => cast189_output_wire,        --      datab.wire
			result => comparator8_result_wire     --     result.wire
		);

	constant3 : component alt_dspbuilder_constant_GNVYJZZDO6
		generic map (
			BitPattern => "0000000111",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 10
		)
		port map (
			output => constant3_output_wire  -- output.wire
		);

	logical_bit_operator5 : component alt_dspbuilder_logical_bit_op_GNA5ZFEL7V
		generic map (
			LogicalOp     => "AltAND",
			number_inputs => 2
		)
		port map (
			result => logical_bit_operator5_result_wire, -- result.wire
			data0  => valid_in_0_output_wire,            --  data0.wire
			data1  => logical_bit_operator2_result_wire  --  data1.wire
		);

	comparator7 : component alt_dspbuilder_comparator_GN
		generic map (
			Operator  => "Altaeb",
			lpm_width => 11
		)
		port map (
			clock  => clock_0_clock_output_clk,   -- clock_sclr.clk
			sclr   => clock_0_clock_output_reset, --           .reset
			dataa  => cast191_output_wire,        --      dataa.wire
			datab  => cast186_output_wire,        --      datab.wire
			result => comparator7_result_wire     --     result.wire
		);

	logical_bit_operator6 : component alt_dspbuilder_logical_bit_op_GNA5ZFEL7V
		generic map (
			LogicalOp     => "AltAND",
			number_inputs => 2
		)
		port map (
			result => logical_bit_operator6_result_wire, -- result.wire
			data0  => valid_in_0_output_wire,            --  data0.wire
			data1  => comparator_result_wire             --  data1.wire
		);

	comparator6 : component alt_dspbuilder_comparator_GN
		generic map (
			Operator  => "Altaeb",
			lpm_width => 6
		)
		port map (
			clock  => clock_0_clock_output_clk,   -- clock_sclr.clk
			sclr   => clock_0_clock_output_reset, --           .reset
			dataa  => cast198_output_wire,        --      dataa.wire
			datab  => cast188_output_wire,        --      datab.wire
			result => comparator6_result_wire     --     result.wire
		);

	constant1 : component alt_dspbuilder_constant_GN5P5NHC35
		generic map (
			BitPattern => "1010010111",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 10
		)
		port map (
			output => constant1_output_wire  -- output.wire
		);

	logical_bit_operator7 : component alt_dspbuilder_logical_bit_op_GN5A3KLAEC
		generic map (
			LogicalOp     => "AltAND",
			number_inputs => 3
		)
		port map (
			result => logical_bit_operator7_result_wire, -- result.wire
			data0  => valid_in_0_output_wire,            --  data0.wire
			data1  => comparator8_result_wire,           --  data1.wire
			data2  => comparator7_result_wire            --  data2.wire
		);

	logical_bit_operator8 : component alt_dspbuilder_logical_bit_op_GNA5ZFEL7V
		generic map (
			LogicalOp     => "AltAND",
			number_inputs => 2
		)
		port map (
			result => logical_bit_operator8_result_wire, -- result.wire
			data0  => valid_in_0_output_wire,            --  data0.wire
			data1  => comparator5_result_wire            --  data1.wire
		);

	eof_in_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => eof_in,               --  input.wire
			output => eof_in_0_output_wire  -- output.wire
		);

	constant8 : component alt_dspbuilder_constant_GNT6G46T4K
		generic map (
			BitPattern => "11110",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 5
		)
		port map (
			output => constant8_output_wire  -- output.wire
		);

	sof_in_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => sof_in, --  input.wire
			output => open    -- output.wire
		);

	constant9 : component alt_dspbuilder_constant_GNFJXS55VN
		generic map (
			BitPattern => "0000001000",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 10
		)
		port map (
			output => constant9_output_wire  -- output.wire
		);

	constant6 : component alt_dspbuilder_constant_GN2I6BJOVH
		generic map (
			BitPattern => "0000100110",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 10
		)
		port map (
			output => constant6_output_wire  -- output.wire
		);

	constant7 : component alt_dspbuilder_constant_GNPD64ZOE3
		generic map (
			BitPattern => "00000",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 5
		)
		port map (
			output => constant7_output_wire  -- output.wire
		);

	constant4 : component alt_dspbuilder_constant_GNSY7ZR6JL
		generic map (
			BitPattern => "0000011110",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 10
		)
		port map (
			output => constant4_output_wire  -- output.wire
		);

	constant5 : component alt_dspbuilder_constant_GNFJXS55VN
		generic map (
			BitPattern => "0000001000",
			HDLTYPE    => "STD_LOGIC_VECTOR",
			width      => 10
		)
		port map (
			output => constant5_output_wire  -- output.wire
		);

	sof_out_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => logical_bit_operator7_result_wire, --  input.wire
			output => sof_out                            -- output.wire
		);

	logical_bit_operator : component alt_dspbuilder_logical_bit_op_GNA5ZFEL7V
		generic map (
			LogicalOp     => "AltAND",
			number_inputs => 2
		)
		port map (
			result => logical_bit_operator_result_wire, -- result.wire
			data0  => comparator3_result_wire,          --  data0.wire
			data1  => comparator4_result_wire           --  data1.wire
		);

	cast181 : component alt_dspbuilder_cast_GN5D52DF5S
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => constant1_output_wire, --  input.wire
			output => cast181_output_wire    -- output.wire
		);

	cast182 : component alt_dspbuilder_cast_GN5D52DF5S
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => constant2_output_wire, --  input.wire
			output => cast182_output_wire    -- output.wire
		);

	cast183 : component alt_dspbuilder_cast_GN5D52DF5S
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => constant3_output_wire, --  input.wire
			output => cast183_output_wire    -- output.wire
		);

	cast184 : component alt_dspbuilder_cast_GN5D52DF5S
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => constant4_output_wire, --  input.wire
			output => cast184_output_wire    -- output.wire
		);

	cast185 : component alt_dspbuilder_cast_GN5D52DF5S
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => constant5_output_wire, --  input.wire
			output => cast185_output_wire    -- output.wire
		);

	cast186 : component alt_dspbuilder_cast_GN5D52DF5S
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => constant6_output_wire, --  input.wire
			output => cast186_output_wire    -- output.wire
		);

	cast187 : component alt_dspbuilder_cast_GNNBSPPAI5
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => constant7_output_wire, --  input.wire
			output => cast187_output_wire    -- output.wire
		);

	cast188 : component alt_dspbuilder_cast_GNNBSPPAI5
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => constant8_output_wire, --  input.wire
			output => cast188_output_wire    -- output.wire
		);

	cast189 : component alt_dspbuilder_cast_GN5D52DF5S
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => constant9_output_wire, --  input.wire
			output => cast189_output_wire    -- output.wire
		);

	cast190 : component alt_dspbuilder_cast_GN5D52DF5S
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => counter_row_q_wire,  --  input.wire
			output => cast190_output_wire  -- output.wire
		);

	cast191 : component alt_dspbuilder_cast_GN5D52DF5S
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => counter_col_q_wire,  --  input.wire
			output => cast191_output_wire  -- output.wire
		);

	cast192 : component alt_dspbuilder_cast_GN5D52DF5S
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => counter_col_q_wire,  --  input.wire
			output => cast192_output_wire  -- output.wire
		);

	cast193 : component alt_dspbuilder_cast_GNNBSPPAI5
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => counter_q_wire,      --  input.wire
			output => cast193_output_wire  -- output.wire
		);

	cast194 : component alt_dspbuilder_cast_GN5D52DF5S
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => counter_col_q_wire,  --  input.wire
			output => cast194_output_wire  -- output.wire
		);

	cast195 : component alt_dspbuilder_cast_GN5D52DF5S
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => counter_col_q_wire,  --  input.wire
			output => cast195_output_wire  -- output.wire
		);

	cast196 : component alt_dspbuilder_cast_GN5D52DF5S
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => counter_row_q_wire,  --  input.wire
			output => cast196_output_wire  -- output.wire
		);

	cast197 : component alt_dspbuilder_cast_GN5D52DF5S
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => counter_row_q_wire,  --  input.wire
			output => cast197_output_wire  -- output.wire
		);

	cast198 : component alt_dspbuilder_cast_GNNBSPPAI5
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => counter_q_wire,      --  input.wire
			output => cast198_output_wire  -- output.wire
		);

end architecture rtl; -- of gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_2_generate_signals
