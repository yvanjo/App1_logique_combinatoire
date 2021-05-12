----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/12/2021 12:36:34 AM
-- Design Name: 
-- Module Name: decodeur3_8_adder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decodeur3_8_adder is
  Port ( A : in std_logic_vector (0 to 2);
   B : out std_logic_vector (0 to 7));
end decodeur3_8_adder;

architecture Behavioral of decodeur3_8_adder is

begin
--P_decod : process (A)
   -- begin
        B <= "00000001" when A = "000" else
        "00000010" when A = "001" else
        "00000100" when A = "010" else
        "00001000" when A = "011" else
        "00010000" when A = "100" else
        "00100000" when A = "101" else
        "01000000" when A = "110" else
        "10000000" when A = "111";
        
--end P_decod;

end Behavioral;
