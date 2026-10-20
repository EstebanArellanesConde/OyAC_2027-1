library ieee;
use ieee.std_logic_1164.all;

entity tb_maquina_ies is
end entity;

architecture sim of tb_maquina_ies is
  signal clk : std_logic := '0';
  signal rst : std_logic := '1';
  signal Z, W, X, Y : std_logic := '0';
  signal estado_presente, estado_siguiente : std_logic_vector(3 downto 0);
  signal prueba : std_logic_vector(2 downto 0);
  signal salidas : std_logic_vector(4 downto 0);
  signal S10, S5, S3, S2, S0 : std_logic;
begin
  DUT : entity work.maquina_ies
    port map(clk, rst, Z, W, X, Y, estado_presente, prueba, estado_siguiente,
             salidas, S10, S5, S3, S2, S0);

  clk <= not clk after 10 ns;

  process
  begin
    -- Recorrido 1: Z=0 (A,B,H,C,D,F...), luego X=1 (J,G), Y=0 (F), Y=1 (K,C)
    rst <= '1'; Z<='0'; W<='0'; X<='0'; Y<='0';
    wait for 25 ns;  rst <= '0';
    wait for 160 ns;
    X <= '1';                    -- D -> J -> G
    wait for 160 ns;
    Y <= '1';                    -- G -> K -> C
    wait for 200 ns;

    -- Recorrido 2: Z=1, W=1 (A,B,E,C,D...)
    rst <= '1'; Z<='1'; W<='1'; X<='0'; Y<='0';
    wait for 25 ns;  rst <= '0';
    wait for 200 ns;

    -- Recorrido 3: Z=1, W=0 (A,B,E,I,B,E,I...)
    rst <= '1'; Z<='1'; W<='0';
    wait for 25 ns;  rst <= '0';
    wait for 240 ns;
    wait;
  end process;
end architecture;
