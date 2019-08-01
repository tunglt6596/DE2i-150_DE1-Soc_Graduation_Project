-- localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanA_line_buffer.vhd

-- Generated using ACDS version 17.1 590

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanA_line_buffer is
	port (
		data_11 : out std_logic_vector(15 downto 0);                    -- data_11.wire
		data_in : in  std_logic_vector(15 downto 0) := (others => '0'); -- data_in.wire
		data_12 : out std_logic_vector(15 downto 0);                    -- data_12.wire
		data_01 : out std_logic_vector(15 downto 0);                    -- data_01.wire
		clken   : in  std_logic                     := '0';             --   clken.wire
		data_02 : out std_logic_vector(15 downto 0);                    -- data_02.wire
		Clock   : in  std_logic                     := '0';             --   Clock.clk
		reset   : in  std_logic                     := '0';             --        .reset
		data_00 : out std_logic_vector(15 downto 0);                    -- data_00.wire
		data_20 : out std_logic_vector(15 downto 0);                    -- data_20.wire
		data_22 : out std_logic_vector(15 downto 0);                    -- data_22.wire
		data_21 : out std_logic_vector(15 downto 0);                    -- data_21.wire
		data_10 : out std_logic_vector(15 downto 0)                     -- data_10.wire
	);
end entity localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanA_line_buffer;

