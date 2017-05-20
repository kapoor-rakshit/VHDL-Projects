
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:59:17 02/06/2017
-- Design Name:   mux_4_1
-- Module Name:   C:/Users/ANIL KAPOOR/Desktop/DSD xilinx/4_1_MUX_behavioral/mux_4_1_test.vhd
-- Project Name:  4_1_MUX_behavioral
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_4_1
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

ENTITY mux_4_1_test_vhd IS
END mux_4_1_test_vhd;

ARCHITECTURE behavior OF mux_4_1_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT mux_4_1
	PORT(
		s : IN std_logic_vector(1 downto 0);
		i : IN std_logic_vector(3 downto 0);          
		o : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL s :  std_logic_vector(1 downto 0) := (others=>'0');
	SIGNAL i :  std_logic_vector(3 downto 0) := (others=>'0');

	--Outputs
	SIGNAL o :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: mux_4_1 PORT MAP(
		s => s,
		i => i,
		o => o
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;
s(0)<='0';s(1)<='0';
wait for 100 ns;
s(0)<='0';s(1)<='1';
wait for 100 ns;
s(0)<='1';s(1)<='0';
wait for 100 ns;
s(0)<='1';s(1)<='1';
		-- Place stimulus here

		wait; -- will wait forever
	END PROCESS;

END;
