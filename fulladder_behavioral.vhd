----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:03:31 02/06/2017 
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
    Port ( a : in  STD_LOGIC_VECTOR(2 downto 0);
           sum,carry : out  STD_LOGIC);
end fulladder;

architecture Behavioral of fulladder is

begin
process(a(0),a(1),a(2))
begin
if(a(0)='0' and a(1)='0' and a(2)='0') then sum<='0';carry<='0';
elsif(a(0)='0' and a(1)='0' and a(2)='1') then sum<='1';carry<='0';
elsif(a(0)='0' and a(1)='1' and a(2)='0') then sum<='1';carry<='0';
elsif(a(0)='0' and a(1)='1' and a(2)='1') then sum<='0';carry<='1';
elsif(a(0)='1' and a(1)='0' and a(2)='0') then sum<='1';carry<='0';
elsif(a(0)='1' and a(1)='0' and a(2)='1') then sum<='0';carry<='1';
elsif(a(0)='1' and a(1)='1' and a(2)='0') then sum<='0';carry<='1';
else sum<='1';carry<='1';
end if;
end process;
end Behavioral;

