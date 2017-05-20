----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:16:15 03/23/2017 
-- Design Name: 
-- Module Name:    D_flipflop - Behavioral 
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

entity D_flipflop is
    Port ( d,clk,rst: in  STD_LOGIC;
           q,nq : out  STD_LOGIC);
end D_flipflop;

architecture Behavioral of D_flipflop is

begin
process(d,clk,rst)
begin
if(rst='1') then q<='0';nq<='1';                      --rst is asyncronous, so if rst=1 immediately make q=0

elsif(clk' event and clk='1') then q<=d;nq<=not d;    --d,q is syncronous, if rst=0 and clk event occurs then assign d, not immmediately
                                                      --clk='1' means rising edge
end if;
end process;

end Behavioral;

