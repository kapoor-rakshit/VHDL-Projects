----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:00:59 03/23/2017 
-- Design Name: 
-- Module Name:    SR_flipflop - Behavioral 
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

entity SR_flipflop is
    Port ( s,r,clk,rst : in  STD_LOGIC;
           q,nq : out  STD_LOGIC);
end SR_flipflop;

architecture Behavioral of SR_flipflop is

begin
process(s,r,clk,rst)
begin
if(rst='1') then q<='0';nq<='1';
elsif(clk' event and clk='1') then q<=s;nq<=r;
end if;
end process;

end Behavioral;

