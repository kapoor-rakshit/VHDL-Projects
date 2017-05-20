
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:35:30 03/09/2017
-- Design Name:   decoder_3_8
-- Module Name:   C:/Users/ANIL KAPOOR/Desktop/DSD xilinx/decoder_3_8/decoder_3_8_test.vhd
-- Project Name:  decoder_3_8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder_3_8
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY decoder_3_8_test_vhd IS
END decoder_3_8_test_vhd;

ARCHITECTURE behavior OF decoder_3_8_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT decoder_3_8
	PORT(
		inp : IN std_logic_vector(2 downto 0);          
		op : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL inp :  std_logic_vector(2 downto 0) := (others=>'0');

	--Outputs
	SIGNAL op :  std_logic_vector(7 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: decoder_3_8 PORT MAP(
		inp => inp,
		op => op
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;

		-- Place stimulus here

		wait; -- will wait forever
	END PROCESS;

END;
