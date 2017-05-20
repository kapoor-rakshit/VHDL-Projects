----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:52 04/17/2017 
-- Design Name: 
-- Module Name:    t_flipflop - Behavioral 
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

entity t_flipflop is
    Port ( t,clk,rst : in  STD_LOGIC;
           q,nq : out  STD_LOGIC);
end t_flipflop;

architecture Behavioral of t_flipflop is
begin
q<='0';nq<='1';
process(clk)
variable temp:std_logic;
begin
if(rst='1') then temp:='0';
elsif(clk='1' and clk' event) then 
if(t='0') then temp:='0';
elsif(t='1') then temp:='1';
end if;
end if;
q<=temp;
nq<=not temp;
end process;
end Behavioral;

