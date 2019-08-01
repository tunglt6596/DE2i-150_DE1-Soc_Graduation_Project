--------------------------------------------------------------------------------------------
-- DSP Builder (Version 9.1)
-- Quartus II development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: © 2001 Altera Corporation. All rights reserved.  Your use of Altera 
-- Corporation's design tools, logic functions and other software and tools, and its 
-- AMPP partner logic functions, and any output files any of the foregoing 
-- (including device programming or simulation files), and any associated 
-- documentation or information are expressly subject to the terms and conditions 
-- of the Altera Program License Subscription Agreement, Altera MegaCore Function 
-- License Agreement, or other applicable license agreement, including, without 
-- limitation, that your use is for the sole purpose of programming logic devices 
-- manufactured by Altera and sold by Altera or its authorized distributors.  
-- Please refer to the applicable agreement for further details.
--------------------------------------------------------------------------------------------



LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

library altera;
use altera.alt_dspbuilder_package.all;

ENTITY alt_dspbuilder_sCFifoAltr IS
	GENERIC
	(
		width					: natural := 8; 
		widthud					: natural := 8; 
		numwords				: natural := 256; 
		lpm_hint				: string  := "RAM_BLOCK_TYPE=AUTO";
		intended_device_family	: string  := "STRATIX";
		showahead_mode			: string  := "OFF";
		use_eab					: string  := "ON"
	);	
	
	PORT
	(
		data	: IN STD_LOGIC_VECTOR (width-1 DOWNTO 0);
		wrreq	: IN STD_LOGIC ;
		rdreq	: IN STD_LOGIC ;
		clock	: IN STD_LOGIC ;
		aclr	: IN STD_LOGIC ;
        user_aclr	: IN STD_LOGIC ;
		sclr	: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (width-1 DOWNTO 0);
		full	: OUT STD_LOGIC ;
		empty	: OUT STD_LOGIC ;
		usedw	: OUT STD_LOGIC_VECTOR (widthud-1 DOWNTO 0)
	);
END alt_dspbuilder_sCFifoAltr;


ARCHITECTURE SYN OF alt_dspbuilder_sCFifoAltr IS
signal aclr_i : std_logic;

BEGIN
    aclr_i <= aclr or user_aclr;

	U0 : scfifo
	GENERIC MAP (
		intended_device_family => intended_device_family,
		lpm_width              => width                 ,
		lpm_numwords           => numwords              ,
		lpm_widthu             => widthud               ,
		lpm_type               => "scfifo"              ,
		lpm_showahead          => showahead_mode        ,
		overflow_checking      => "ON"                  ,
		underflow_checking     => "ON"                  ,
		use_eab                => use_eab               ,
		lpm_hint               => lpm_hint
	)
	PORT MAP (
		rdreq => rdreq ,
		clock => clock ,
		aclr  => aclr_i  ,
		sclr  => sclr  ,
		wrreq => wrreq ,
		data  => data  ,
		usedw => usedw ,
		empty => empty ,
		q     => q     ,
		full  => full
	);

END SYN;



