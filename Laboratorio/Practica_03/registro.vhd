library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity registro is 
	Port (
		reset,clk,x,y,z : in STD_LOGIC;
		edo_sig : in STD_LOGIC_VECTOR(2 downto 0);
		direccion : out STD_LOGIC_VECTOR(5 downto 0)
	);
end registro;

architecture Behavioral of registro is
signal edo_pres : STD_LOGIC_VECTOR(2 downto 0) := "000";
begin 
	process(reset,clk,x,y,z,edo_sig)
	begin
		if reset='0' then edo_pres <= "000";
		elsif rising_edge(clk) then edo_pres <= edo_sig;
		end if;
		direccion <= edo_pres & x & y & z;
	end process;
end Behavioral;