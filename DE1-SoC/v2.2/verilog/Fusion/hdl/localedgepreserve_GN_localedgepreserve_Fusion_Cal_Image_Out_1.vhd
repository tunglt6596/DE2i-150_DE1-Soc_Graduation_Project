-- localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1.vhd

-- Generated using ACDS version 17.1 590

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1 is
	port (
		Clock    : in  std_logic                     := '0';             --    Clock.clk
		reset    : in  std_logic                     := '0';             --         .reset
		a_in     : in  std_logic_vector(15 downto 0) := (others => '0'); --     a_in.wire
		b_in     : in  std_logic_vector(15 downto 0) := (others => '0'); --     b_in.wire
		pixel_in : in  std_logic_vector(7 downto 0)  := (others => '0'); -- pixel_in.wire
		p_vis    : out std_logic_vector(15 downto 0);                    --    p_vis.wire
		valid_in : in  std_logic                     := '0'              -- valid_in.wire
	);
end entity localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1;

architecture rtl of localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1 is
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

	component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanB is
		port (
			valid_in : in  std_logic                     := 'X';             -- wire
			b_in     : in  std_logic_vector(15 downto 0) := (others => 'X'); -- wire
			b_out    : out std_logic_vector(15 downto 0);                    -- wire
			Clock    : in  std_logic                     := 'X';             -- clk
			reset    : in  std_logic                     := 'X'              -- reset
		);
	end component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanB;

	component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanA is
		port (
			a_out    : out std_logic_vector(7 downto 0);                     -- wire
			valid_in : in  std_logic                     := 'X';             -- wire
			a_in     : in  std_logic_vector(15 downto 0) := (others => 'X'); -- wire
			Clock    : in  std_logic                     := 'X';             -- clk
			reset    : in  std_logic                     := 'X'              -- reset
		);
	end component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanA;

	component alt_dspbuilder_port_GNBO6OMO5Y is
		port (
			input  : in  std_logic_vector(15 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(15 downto 0)                     -- wire
		);
	end component alt_dspbuilder_port_GNBO6OMO5Y;

	component alt_dspbuilder_port_GNA5S4SQDN is
		port (
			input  : in  std_logic_vector(7 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(7 downto 0)                     -- wire
		);
	end component alt_dspbuilder_port_GNA5S4SQDN;

	component alt_dspbuilder_multiplier_GN64HZKYCA is
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
	end component alt_dspbuilder_multiplier_GN64HZKYCA;

	component alt_dspbuilder_gnd_GN is
		port (
			output : out std_logic   -- wire
		);
	end component alt_dspbuilder_gnd_GN;

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

	component alt_dspbuilder_memdelay_GNFVL4YT66 is
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
	end component alt_dspbuilder_memdelay_GNFVL4YT66;

	component alt_dspbuilder_delay_GN3E5TB7KU is
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
	end component alt_dspbuilder_delay_GN3E5TB7KU;

	component alt_dspbuilder_cast_GNY3CPVYVD is
		generic (
			round    : natural := 0;
			saturate : natural := 0
		);
		port (
			input  : in  std_logic_vector(7 downto 0) := (others => 'X'); -- wire
			output : out std_logic_vector(7 downto 0)                     -- wire
		);
	end component alt_dspbuilder_cast_GNY3CPVYVD;

	signal multiplieruser_aclrgnd_output_wire                          : std_logic;                     -- Multiplieruser_aclrGND:output -> Multiplier:user_aclr
	signal pipelined_adderuser_aclrgnd_output_wire                     : std_logic;                     -- Pipelined_Adderuser_aclrGND:output -> Pipelined_Adder:user_aclr
	signal memory_delayuser_aclrgnd_output_wire                        : std_logic;                     -- Memory_Delayuser_aclrGND:output -> Memory_Delay:user_aclr
	signal delaysclrgnd_output_wire                                    : std_logic;                     -- DelaysclrGND:output -> Delay:sclr
	signal localedgepreserve_fusion_cal_image_out_1_meanb_0_b_out_wire : std_logic_vector(15 downto 0); -- localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_0:b_out -> Delay:input
	signal valid_in_0_output_wire                                      : std_logic;                     -- valid_in_0:output -> [Delay:ena, Memory_Delay:ena, Multiplier:ena, Pipelined_Adder:ena, localedgepreserve_Fusion_Cal_Image_Out_1_MeanA_0:valid_in, localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_0:valid_in]
	signal a_in_0_output_wire                                          : std_logic_vector(15 downto 0); -- a_in_0:output -> localedgepreserve_Fusion_Cal_Image_Out_1_MeanA_0:a_in
	signal b_in_0_output_wire                                          : std_logic_vector(15 downto 0); -- b_in_0:output -> localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_0:b_in
	signal pixel_in_0_output_wire                                      : std_logic_vector(7 downto 0);  -- pixel_in_0:output -> Memory_Delay:input
	signal localedgepreserve_fusion_cal_image_out_1_meana_0_a_out_wire : std_logic_vector(7 downto 0);  -- localedgepreserve_Fusion_Cal_Image_Out_1_MeanA_0:a_out -> Multiplier:datab
	signal multiplier_result_wire                                      : std_logic_vector(15 downto 0); -- Multiplier:result -> Pipelined_Adder:dataa
	signal delay_output_wire                                           : std_logic_vector(15 downto 0); -- Delay:output -> Pipelined_Adder:datab
	signal pipelined_adder_result_wire                                 : std_logic_vector(15 downto 0); -- Pipelined_Adder:result -> p_vis_0:input
	signal memory_delay_output_wire                                    : std_logic_vector(7 downto 0);  -- Memory_Delay:output -> cast41:input
	signal cast41_output_wire                                          : std_logic_vector(7 downto 0);  -- cast41:output -> Multiplier:dataa
	signal clock_0_clock_output_clk                                    : std_logic;                     -- Clock_0:clock_out -> [Delay:clock, Memory_Delay:clock, Multiplier:clock, Pipelined_Adder:clock, localedgepreserve_Fusion_Cal_Image_Out_1_MeanA_0:Clock, localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_0:Clock]
	signal clock_0_clock_output_reset                                  : std_logic;                     -- Clock_0:aclr_out -> [Delay:aclr, Memory_Delay:aclr, Multiplier:aclr, Pipelined_Adder:aclr, localedgepreserve_Fusion_Cal_Image_Out_1_MeanA_0:reset, localedgepreserve_Fusion_Cal_Image_Out_1_MeanB_0:reset]

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

	localedgepreserve_fusion_cal_image_out_1_meanb_0 : component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanB
		port map (
			valid_in => valid_in_0_output_wire,                                      -- valid_in.wire
			b_in     => b_in_0_output_wire,                                          --     b_in.wire
			b_out    => localedgepreserve_fusion_cal_image_out_1_meanb_0_b_out_wire, --    b_out.wire
			Clock    => clock_0_clock_output_clk,                                    --    Clock.clk
			reset    => clock_0_clock_output_reset                                   --         .reset
		);

	localedgepreserve_fusion_cal_image_out_1_meana_0 : component localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1_MeanA
		port map (
			a_out    => localedgepreserve_fusion_cal_image_out_1_meana_0_a_out_wire, --    a_out.wire
			valid_in => valid_in_0_output_wire,                                      -- valid_in.wire
			a_in     => a_in_0_output_wire,                                          --     a_in.wire
			Clock    => clock_0_clock_output_clk,                                    --    Clock.clk
			reset    => clock_0_clock_output_reset                                   --         .reset
		);

	p_vis_0 : component alt_dspbuilder_port_GNBO6OMO5Y
		port map (
			input  => pipelined_adder_result_wire, --  input.wire
			output => p_vis                        -- output.wire
		);

	pixel_in_0 : component alt_dspbuilder_port_GNA5S4SQDN
		port map (
			input  => pixel_in,               --  input.wire
			output => pixel_in_0_output_wire  -- output.wire
		);

	multiplier : component alt_dspbuilder_multiplier_GN64HZKYCA
		generic map (
			aWidth                         => 8,
			Signed                         => 0,
			bWidth                         => 8,
			DEDICATED_MULTIPLIER_CIRCUITRY => "YES",
			pipeline                       => 1,
			OutputLsb                      => 0,
			OutputMsb                      => 15
		)
		port map (
			clock     => clock_0_clock_output_clk,                                    -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,                                  --           .reset
			dataa     => cast41_output_wire,                                          --      dataa.wire
			datab     => localedgepreserve_fusion_cal_image_out_1_meana_0_a_out_wire, --      datab.wire
			result    => multiplier_result_wire,                                      --     result.wire
			user_aclr => multiplieruser_aclrgnd_output_wire,                          --  user_aclr.wire
			ena       => valid_in_0_output_wire                                       --        ena.wire
		);

	multiplieruser_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => multiplieruser_aclrgnd_output_wire  -- output.wire
		);

	pipelined_adder : component alt_dspbuilder_pipelined_adder_GNTWZRTG4I
		generic map (
			pipeline => 1,
			width    => 16
		)
		port map (
			clock     => clock_0_clock_output_clk,                -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,              --           .reset
			dataa     => multiplier_result_wire,                  --      dataa.wire
			datab     => delay_output_wire,                       --      datab.wire
			result    => pipelined_adder_result_wire,             --     result.wire
			user_aclr => pipelined_adderuser_aclrgnd_output_wire, --  user_aclr.wire
			ena       => valid_in_0_output_wire                   --        ena.wire
		);

	pipelined_adderuser_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => pipelined_adderuser_aclrgnd_output_wire  -- output.wire
		);

	memory_delay : component alt_dspbuilder_memdelay_GNFVL4YT66
		generic map (
			RAMTYPE => "AUTO",
			WIDTH   => 8,
			DELAY   => 649
		)
		port map (
			clock     => clock_0_clock_output_clk,             -- clock_aclr.clk
			aclr      => clock_0_clock_output_reset,           --           .reset
			input     => pixel_in_0_output_wire,               --      input.wire
			output    => memory_delay_output_wire,             --     output.wire
			user_aclr => memory_delayuser_aclrgnd_output_wire, --  user_aclr.wire
			ena       => valid_in_0_output_wire                --        ena.wire
		);

	memory_delayuser_aclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => memory_delayuser_aclrgnd_output_wire  -- output.wire
		);

	a_in_0 : component alt_dspbuilder_port_GNBO6OMO5Y
		port map (
			input  => a_in,               --  input.wire
			output => a_in_0_output_wire  -- output.wire
		);

	delay : component alt_dspbuilder_delay_GN3E5TB7KU
		generic map (
			ClockPhase => "1",
			BitPattern => "0000000100000000",
			width      => 16,
			use_init   => 0,
			delay      => 1
		)
		port map (
			input  => localedgepreserve_fusion_cal_image_out_1_meanb_0_b_out_wire, --      input.wire
			clock  => clock_0_clock_output_clk,                                    -- clock_aclr.clk
			aclr   => clock_0_clock_output_reset,                                  --           .reset
			output => delay_output_wire,                                           --     output.wire
			sclr   => delaysclrgnd_output_wire,                                    --       sclr.wire
			ena    => valid_in_0_output_wire                                       --        ena.wire
		);

	delaysclrgnd : component alt_dspbuilder_gnd_GN
		port map (
			output => delaysclrgnd_output_wire  -- output.wire
		);

	b_in_0 : component alt_dspbuilder_port_GNBO6OMO5Y
		port map (
			input  => b_in,               --  input.wire
			output => b_in_0_output_wire  -- output.wire
		);

	cast41 : component alt_dspbuilder_cast_GNY3CPVYVD
		generic map (
			round    => 0,
			saturate => 0
		)
		port map (
			input  => memory_delay_output_wire, --  input.wire
			output => cast41_output_wire        -- output.wire
		);

end architecture rtl; -- of localedgepreserve_GN_localedgepreserve_Fusion_Cal_Image_Out_1
