----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:20:07 03/09/2017 
-- Design Name: 
-- Module Name:    decoder_3_8 - Behavioral 
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

entity decoder_3_8 is
    Port ( inp : in  STD_LOGIC_VECTOR (2 downto 0);
           op : out  STD_LOGIC_VECTOR (7 downto 0));
end decoder_3_8;

architecture Behavioral of decoder_3_8 is

begin
op(0)<=(not inp(0)) and (not inp(1)) and (not inp(2));
op(1)<=(not inp(0)) and (not inp(1)) and (inp(2));
op(2)<=(not inp(0)) and (inp(1)) and (not inp(2));
op(3)<=(not inp(0)) and (inp(1)) and (inp(2));
op(4)<=(inp(0)) and (not inp(1)) and (not inp(2));
op(5)<=(inp(0)) and (not inp(1)) and (inp(2));
op(6)<=(inp(0)) and (inp(1)) and (not inp(2));
op(7)<=(inp(0)) and (inp(1)) and (inp(2));
end Behavioral;

