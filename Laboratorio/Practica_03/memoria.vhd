library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memoria is 
	Port (
		direccion : in STD_LOGIC_VECTOR(5 downto 0);
		salidas : out STD_LOGIC_VECTOR(5 downto 0);
		liga : out STD_LOGIC_VECTOR(2 downto 0)
	);
end memoria;

architecture Behavioral of memoria is
begin 
	process(direccion)
	begin
		case direccion is
			--direccion:  000     0     0    0
			--             |      |     |    |
			--          edo_pres  x     y    z
			
			--ESTADO 0 
			----X=0
			when "000000" => liga <= "001"; salidas <= "010011";
			when "000001" => liga <= "001"; salidas <= "010011";
			when "000010" => liga <= "001"; salidas <= "010011";
			when "000011" => liga <= "001"; salidas <= "010011";
			----X=1
			when "000100" => liga <= "010"; salidas <= "000111";
			when "000101" => liga <= "010"; salidas <= "000111";
			when "000110" => liga <= "010"; salidas <= "000111";
			when "000111" => liga <= "010"; salidas <= "000111";
			
			--Completar los casos...
			
		end case;
	end process;
end Behavioral;