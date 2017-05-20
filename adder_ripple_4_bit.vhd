----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:02:19 02/13/2017 
-- Design Name: 
-- Module Name:    adder_ripple_4_bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_ripple_4_bit is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           s : out  STD_LOGIC_VECTOR (3 downto 0);
			  carryout: out std_logic;
           carryin : in  STD_LOGIC);
end adder_ripple_4_bit;

architecture Behavioral of adder_ripple_4_bit is
component fulladder is
Port(a,b,c:in STD_LOGIC;
     sum,carry:out STD_LOGIC);
end component;

signal cr:STD_LOGIC_vector(2 downto 0);

begin
u1:fulladder Port map(a(0),b(0),carryin,s(0),cr(0));
u2:fulladder Port map(a(1),b(1),cr(0),s(1),cr(1));
u3:fulladder Port map(a(2),b(2),cr(1),s(2),cr(2));
u4:fulladder Port map(a(3),b(3),cr(2),s(3),carryout);
end Behavioral;

