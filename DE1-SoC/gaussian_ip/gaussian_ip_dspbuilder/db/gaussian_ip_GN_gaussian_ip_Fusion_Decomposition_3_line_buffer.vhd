-- gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_3_line_buffer.vhd

-- Generated using ACDS version 17.1 590

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_3_line_buffer is
	port (
		Clock   : in  std_logic                    := '0';             --   Clock.clk
		reset   : in  std_logic                    := '0';             --        .reset
		data_22 : out std_logic_vector(7 downto 0);                    -- data_22.wire
		data_24 : out std_logic_vector(7 downto 0);                    -- data_24.wire
		data_42 : out std_logic_vector(7 downto 0);                    -- data_42.wire
		data_44 : out std_logic_vector(7 downto 0);                    -- data_44.wire
		data_11 : out std_logic_vector(7 downto 0);                    -- data_11.wire
		data_40 : out std_logic_vector(7 downto 0);                    -- data_40.wire
		data_30 : out std_logic_vector(7 downto 0);                    -- data_30.wire
		clken   : in  std_logic                    := '0';             --   clken.wire
		data_20 : out std_logic_vector(7 downto 0);                    -- data_20.wire
		data_31 : out std_logic_vector(7 downto 0);                    -- data_31.wire
		data_03 : out std_logic_vector(7 downto 0);                    -- data_03.wire
		data_14 : out std_logic_vector(7 downto 0);                    -- data_14.wire
		data_in : in  std_logic_vector(7 downto 0) := (others => '0'); -- data_in.wire
		data_21 : out std_logic_vector(7 downto 0);                    -- data_21.wire
		data_12 : out std_logic_vector(7 downto 0);                    -- data_12.wire
		data_01 : out std_logic_vector(7 downto 0);                    -- data_01.wire
		data_41 : out std_logic_vector(7 downto 0);                    -- data_41.wire
		data_32 : out std_logic_vector(7 downto 0);                    -- data_32.wire
		data_10 : out std_logic_vector(7 downto 0);                    -- data_10.wire
		data_13 : out std_logic_vector(7 downto 0);                    -- data_13.wire
		data_23 : out std_logic_vector(7 downto 0);                    -- data_23.wire
		data_02 : out std_logic_vector(7 downto 0);                    -- data_02.wire
		data_00 : out std_logic_vector(7 downto 0);                    -- data_00.wire
		data_04 : out std_logic_vector(7 downto 0);                    -- data_04.wire
		data_33 : out std_logic_vector(7 downto 0);                    -- data_33.wire
		data_43 : out std_logic_vector(7 downto 0);                    -- data_43.wire
		data_34 : out std_logic_vector(7 downto 0)                     -- data_34.wire
	);
end entity gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_3_line_buffer;

