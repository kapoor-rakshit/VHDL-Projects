----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:57:00 02/02/2017 
-- Design Name: 
-- Module Name:    fulladder - Behavioral 
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

entity fulladder is
    Port ( a,b,c : in  STD_LOGIC;
           sum,carry : out  STD_LOGIC);
end fulladder;

architecture Behavioral of fulladder is

component halfadder is
Port(a,b:in STD_LOGIC;
     sum,carry:out STD_LOGIC);
end component;

component orgate is
Port(a,b:in STD_LOGIC;
     c:out STD_LOGIC);
end component;

signal sum1,carry1,carry2:STD_LOGIC;

begin
P1:halfadder Port map(a,b,sum1,carry1);
P2:halfadder Port map(sum1,c,sum,carry2);
P3:orgate Port map(carry1,carry2,carry);

end Behavioral;

