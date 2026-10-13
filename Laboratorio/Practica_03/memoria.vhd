library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memoria is
    Port (
        direccion : in  STD_LOGIC_VECTOR(5 downto 0);
        salidas   : out STD_LOGIC_VECTOR(5 downto 0);
        liga      : out STD_LOGIC_VECTOR(2 downto 0)
    );
end memoria;

architecture Behavioral of memoria is

begin

    process(direccion)
    begin

        case direccion is

            ----------------------------------------------------------------
            -- ESTADO S0 = 000
            -- x = 0 -> S1
            -- x = 1 -> S2
            ----------------------------------------------------------------

            when "000000" => liga <= "001"; salidas <= "010011";
            when "000001" => liga <= "001"; salidas <= "010011";
            when "000010" => liga <= "001"; salidas <= "010011";
            when "000011" => liga <= "001"; salidas <= "010011";

            when "000100" => liga <= "010"; salidas <= "000111";
            when "000101" => liga <= "010"; salidas <= "000111";
            when "000110" => liga <= "010"; salidas <= "000111";
            when "000111" => liga <= "010"; salidas <= "000111";


            ----------------------------------------------------------------
            -- ESTADO S1 = 001
            -- x, y, z = don't care
            -- siempre -> S3
            ----------------------------------------------------------------

            when "001000" => liga <= "011"; salidas <= "001000";
            when "001001" => liga <= "011"; salidas <= "001000";
            when "001010" => liga <= "011"; salidas <= "001000";
            when "001011" => liga <= "011"; salidas <= "001000";
            when "001100" => liga <= "011"; salidas <= "001000";
            when "001101" => liga <= "011"; salidas <= "001000";
            when "001110" => liga <= "011"; salidas <= "001000";
            when "001111" => liga <= "011"; salidas <= "001000";


            ----------------------------------------------------------------
            -- ESTADO S2 = 010
            -- y = 0 -> S4
            -- y = 1 -> S2
            -- x y z que no participan son don't care
            ----------------------------------------------------------------

            -- y = 0
            when "010000" => liga <= "100"; salidas <= "100001";
            when "010001" => liga <= "100"; salidas <= "100001";
            when "010100" => liga <= "100"; salidas <= "100001";
            when "010101" => liga <= "100"; salidas <= "100001";

            -- y = 1
            when "010010" => liga <= "010"; salidas <= "100001";
            when "010011" => liga <= "010"; salidas <= "100001";
            when "010110" => liga <= "010"; salidas <= "100001";
            when "010111" => liga <= "010"; salidas <= "100001";


            ----------------------------------------------------------------
            -- ESTADO S3 = 011
            -- z = 0 -> S1
            -- z = 1 -> S1
            -- x, y don't care
            ----------------------------------------------------------------

            -- z = 0
            when "011000" => liga <= "001"; salidas <= "101000";
            when "011010" => liga <= "001"; salidas <= "101000";
            when "011100" => liga <= "001"; salidas <= "101000";
            when "011110" => liga <= "001"; salidas <= "101000";

            -- z = 1
            when "011001" => liga <= "001"; salidas <= "101010";
            when "011011" => liga <= "001"; salidas <= "101010";
            when "011101" => liga <= "001"; salidas <= "101010";
            when "011111" => liga <= "001"; salidas <= "101010";


            ----------------------------------------------------------------
            -- ESTADO S4 = 100
            -- x, y, z = don't care
            -- siempre -> S0
            ----------------------------------------------------------------

            when "100000" => liga <= "000"; salidas <= "010000";
            when "100001" => liga <= "000"; salidas <= "010000";
            when "100010" => liga <= "000"; salidas <= "010000";
            when "100011" => liga <= "000"; salidas <= "010000";
            when "100100" => liga <= "000"; salidas <= "010000";
            when "100101" => liga <= "000"; salidas <= "010000";
            when "100110" => liga <= "000"; salidas <= "010000";
            when "100111" => liga <= "000"; salidas <= "010000";


            ----------------------------------------------------------------
            -- ESTADOS NO UTILIZADOS
            -- 101, 110, 111
            ----------------------------------------------------------------

            when others =>
                liga    <= "000";
                salidas <= "000000";

        end case;

    end process;

end Behavioral;