architecture rtl of gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_3_line_buffer is
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

	component alt_dspbuilder_delay_GNB2ILTO6J is
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
	end component alt_dspbuilder_delay_GNB2ILTO6J;

	component alt_dspbuilder_memdelay_GNOSZN6L7S is
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
	end component alt_dspbuilder_memdelay_GNOSZN6L7S;

	component alt_dspbuilder_port_GN37ALZBS4 is
		port (
			input  : in  std_logic := 'X'; -- wire
			output : out std_logic         -- wire
		);
	end component alt_dspbuilder_port_GN37ALZBS4;

	signal delaysclrgnd_output_wire              : std_logic;                    -- DelaysclrGND:output -> Delay:sclr
	signal delay20sclrgnd_output_wire            : std_logic;                    -- Delay20sclrGND:output -> Delay20:sclr
	signal memory_delay3user_aclrgnd_output_wire : std_logic;                    -- Memory_Delay3user_aclrGND:output -> Memory_Delay3:user_aclr
	signal memory_delay1user_aclrgnd_output_wire : std_logic;                    -- Memory_Delay1user_aclrGND:output -> Memory_Delay1:user_aclr
	signal memory_delay2user_aclrgnd_output_wire : std_logic;                    -- Memory_Delay2user_aclrGND:output -> Memory_Delay2:user_aclr
	signal delay11sclrgnd_output_wire            : std_logic;                    -- Delay11sclrGND:output -> Delay11:sclr
	signal delay10sclrgnd_output_wire            : std_logic;                    -- Delay10sclrGND:output -> Delay10:sclr
	signal delay13sclrgnd_output_wire            : std_logic;                    -- Delay13sclrGND:output -> Delay13:sclr
	signal delay2sclrgnd_output_wire             : std_logic;                    -- Delay2sclrGND:output -> Delay2:sclr
	signal delay1sclrgnd_output_wire             : std_logic;                    -- Delay1sclrGND:output -> Delay1:sclr
	signal delay12sclrgnd_output_wire            : std_logic;                    -- Delay12sclrGND:output -> Delay12:sclr
	signal delay15sclrgnd_output_wire            : std_logic;                    -- Delay15sclrGND:output -> Delay15:sclr
	signal delay14sclrgnd_output_wire            : std_logic;                    -- Delay14sclrGND:output -> Delay14:sclr
	signal delay17sclrgnd_output_wire            : std_logic;                    -- Delay17sclrGND:output -> Delay17:sclr
	signal delay16sclrgnd_output_wire            : std_logic;                    -- Delay16sclrGND:output -> Delay16:sclr
	signal delay19sclrgnd_output_wire            : std_logic;                    -- Delay19sclrGND:output -> Delay19:sclr
	signal delay18sclrgnd_output_wire            : std_logic;                    -- Delay18sclrGND:output -> Delay18:sclr
	signal delay6sclrgnd_output_wire             : std_logic;                    -- Delay6sclrGND:output -> Delay6:sclr
	signal delay5sclrgnd_output_wire             : std_logic;                    -- Delay5sclrGND:output -> Delay5:sclr
	signal memory_delayuser_aclrgnd_output_wire  : std_logic;                    -- Memory_Delayuser_aclrGND:output -> Memory_Delay:user_aclr
	signal delay4sclrgnd_output_wire             : std_logic;                    -- Delay4sclrGND:output -> Delay4:sclr
	signal delay3sclrgnd_output_wire             : std_logic;                    -- Delay3sclrGND:output -> Delay3:sclr
	signal delay9sclrgnd_output_wire             : std_logic;                    -- Delay9sclrGND:output -> Delay9:sclr
	signal delay8sclrgnd_output_wire             : std_logic;                    -- Delay8sclrGND:output -> Delay8:sclr
	signal delay7sclrgnd_output_wire             : std_logic;                    -- Delay7sclrGND:output -> Delay7:sclr
	signal delay_output_wire                     : std_logic_vector(7 downto 0); -- Delay:output -> [Delay1:input, data_00_0:input]
	signal delay10_output_wire                   : std_logic_vector(7 downto 0); -- Delay10:output -> [Delay11:input, data_22_0:input]
	signal delay11_output_wire                   : std_logic_vector(7 downto 0); -- Delay11:output -> [Delay12:input, data_23_0:input]
	signal delay13_output_wire                   : std_logic_vector(7 downto 0); -- Delay13:output -> [Delay14:input, data_31_0:input]
	signal delay14_output_wire                   : std_logic_vector(7 downto 0); -- Delay14:output -> [Delay15:input, data_32_0:input]
	signal delay15_output_wire                   : std_logic_vector(7 downto 0); -- Delay15:output -> [Delay16:input, data_33_0:input]
	signal delay17_output_wire                   : std_logic_vector(7 downto 0); -- Delay17:output -> [Delay18:input, data_41_0:input]
	signal delay18_output_wire                   : std_logic_vector(7 downto 0); -- Delay18:output -> [Delay19:input, data_42_0:input]
	signal delay1_output_wire                    : std_logic_vector(7 downto 0); -- Delay1:output -> [Delay2:input, data_01_0:input]
	signal delay19_output_wire                   : std_logic_vector(7 downto 0); -- Delay19:output -> [Delay20:input, data_43_0:input]
	signal delay2_output_wire                    : std_logic_vector(7 downto 0); -- Delay2:output -> [Delay3:input, data_02_0:input]
	signal delay3_output_wire                    : std_logic_vector(7 downto 0); -- Delay3:output -> [Delay4:input, data_03_0:input]
	signal delay5_output_wire                    : std_logic_vector(7 downto 0); -- Delay5:output -> [Delay6:input, data_11_0:input]
	signal delay6_output_wire                    : std_logic_vector(7 downto 0); -- Delay6:output -> [Delay7:input, data_12_0:input]
	signal delay7_output_wire                    : std_logic_vector(7 downto 0); -- Delay7:output -> [Delay8:input, data_13_0:input]
	signal delay9_output_wire                    : std_logic_vector(7 downto 0); -- Delay9:output -> [Delay10:input, data_21_0:input]
	signal clken_0_output_wire                   : std_logic;                    -- clken_0:output -> [Delay10:ena, Delay11:ena, Delay12:ena, Delay13:ena, Delay14:ena, Delay15:ena, Delay16:ena, Delay17:ena, Delay18:ena, Delay19:ena, Delay1:ena, Delay20:ena, Delay2:ena, Delay3:ena, Delay4:ena, Delay5:ena, Delay6:ena, Delay7:ena, Delay8:ena, Delay9:ena, Delay:ena, Memory_Delay1:ena, Memory_Delay2:ena, Memory_Delay3:ena, Memory_Delay:ena]
	signal data_in_0_output_wire                 : std_logic_vector(7 downto 0); -- data_in_0:output -> Delay:input
	signal delay4_output_wire                    : std_logic_vector(7 downto 0); -- Delay4:output -> [Memory_Delay:input, data_04_0:input]
	signal memory_delay_output_wire              : std_logic_vector(7 downto 0); -- Memory_Delay:output -> [Delay5:input, data_10_0:input]
	signal delay8_output_wire                    : std_logic_vector(7 downto 0); -- Delay8:output -> [Memory_Delay1:input, data_14_0:input]
	signal memory_delay1_output_wire             : std_logic_vector(7 downto 0); -- Memory_Delay1:output -> [Delay9:input, data_20_0:input]
	signal delay12_output_wire                   : std_logic_vector(7 downto 0); -- Delay12:output -> [Memory_Delay2:input, data_24_0:input]
	signal memory_delay2_output_wire             : std_logic_vector(7 downto 0); -- Memory_Delay2:output -> [Delay13:input, data_30_0:input]
	signal delay16_output_wire                   : std_logic_vector(7 downto 0); -- Delay16:output -> [Memory_Delay3:input, data_34_0:input]
	signal memory_delay3_output_wire             : std_logic_vector(7 downto 0); -- Memory_Delay3:output -> [Delay17:input, data_40_0:input]
	signal delay20_output_wire                   : std_logic_vector(7 downto 0); -- Delay20:output -> data_44_0:input
	signal clock_0_clock_output_clk              : std_logic;                    -- Clock_0:clock_out -> [Delay10:clock, Delay11:clock, Delay12:clock, Delay13:clock, Delay14:clock, Delay15:clock, Delay16:clock, Delay17:clock, Delay18:clock, Delay19:clock, Delay1:clock, Delay20:clock, Delay2:clock, Delay3:clock, Delay4:clock, Delay5:clock, Delay6:clock, Delay7:clock, Delay8:clock, Delay9:clock, Delay:clock, Memory_Delay1:clock, Memory_Delay2:clock, Memory_Delay3:clock, Memory_Delay:clock]
	signal clock_0_clock_output_reset            : std_logic;                    -- Clock_0:aclr_out -> [Delay10:aclr, Delay11:aclr, Delay12:aclr, Delay13:aclr, Delay14:aclr, Delay15:aclr, Delay16:aclr, Delay17:aclr, Delay18:aclr, Delay19:aclr, Delay1:aclr, Delay20:aclr, Delay2:aclr, Delay3:aclr, Delay4:aclr, Delay5:aclr, Delay6:aclr, Delay7:aclr, Delay8:aclr, Delay9:aclr, Delay:aclr, Memory_Delay1:aclr, Memory_Delay2:aclr, Memory_Delay3:aclr, Memory_Delay:aclr]

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

	data_33_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay15_output_wire, --  input.wire
			output => data_33              -- output.wire
		);

	data_32_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay14_output_wire, --  input.wire
			output => data_32              -- output.wire
		);

	data_34_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay16_output_wire, --  input.wire
			output => data_34              -- output.wire
		);

	data_31_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay13_output_wire, --  input.wire
			output => data_31              -- output.wire
		);

	data_30_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => memory_delay2_output_wire, --  input.wire
			output => data_30                    -- output.wire
		);

	data_00_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay_output_wire, --  input.wire
			output => data_00            -- output.wire
		);

	data_44_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay20_output_wire, --  input.wire
			output => data_44              -- output.wire
		);

	data_43_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay19_output_wire, --  input.wire
			output => data_43              -- output.wire
		);

	data_02_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay2_output_wire, --  input.wire
			output => data_02             -- output.wire
		);

	data_01_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay1_output_wire, --  input.wire
			output => data_01             -- output.wire
		);

	data_40_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => memory_delay3_output_wire, --  input.wire
			output => data_40                    -- output.wire
		);

	data_42_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay18_output_wire, --  input.wire
			output => data_42              -- output.wire
		);

	data_41_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay17_output_wire, --  input.wire
			output => data_41              -- output.wire
		);

	data_04_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay4_output_wire, --  input.wire
			output => data_04             -- output.wire
		);

	data_03_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay3_output_wire, --  input.wire
			output => data_03             -- output.wire
		);

	delay20 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
		)
		port map (
			input  => delay19_output_wire,        --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay20_output_wire,        --     output.wire
			sclr   => delay20sclrgnd_output_wire, --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay20sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay20sclrgnd_output_wire  -- output.wire
		);

	data_11_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay5_output_wire, --  input.wire
			output => data_11             -- output.wire
		);

	data_10_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => memory_delay_output_wire, --  input.wire
			output => data_10                   -- output.wire
		);

	data_13_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay7_output_wire, --  input.wire
			output => data_13             -- output.wire
		);

	data_12_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay6_output_wire, --  input.wire
			output => data_12             -- output.wire
		);

	memory_delay3 : component alt_dspbuilder_memdelay_GNOSZN6L7S
		generic map (
			RAMTYPE => "AUTO",
			WIDTH   => 8,
			DELAY   => 2608
		)
		port map (
			clock     => clock_0_clock_output_clk,              -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,            --           .reset
			input     => delay16_output_wire,                   --      input.wire
			output    => memory_delay3_output_wire,             --     output.wire
			user_aclr => memory_delay3user_aclrgnd_output_wire, --  user_aclr.wire
			ena       => clken_0_output_wire                    --        ena.wire
		);

	memory_delay3user_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => memory_delay3user_aclrgnd_output_wire  -- output.wire
		);

	memory_delay1 : component alt_dspbuilder_memdelay_GNOSZN6L7S
		generic map (
			RAMTYPE => "AUTO",
			WIDTH   => 8,
			DELAY   => 2608
		)
		port map (
			clock     => clock_0_clock_output_clk,              -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,            --           .reset
			input     => delay8_output_wire,                    --      input.wire
			output    => memory_delay1_output_wire,             --     output.wire
			user_aclr => memory_delay1user_aclrgnd_output_wire, --  user_aclr.wire
			ena       => clken_0_output_wire                    --        ena.wire
		);

	memory_delay1user_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => memory_delay1user_aclrgnd_output_wire  -- output.wire
		);

	memory_delay2 : component alt_dspbuilder_memdelay_GNOSZN6L7S
		generic map (
			RAMTYPE => "AUTO",
			WIDTH   => 8,
			DELAY   => 2608
		)
		port map (
			clock     => clock_0_clock_output_clk,              -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,            --           .reset
			input     => delay12_output_wire,                   --      input.wire
			output    => memory_delay2_output_wire,             --     output.wire
			user_aclr => memory_delay2user_aclrgnd_output_wire, --  user_aclr.wire
			ena       => clken_0_output_wire                    --        ena.wire
		);

	memory_delay2user_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => memory_delay2user_aclrgnd_output_wire  -- output.wire
		);

	data_14_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay8_output_wire, --  input.wire
			output => data_14             -- output.wire
		);

	data_in_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => data_in,               --  input.wire
			output => data_in_0_output_wire  -- output.wire
		);

	delay11 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
		)
		port map (
			input  => delay10_output_wire,        --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay11_output_wire,        --     output.wire
			sclr   => delay11sclrgnd_output_wire, --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay11sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay11sclrgnd_output_wire  -- output.wire
		);

	delay10 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
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

	delay13 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
		)
		port map (
			input  => memory_delay2_output_wire,  --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay13_output_wire,        --     output.wire
			sclr   => delay13sclrgnd_output_wire, --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay13sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay13sclrgnd_output_wire  -- output.wire
		);

	delay2 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
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

	delay1 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
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

	delay12 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
		)
		port map (
			input  => delay11_output_wire,        --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay12_output_wire,        --     output.wire
			sclr   => delay12sclrgnd_output_wire, --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay12sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay12sclrgnd_output_wire  -- output.wire
		);

	delay15 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
		)
		port map (
			input  => delay14_output_wire,        --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay15_output_wire,        --     output.wire
			sclr   => delay15sclrgnd_output_wire, --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay15sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay15sclrgnd_output_wire  -- output.wire
		);

	delay14 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
		)
		port map (
			input  => delay13_output_wire,        --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay14_output_wire,        --     output.wire
			sclr   => delay14sclrgnd_output_wire, --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay14sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay14sclrgnd_output_wire  -- output.wire
		);

	delay17 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
		)
		port map (
			input  => memory_delay3_output_wire,  --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay17_output_wire,        --     output.wire
			sclr   => delay17sclrgnd_output_wire, --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay17sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay17sclrgnd_output_wire  -- output.wire
		);

	delay16 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
		)
		port map (
			input  => delay15_output_wire,        --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay16_output_wire,        --     output.wire
			sclr   => delay16sclrgnd_output_wire, --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay16sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay16sclrgnd_output_wire  -- output.wire
		);

	delay19 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
		)
		port map (
			input  => delay18_output_wire,        --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay19_output_wire,        --     output.wire
			sclr   => delay19sclrgnd_output_wire, --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay19sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay19sclrgnd_output_wire  -- output.wire
		);

	delay18 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
		)
		port map (
			input  => delay17_output_wire,        --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay18_output_wire,        --     output.wire
			sclr   => delay18sclrgnd_output_wire, --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay18sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay18sclrgnd_output_wire  -- output.wire
		);

	clken_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => clken,               --  input.wire
			output => clken_0_output_wire  -- output.wire
		);

	data_22_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay10_output_wire, --  input.wire
			output => data_22              -- output.wire
		);

	data_21_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay9_output_wire, --  input.wire
			output => data_21             -- output.wire
		);

	data_24_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay12_output_wire, --  input.wire
			output => data_24              -- output.wire
		);

	data_23_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => delay11_output_wire, --  input.wire
			output => data_23              -- output.wire
		);

	data_20_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => memory_delay1_output_wire, --  input.wire
			output => data_20                    -- output.wire
		);

	delay6 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
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

	delay5 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
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

	memory_delay : component alt_dspbuilder_memdelay_GNOSZN6L7S
		generic map (
			RAMTYPE => "AUTO",
			WIDTH   => 8,
			DELAY   => 2608
		)
		port map (
			clock     => clock_0_clock_output_clk,             -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,           --           .reset
			input     => delay4_output_wire,                   --      input.wire
			output    => memory_delay_output_wire,             --     output.wire
			user_aclr => memory_delayuser_aclrgnd_output_wire, --  user_aclr.wire
			ena       => clken_0_output_wire                   --        ena.wire
		);

	memory_delayuser_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => memory_delayuser_aclrgnd_output_wire  -- output.wire
		);

	delay4 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
		)
		port map (
			input  => delay3_output_wire,         --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay4_output_wire,         --     output.wire
			sclr   => delay4sclrgnd_output_wire,  --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay4sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay4sclrgnd_output_wire  -- output.wire
		);

	delay3 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
		)
		port map (
			input  => delay2_output_wire,         --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay3_output_wire,         --     output.wire
			sclr   => delay3sclrgnd_output_wire,  --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay3sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay3sclrgnd_output_wire  -- output.wire
		);

	delay9 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
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

	delay8 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
		)
		port map (
			input  => delay7_output_wire,         --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay8_output_wire,         --     output.wire
			sclr   => delay8sclrgnd_output_wire,  --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay8sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay8sclrgnd_output_wire  -- output.wire
		);

	delay7 : component alt_dspbuilder_delay_GNB2ILTO6J
		generic map (
			ClockPhase => "1",
			BitPattern => "00000001",
			width      => 8,
			use_init   => 0,
			delay      => 4
		)
		port map (
			input  => delay6_output_wire,         --      input.wire
			clock  => clock_0_clock_output_clk,   -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset, --           .reset
			output => delay7_output_wire,         --     output.wire
			sclr   => delay7sclrgnd_output_wire,  --       sclr.wire
			ena    => clken_0_output_wire         --        ena.wire
		);

	delay7sclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delay7sclrgnd_output_wire  -- output.wire
		);

end architecture rtl; -- of gaussian_ip_GN_gaussian_ip_Fusion_Decomposition_3_line_buffer
