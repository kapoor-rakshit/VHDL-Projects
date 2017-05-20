----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:49:08 04/13/2017 
-- Design Name: 
-- Module Name:    JK_flipflop - Behavioral 
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


entity JK_flipflop is
    Port ( j,k,clk,rst : in  STD_LOGIC;
           q,nq : out  STD_LOGIC);
end JK_flipflop;

architecture Behavioral of JK_flipflop is
signal previous_stage,current_stage : std_logic;
begin
process(j,k,clk)

variable temp:std_logic;

begin
if(rst='1') then temp:='0';
elsif(clk' event and clk='1') then
if(j<='0' and k<='1') then temp:='0';
elsif(j<='1' and k<='0') then temp:='1';
elsif(j<='0' and k<='0')then temp:=temp;
elsif(j<='1' and k<='1') then temp:=not temp;
end if;
end if;
q<=temp;
nq<=not temp;
end process;
end Behavioral;

