
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:27:49 02/01/2017
-- Design Name:   fulladder
-- Module Name:   C:/Users/ANIL KAPOOR/Desktop/DSD xilinx/full_adder/fulladdertest.vhd
-- Project Name:  full_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fulladder
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

ENTITY fulladdertest_vhd IS
END fulladdertest_vhd;

ARCHITECTURE behavior OF fulladdertest_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT fulladder
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		c : IN std_logic;          
		s : OUT std_logic;
		cr : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic := '0';
	SIGNAL b :  std_logic := '0';
	SIGNAL c :  std_logic := '0';

	--Outputs
	SIGNAL s :  std_logic;
	SIGNAL cr :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: fulladder PORT MAP(
		a => a,
		b => b,
		c => c,
		s => s,
		cr => cr
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;
a<='0';b<='0';
wait for 100 ns;
a<='0';b<='1';
wait for 100 ns;
a<='1';b<='0';
wait for 100 ns;
a<='1';b<='1';
		-- Place stimulus here

		wait; -- will wait forever
	END PROCESS;

END;
