library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity practica2_vhdl is 
	Port (
		CLK : in STD_LOGIC;
		RESET : in STD_LOGIC;
		E : in STD_LOGIC_VECTOR(1 downto 0);
		S : out STD_LOGIC_VECTOR(1 downto 0)
	);
end practica2_vhdl;

architecture Behavioral of practica2_vhdl is
	signal EDO_PRES: STD_LOGIC_VECTOR(1 downto 0) := "00";
	signal EDO_SIG: STD_LOGIC_VECTOR(1 downto 0) := "00";
	signal SALIDA: STD_LOGIC_VECTOR(1 downto 0) := "11";
begin
	process (CLK, RESET, E, EDO_PRES)
	begin
		if RESET = '0' then
			EDO_SIG <= "00";
			SALIDA <= "11";
		elsif rising_edge (CLK) then
			case EDO_PRES is
				when "00" =>
					if E = "00" then
						EDO_SIG <= "01";
						SALIDA <= "11";
					elsif E = "01" then
                    --
                    -- Completar entradas
                    --
					end if;
                --
                -- Completar estados
                --
            end case;
		end if;
		EDO_PRES <= EDO_SIG;
		S <= SALIDA;
	end process;
end Behavioral;