----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:16:08 03/09/2017 
-- Design Name: 
-- Module Name:    fulladder_decoder - Behavioral 
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

entity fulladder_decoder is
    Port ( a: in  STD_LOGIC_vector(2 downto 0);
           sum,carry: out  STD_LOGIC);
end fulladder_decoder;

architecture Behavioral of fulladder_decoder is

component decoder_3_8 is
Port(inp:in STD_LOGIC_vector(2 downto 0);
     op:out STD_LOGIC_vector(7 downto 0));
end component;

signal sig:std_logic_vector(7 downto 0);

begin
p1:decoder_3_8 port map(a,sig);
sum<=sig(1) or sig(2) or sig(4) or sig(7);
carry<=sig(3) or sig(5) or sig(6) or sig(7);
end Behavioral;

