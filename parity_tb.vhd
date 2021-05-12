----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/07/2019 08:34:20 PM
-- Design Name: 
-- Module Name: testBench - Behavioral
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

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

--> L'entity du test bench est vide et elle doit le demeurer
--> L'entity peut porter le nom que vous voulez mais il est de bonne pratique 
--> d'utiliser le nom du module à tester avec un suffixe par exemple.

ENTITY tb_parity IS          --> Remarquez que l'ENTITY est vide et doit le demeurer pour un test bench !!!  
END tb_parity;


ARCHITECTURE behavioral OF tb_parity IS 

   COMPONENT parity_adder
   Port ( 
           A : in std_logic_vector (3 downto 0);
           button: in std_logic;
           D2 : out STD_LOGIC);
   END COMPONENT;
   
--> Générez des signaux internes au test bench avec des noms associés et les même types que dans le port
    -- Note: les noms peuvent être identiques, dans l'exemple on a ajouté un suffixe pour
    -- identifier clairement le signal qui appartient au test bench

   
   SIGNAL entre_A         :  std_logic_vector (3 downto 0);
   SIGNAL entre_button    : std_logic;
   SIGNAL sortie_D2         : std_logic;
   



   SIGNAL vect_test : STD_LOGIC_VECTOR (2 downto 0);  -- Création d'un signal interne (3 bits)
   
   CONSTANT PERIOD    : time := 10 ns;                  --  *** à ajouter avant le premier BEGIN


BEGIN
  
  UUT: parity_adder PORT MAP(
      button => entre_button,
      D2 => sortie_D2,
      A => entre_A
     
   );

   tb : PROCESS
   BEGIN
        entre_button <= '1';
        entre_A <= "0000";
        
        
        wait for PERIOD; entre_A <= "0001";
        --wait for PERIOD; sortie_y <= "0010";
        
        wait for PERIOD; entre_A <= "0011"; 
        --entre_x <= "010";
        entre_button <= '0';
        wait for PERIOD; entre_A <= "0001"; 
        wait for PERIOD; entre_A <= "0011";
         WAIT; -- will wait forever
   END PROCESS;
END;

