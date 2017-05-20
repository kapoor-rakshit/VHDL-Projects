----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:34:35 02/06/2017 
-- Design Name: 
-- Module Name:    4_1_mux - Behavioral 
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

entity mux_4_1 is
    Port ( s : in  STD_LOGIC_VECTOR (1 downto 0);
	 i : in std_logic_vector(3 downto 0);
           o : out  STD_LOGIC);
end mux_4_1;

architecture Behavioral of mux_4_1 is

begin
process(s,i)
begin
case s is
when "00"=> o<=i(0);
when "01"=> o<=i(1);
when "10"=> o<=i(2);
when others=> o<=i(3);
end case;
end process;
end Behavioral;

