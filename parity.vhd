----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2021 02:09:53 PM
-- Design Name: 
-- Module Name: parity_adder - Behavioral
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

entity parity_adder is
    Port ( 
           A : in std_logic_vector (3 downto 0);
           button: in std_logic;
           D2 : out STD_LOGIC);
end parity_adder;

architecture Behavioral of parity_adder is
signal press : std_logic ;

begin
    p_parity : process (A,button)
    begin
    if button = '1' then
        case A is 
            when "0001"=>
                D2 <= '1'; 
            when "0010"=>
                D2 <= '1';
            when "0100"=>
                D2 <= '1';
            when "0111"=>
                D2 <= '1';
            when "1000"=>
                D2 <= '1';
            when "1011"=>
                D2 <= '1';
            when "1101"=>
                D2 <= '1'; 
            when "1110"=>
                D2 <= '1';
                
            when others =>
            D2 <='0';
        end case;
    else 
        case A is 
            when "0000"=>
                D2 <= '1'; 
            when "0011"=>
                D2 <= '1';
            when "0101"=>
                D2 <= '1';
            when "0110"=>
                D2 <= '1';
            when "1001"=>
                D2 <= '1';
            when "1010"=>
                D2 <= '1';
            when "1101"=>
                D2 <= '1'; 
            when "1100"=>
                D2 <= '1';
            when "1111"=>
                D2 <= '1';
            when others =>
            D2 <='0';
            
         end case;
        end if;
     end process  p_parity;
--(C xnor D) and ((NOT A AND B) OR (NOT A AND B) OR (NOT A AND NOT B) OR (A AND B));
end Behavioral;
