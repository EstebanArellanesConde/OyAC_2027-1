library ieee;
use ieee.std_logic_1164.all;

entity tb_practica4 is
end entity;

architecture sim of tb_practica4 is
    signal clk, reset : std_logic := '0';
    signal Z, W, X, Y : std_logic := '0';
    signal estado, estado_siguiente : std_logic_vector(2 downto 0);
    signal prueba : std_logic;
    signal salidas : std_logic_vector(5 downto 0);
begin
    dut: entity work.practica4
        port map (
            clk => clk, reset => reset,
            Z => Z, W => W, X => X, Y => Y,
            estado => estado, prueba => prueba,
            estado_siguiente => estado_siguiente, salidas => salidas
        );

    clk <= not clk after 10 ns;

    stim: process
    begin
        reset <= '1';
        wait for 25 ns;
        reset <= '0';

        -- Cambia las entradas para observar ambos caminos de las pruebas.
        Z <= '0'; W <= '0'; X <= '0'; Y <= '0';
        wait for 80 ns;
        Z <= '1';
        wait for 80 ns;
        W <= '1';
        wait for 80 ns;
        X <= '1';
        wait for 80 ns;
        Y <= '1';
        wait for 100 ns;
        assert false report "Fin de simulacion" severity failure;
    end process;
end architecture;
