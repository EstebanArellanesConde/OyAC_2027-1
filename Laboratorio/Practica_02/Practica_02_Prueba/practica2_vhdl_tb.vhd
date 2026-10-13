-------------------------------------------------------------------
-- Testbench para practica2_vhdl
-------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity practica2_vhdl_tb is
end practica2_vhdl_tb;

architecture sim of practica2_vhdl_tb is

    component practica2_vhdl
        Port (
            CLK   : in  STD_LOGIC;
            RESET : in  STD_LOGIC;
            E     : in  STD_LOGIC_VECTOR(1 downto 0);
            S     : out STD_LOGIC_VECTOR(1 downto 0)
        );
    end component;

    signal CLK_tb   : STD_LOGIC := '0';
    signal RESET_tb : STD_LOGIC := '0';
    signal E_tb     : STD_LOGIC_VECTOR(1 downto 0) := "00"; -- E_tb(1)=E2, E_tb(0)=E1
    signal S_tb     : STD_LOGIC_VECTOR(1 downto 0);

begin

    UUT: practica2_vhdl
        port map (
            CLK   => CLK_tb,
            RESET => RESET_tb,
            E     => E_tb,
            S     => S_tb
        );

    -- Reloj de periodo 20 ns
    CLK_tb <= not CLK_tb after 10 ns;

    STIM: process
    begin
        -- Reset inicial (activo en bajo)
        RESET_tb <= '0';
        E_tb     <= "00";
        wait for 25 ns;
        RESET_tb <= '1';

        -- Estado A -> B (incondicional), debe verse S="11" en A
        wait for 20 ns;

        -- Estado B: E1=0, E2=0 -> avanza a C
        E_tb <= "00";
        wait for 20 ns;

        -- Estado C -> D (incondicional)
        wait for 20 ns;

        -- Estado D: E2=0 -> regresa a C
        E_tb <= "00";
        wait for 20 ns;

        -- C -> D otra vez
        wait for 20 ns;

        -- Estado D: E2=1, E1=1 -> se queda en D
        E_tb <= "11"; -- E2=1, E1=1
        wait for 20 ns;
        wait for 20 ns;

        -- Estado D: E2=1, E1=0 -> regresa a A
        E_tb <= "10"; -- E2=1, E1=0
        wait for 20 ns;

        -- Ahora en A -> B incondicional
        E_tb <= "00";
        wait for 20 ns;

        -- Estado B: probar E1=1 -> regresa a A
        E_tb <= "01"; -- E2=0, E1=1
        wait for 20 ns;

        -- Estado B: probar E2=1 (con E1=0) -> regresa a A
        E_tb <= "00";
        wait for 20 ns; -- vuelve a B (pasando por A)
        E_tb <= "10"; -- E2=1, E1=0
        wait for 20 ns;

        wait; -- fin de la simulacion
    end process STIM;

end sim;
