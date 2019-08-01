-- gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_3_accumulate_diff.vhd

-- Generated using ACDS version 17.1 590

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_3_accumulate_diff is
	port (
		pixel_diff : in  std_logic_vector(9 downto 0) := (others => '0'); -- pixel_diff.wire
		diff_out   : out std_logic_vector(9 downto 0);                    --   diff_out.wire
		Clock      : in  std_logic                    := '0';             --      Clock.clk
		reset      : in  std_logic                    := '0';             --           .reset
		valid_in   : in  std_logic                    := '0';             --   valid_in.wire
		diff_in    : in  std_logic_vector(9 downto 0) := (others => '0')  --    diff_in.wire
	);
end entity gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_3_accumulate_diff;

architecture rtl of gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_3_accumulate_diff is
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

	component alt_dspbuilder_port_GNSSYS4J5R is
		port (
			input  : in  std_logic_vector(9 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(9 downto 0)                     -- wire
		);
	end component alt_dspbuilder_port_GNSSYS4J5R;

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

	component alt_dspbuilder_gnd_GN is
		port (
			output : out std_logic   -- wire
		);
	end component alt_dspbuilder_gnd_GN;

	component alt_dspbuilder_memdelay_GNE2RSMKSX is
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
	end component alt_dspbuilder_memdelay_GNE2RSMKSX;

	signal pipelined_adderuser_aclrgnd_output_wire : std_logic;                    -- Pipelined_Adderuser_aclrGND:output -> Pipelined_Adder:user_aclr
	signal memory_delayuser_aclrgnd_output_wire    : std_logic;                    -- Memory_Delayuser_aclrGND:output -> Memory_Delay:user_aclr
	signal diff_in_0_output_wire                   : std_logic_vector(9 downto 0); -- diff_in_0:output -> Memory_Delay:input
	signal valid_in_0_output_wire                  : std_logic;                    -- valid_in_0:output -> [Memory_Delay:ena, Pipelined_Adder:ena]
	signal pixel_diff_0_output_wire                : std_logic_vector(9 downto 0); -- pixel_diff_0:output -> Pipelined_Adder:dataa
	signal memory_delay_output_wire                : std_logic_vector(9 downto 0); -- Memory_Delay:output -> Pipelined_Adder:datab
	signal pipelined_adder_result_wire             : std_logic_vector(9 downto 0); -- Pipelined_Adder:result -> diff_out_0:input
	signal clock_0_clock_output_clk                : std_logic;                    -- Clock_0:clock_out -> [Memory_Delay:clock, Pipelined_Adder:clock]
	signal clock_0_clock_output_reset              : std_logic;                    -- Clock_0:aclr_out -> [Memory_Delay:aclr, Pipelined_Adder:aclr]

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

	pixel_diff_0 : component alt_dspbuilder_port_GNSSYS4J5R
		port map (
			input  => pixel_diff,               --  input.wire
			output => pixel_diff_0_output_wire  -- output.wire
		);

	diff_in_0 : component alt_dspbuilder_port_GNSSYS4J5R
		port map (
			input  => diff_in,               --  input.wire
			output => diff_in_0_output_wire  -- output.wire
		);

	pipelined_adder : component alt_dspbuilder_pipelined_adder_GN4HTUTWRG
		generic map (
			pipeline => 1,
			width    => 10
		)
		port map (
			clock     => clock_0_clock_output_clk,                -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,              --           .reset
			dataa     => pixel_diff_0_output_wire,                --      dataa.wire
			datab     => memory_delay_output_wire,                --      datab.wire
			result    => pipelined_adder_result_wire,             --     result.wire
			user_aclr => pipelined_adderuser_aclrgnd_output_wire, --  user_aclr.wire
			ena       => valid_in_0_output_wire                   --        ena.wire
		);

	pipelined_adderuser_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => pipelined_adderuser_aclrgnd_output_wire  -- output.wire
		);

	diff_out_0 : component alt_dspbuilder_port_GNSSYS4J5R
		port map (
			input  => pipelined_adder_result_wire, --  input.wire
			output => diff_out                     -- output.wire
		);

	memory_delay : component alt_dspbuilder_memdelay_GNE2RSMKSX
		generic map (
			RAMTYPE => "AUTO",
			WIDTH   => 10,
			DELAY   => 5285
		)
		port map (
			clock     => clock_0_clock_output_clk,             -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,           --           .reset
			input     => diff_in_0_output_wire,                --      input.wire
			output    => memory_delay_output_wire,             --     output.wire
			user_aclr => memory_delayuser_aclrgnd_output_wire, --  user_aclr.wire
			ena       => valid_in_0_output_wire                --        ena.wire
		);

	memory_delayuser_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => memory_delayuser_aclrgnd_output_wire  -- output.wire
		);

end architecture rtl; -- of gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_3_accumulate_diff
