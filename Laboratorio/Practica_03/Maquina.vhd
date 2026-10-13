library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Top-level: Direccionamiento por trayectoria (Figura 1)
entity Maquina is
	Port (
		reset, clk, x, y, z : in STD_LOGIC;
		edo_pres : out STD_LOGIC_VECTOR(2 downto 0);
		liga     : out STD_LOGIC_VECTOR(2 downto 0);   -- contenido de memoria (estado siguiente)
		salidas_mem : out STD_LOGIC_VECTOR(5 downto 0); -- contenido de memoria (salidas)
		salidas  : out STD_LOGIC_VECTOR(5 downto 0)    -- salidas registradas
	);
end Maquina;

architecture Behavioral of Maquina is
signal direccion : STD_LOGIC_VECTOR(5 downto 0);
signal liga_s    : STD_LOGIC_VECTOR(2 downto 0);
signal sal_s     : STD_LOGIC_VECTOR(5 downto 0);
begin
	U1: entity work.registro port map(reset, clk, x, y, z, liga_s, edo_pres, direccion);
	U2: entity work.memoria  port map(direccion, sal_s, liga_s);

	liga <= liga_s;
	salidas_mem <= sal_s;

	-- registro de salidas
	process(reset, clk)
	begin
		if reset = '0' then salidas <= (others => '0');
		elsif rising_edge(clk) then salidas <= sal_s;
		end if;
	end process;
end Behavioral;