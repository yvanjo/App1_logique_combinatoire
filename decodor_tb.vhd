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

ENTITY tb_decodeur IS          --> Remarquez que l'ENTITY est vide et doit le demeurer pour un test bench !!!  
END tb_decodeur;


ARCHITECTURE behavioral OF tb_decodeur IS 

   COMPONENT decodeur3_8_adder
   Port ( A : in STD_LOGIC_vector (2 downto 0) ;
           B : out STD_LOGIC_vector (7 downto 0)
         );
   END COMPONENT;
   
--> Générez des signaux internes au test bench avec des noms associés et les même types que dans le port
    -- Note: les noms peuvent être identiques, dans l'exemple on a ajouté un suffixe pour
    -- identifier clairement le signal qui appartient au test bench

   SIGNAL entre_x    : std_logic_vector (2 downto 0);
   SIGNAL sortie_y         : std_logic_vector (7 downto 0);
   



   SIGNAL vect_test : STD_LOGIC_VECTOR (2 downto 0);  -- Création d'un signal interne (3 bits)
   
   CONSTANT PERIOD    : time := 10 ns;                  --  *** à ajouter avant le premier BEGIN


BEGIN
  
  UUT: decodeur3_8_adder PORT MAP(
      A => entre_x, 
      B => sortie_y 
   );

   tb : PROCESS
   BEGIN
        entre_x <= "000";
        entre_x <= "001";
        wait for PERIOD; entre_x <= "010";
        --wait for PERIOD; sortie_y <= "0010";
        
        wait for PERIOD; entre_x <= "011"; 
        --entre_x <= "010";
        
        wait for PERIOD; entre_x <= "100";
         WAIT; -- will wait forever
   END PROCESS;
END;

