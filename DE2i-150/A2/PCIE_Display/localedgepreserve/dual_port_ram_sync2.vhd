LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dual_port_ram_sync2 IS 
	PORT (
		clock: IN STD_LOGIC;
		data: IN STD_LOGIC_VECTOR(31 downto 0);
		write_address: IN INTEGER RANGE 0 TO 255;
		read_address: IN INTEGER RANGE 0 TO 255;
		we: IN STD_LOGIC;
		q: OUT STD_LOGIC_VECTOR(31 downto 0);
        max: OUT STD_LOGIC_VECTOR(31 downto 0)
	);
END dual_port_ram_sync2;

ARCHITECTURE rtl OF dual_port_ram_sync2 IS
	TYPE MEM IS ARRAY(0 TO 255) OF STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL ram_block: MEM;
BEGIN 
	PROCESS (clock) 
	BEGIN 
		IF (clock'event AND clock = '1') THEN 
			IF (we = '1') THEN 
				ram_block(write_address) <= data;
			END IF;
			q <= ram_block(read_address);
		END IF;
	END PROCESS; 
    max <= ram_block(255);
END rtl;

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	