architecture rtl of localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanA_line_buffer is
	component alt_dspbuilder_clock_GNQFU4PUDH is
		port (
			aclr      : in  std_logic := 'X'; -- reset
			aclr_n    : in  std_logic := 'X'; -- reset_n
			aclr_out  : out std_logic;        -- reset
			clock     : in  std_logic := 'X'; -- clk
			clock_out : out std_logic         -- clk
		);
	end component alt_dspbuilder_clock_GNQFU4PUDH;

	component alt_dspbuilder_delay_GNF54IOIE4 is
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
	end component alt_dspbuilder_delay_GNF54IOIE4;

	component alt_dspbuilder_gnd_GN is
		port (
			output : out std_logic   -- wire
		);
	end component alt_dspbuilder_gnd_GN;

	component alt_dspbuilder_port_GN37ALZBS4 is
		port (
			input  : in  std_logic := 'X'; -- wire
			output : out std_logic         -- wire
		);
	end component alt_dspbuilder_port_GN37ALZBS4;

	component alt_dspbuilder_port_GNBO6OMO5Y is
		port (
			input  : in  std_logic_vector(15 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(15 downto 0)                     -- wire
		);
	end component alt_dspbuilder_port_GNBO6OMO5Y;

	component alt_dspbuilder_memdelay_GNNHPAZCPO is
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
	end component alt_dspbuilder_memdelay_GNNHPAZCPO;

	signal delay10sclrgnd_output_wire            : std_logic;                     -- Delay10sclrGND:output -> Delay10:sclr
	signal delay2sclrgnd_output_wire             : std_logic;                     -- Delay2sclrGND:output -> Delay2:sclr
	signal delay1sclrgnd_output_wire             : std_logic;                     -- Delay1sclrGND:output -> Delay1:sclr
	signal delaysclrgnd_output_wire              : std_logic;                     -- DelaysclrGND:output -> Delay:sclr
	signal memory_delay1user_aclrgnd_output_wire : std_logic;                     -- Memory_Delay1user_aclrGND:output -> Memory_Delay1:user_aclr
	signal delay6sclrgnd_output_wire             : std_logic;                     -- Delay6sclrGND:output -> Delay6:sclr
	signal delay5sclrgnd_output_wire             : std_logic;                     -- Delay5sclrGND:output -> Delay5:sclr
	signal memory_delayuser_aclrgnd_output_wire  : std_logic;                     -- Memory_Delayuser_aclrGND:output -> Memory_Delay:user_aclr
	signal delay9sclrgnd_output_wire             : std_logic;                     -- Delay9sclrGND:output -> Delay9:sclr
	signal delay_output_wire                     : std_logic_vector(15 downto 0); -- Delay:output -> [Delay1:input, data_00_0:input]
	signal delay1_output_wire                    : std_logic_vector(15 downto 0); -- Delay1:output -> [Delay2:input, data_01_0:input]
	signal delay5_output_wire                    : std_logic_vector(15 downto 0); -- Delay5:output -> [Delay6:input, data_11_0:input]
	signal delay9_output_wire                    : std_logic_vector(15 downto 0); -- Delay9:output -> [Delay10:input, data_21_0:input]
	signal clken_0_output_wire                   : std_logic;                     -- clken_0:output -> [Delay10:ena, Delay1:ena, Delay2:ena, Delay5:ena, Delay6:ena, Delay9:ena, Delay:ena, Memory_Delay1:ena, Memory_Delay:ena]
	signal data_in_0_output_wire                 : std_logic_vector(15 downto 0); -- data_in_0:output -> Delay:input
	signal delay2_output_wire                    : std_logic_vector(15 downto 0); -- Delay2:output -> [Memory_Delay:input, data_02_0:input]
	signal memory_delay_output_wire              : std_logic_vector(15 downto 0); -- Memory_Delay:output -> [Delay5:input, data_10_0:input]
	signal delay6_output_wire                    : std_logic_vector(15 downto 0); -- Delay6:output -> [Memory_Delay1:input, data_12_0:input]
	signal memory_delay1_output_wire             : std_logic_vector(15 downto 0); -- Memory_Delay1:output -> [Delay9:input, data_20_0:input]
	signal delay10_output_wire                   : std_logic_vector(15 downto 0); -- Delay10:output -> data_22_0:input
	signal clock_0_clock_output_clk              : std_logic;                     -- Clock_0:clock_out -> [Delay10:clock, Delay1:clock, Delay2:clock, Delay5:clock, Delay6:clock, Delay9:clock, Delay:clock, Memory_Delay1:clock, Memory_Delay:clock]
	signal clock_0_clock_output_reset            : std_logic;                     -- Clock_0:aclr_out -> [Delay10:aclr, Delay1:aclr, Delay2:aclr, Delay5:aclr, Delay6:aclr, Delay9:aclr, Delay:aclr, Memory_Delay1:aclr, Memory_Delay:aclr]

begin

	clock_0 : component alt_dspbuilder_clock_GNQFU4PUDH
		port map (
			clock_out => clock_0_clock_output_clk,   -- clock_output.clk
			aclr_out  => clock_0_clock_output_reset, --             .reset
			clock     => Clock,                      --        clock.clk
			aclr      => reset                       --             .reset
		);

	delay10 : component alt_dspbuilder_delay_GNF54IOIE4
		generic map (
			ClockPhase => "1",
			BitPattern => "0000000000000000",
			width      => 16,
			use_init   => 0,
			delay      => 1
		)
		port map (
			input  => delay9_output_wire,         --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay10_output_wire,        --     output.wire
			sclr   => delay10sclrgnd_output_wire, --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay10sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay10sclrgnd_output_wire  -- output.wire
		);

	delay2 : component alt_dspbuilder_delay_GNF54IOIE4
		generic map (
			ClockPhase => "1",
			BitPattern => "0000000000000000",
			width      => 16,
			use_init   => 0,
			delay      => 1
		)
		port map (
			input  => delay1_output_wire,         --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay2_output_wire,         --     output.wire
			sclr   => delay2sclrgnd_output_wire,  --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay2sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay2sclrgnd_output_wire  -- output.wire
		);

	delay1 : component alt_dspbuilder_delay_GNF54IOIE4
		generic map (
			ClockPhase => "1",
			BitPattern => "0000000000000000",
			width      => 16,
			use_init   => 0,
			delay      => 1
		)
		port map (
			input  => delay_output_wire,          --      input.wire
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

	clken_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => clken,               --  input.wire
			output => clken_0_output_wire  -- output.wire
		);

	delay : component alt_dspbuilder_delay_GNF54IOIE4
		generic map (
			ClockPhase => "1",
			BitPattern => "0000000000000000",
			width      => 16,
			use_init   => 0,
			delay      => 1
		)
		port map (
			input  => data_in_0_output_wire,      --      input.wire
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

	data_00_0 : component alt_dspbuilder_port_GNBO6OMO5Y
		port map (
			input  => delay_output_wire, --  input.wire
			output => data_00            -- output.wire
		);

	data_11_0 : component alt_dspbuilder_port_GNBO6OMO5Y
		port map (
			input  => delay5_output_wire, --  input.wire
			output => data_11             -- output.wire
		);

	data_22_0 : component alt_dspbuilder_port_GNBO6OMO5Y
		port map (
			input  => delay10_output_wire, --  input.wire
			output => data_22              -- output.wire
		);

	data_10_0 : component alt_dspbuilder_port_GNBO6OMO5Y
		port map (
			input  => memory_delay_output_wire, --  input.wire
			output => data_10                   -- output.wire
		);

	data_21_0 : component alt_dspbuilder_port_GNBO6OMO5Y
		port map (
			input  => delay9_output_wire, --  input.wire
			output => data_21             -- output.wire
		);

	data_02_0 : component alt_dspbuilder_port_GNBO6OMO5Y
		port map (
			input  => delay2_output_wire, --  input.wire
			output => data_02             -- output.wire
		);

	data_01_0 : component alt_dspbuilder_port_GNBO6OMO5Y
		port map (
			input  => delay1_output_wire, --  input.wire
			output => data_01             -- output.wire
		);

	data_12_0 : component alt_dspbuilder_port_GNBO6OMO5Y
		port map (
			input  => delay6_output_wire, --  input.wire
			output => data_12             -- output.wire
		);

	memory_delay1 : component alt_dspbuilder_memdelay_GNNHPAZCPO
		generic map (
			RAMTYPE => "AUTO",
			WIDTH   => 16,
			DELAY   => 640
		)
		port map (
			clock     => clock_0_clock_output_clk,              -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,            --           .reset
			input     => delay6_output_wire,                    --      input.wire
			output    => memory_delay1_output_wire,             --     output.wire
			user_aclr => memory_delay1user_aclrgnd_output_wire, --  user_aclr.wire
			ena       => clken_0_output_wire                    --        ena.wire
		);

	memory_delay1user_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => memory_delay1user_aclrgnd_output_wire  -- output.wire
		);

	data_20_0 : component alt_dspbuilder_port_GNBO6OMO5Y
		port map (
			input  => memory_delay1_output_wire, --  input.wire
			output => data_20                    -- output.wire
		);

	delay6 : component alt_dspbuilder_delay_GNF54IOIE4
		generic map (
			ClockPhase => "1",
			BitPattern => "0000000000000000",
			width      => 16,
			use_init   => 0,
			delay      => 1
		)
		port map (
			input  => delay5_output_wire,         --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay6_output_wire,         --     output.wire
			sclr   => delay6sclrgnd_output_wire,  --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay6sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay6sclrgnd_output_wire  -- output.wire
		);

	delay5 : component alt_dspbuilder_delay_GNF54IOIE4
		generic map (
			ClockPhase => "1",
			BitPattern => "0000000000000000",
			width      => 16,
			use_init   => 0,
			delay      => 1
		)
		port map (
			input  => memory_delay_output_wire,   --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay5_output_wire,         --     output.wire
			sclr   => delay5sclrgnd_output_wire,  --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay5sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay5sclrgnd_output_wire  -- output.wire
		);

	memory_delay : component alt_dspbuilder_memdelay_GNNHPAZCPO
		generic map (
			RAMTYPE => "AUTO",
			WIDTH   => 16,
			DELAY   => 640
		)
		port map (
			clock     => clock_0_clock_output_clk,             -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,           --           .reset
			input     => delay2_output_wire,                   --      input.wire
			output    => memory_delay_output_wire,             --     output.wire
			user_aclr => memory_delayuser_aclrgnd_output_wire, --  user_aclr.wire
			ena       => clken_0_output_wire                   --        ena.wire
		);

	memory_delayuser_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => memory_delayuser_aclrgnd_output_wire  -- output.wire
		);

	delay9 : component alt_dspbuilder_delay_GNF54IOIE4
		generic map (
			ClockPhase => "1",
			BitPattern => "0000000000000000",
			width      => 16,
			use_init   => 0,
			delay      => 1
		)
		port map (
			input  => memory_delay1_output_wire,  --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay9_output_wire,         --     output.wire
			sclr   => delay9sclrgnd_output_wire,  --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay9sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay9sclrgnd_output_wire  -- output.wire
		);

	data_in_0 : component alt_dspbuilder_port_GNBO6OMO5Y
		port map (
			input  => data_in,               --  input.wire
			output => data_in_0_output_wire  -- output.wire
		);

end architecture rtl; -- of localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanA_line_buffer
