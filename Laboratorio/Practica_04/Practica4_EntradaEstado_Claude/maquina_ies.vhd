library ieee;
use ieee.std_logic_1164.all;

-- Maquina de estados con direccionamiento Entrada-Estado
entity maquina_ies is
  port(
    clk, rst   : in  std_logic;               -- rst asincrono (a nivel alto) -> estado A
    Z, W, X, Y : in  std_logic;
    estado_presente  : out std_logic_vector(3 downto 0);
    prueba           : out std_logic_vector(2 downto 0);
    estado_siguiente : out std_logic_vector(3 downto 0);
    salidas          : out std_logic_vector(4 downto 0);  -- S10 S5 S3 S2 S0
    S10, S5, S3, S2, S0 : out std_logic
  );
end entity;

architecture rtl of maquina_ies is
  component rom_ies is
    port(addr : in std_logic_vector(3 downto 0); data : out std_logic_vector(15 downto 0));
  end component;
  component mux_entradas is
    port(prueba : in std_logic_vector(2 downto 0); Z, W, X, Y : in std_logic; sel_out : out std_logic);
  end component;

  signal q       : std_logic_vector(3 downto 0) := "0000";  -- registro de estado
  signal palabra : std_logic_vector(15 downto 0);
  signal p       : std_logic_vector(2 downto 0);
  signal lf, lv, prox : std_logic_vector(3 downto 0);
  signal sal_mem : std_logic_vector(4 downto 0);
  signal sal_reg : std_logic_vector(4 downto 0) := "00011";
  signal sel     : std_logic;
begin
  U_ROM : rom_ies port map(addr => q, data => palabra);

  p       <= palabra(15 downto 13);
  lf      <= palabra(12 downto 9);
  lv      <= palabra(8 downto 5);
  sal_mem <= palabra(4 downto 0);

  U_MUX : mux_entradas port map(prueba => p, Z => Z, W => W, X => X, Y => Y, sel_out => sel);

  -- Selector de liga
  prox <= lv when sel = '1' else lf;

  -- Registro de estado y registro de salidas
  process(clk, rst)
  begin
    if rst = '1' then
      q       <= "0000";
      sal_reg <= "00011";
    elsif rising_edge(clk) then
      q       <= prox;
      sal_reg <= sal_mem;
    end if;
  end process;

  estado_presente  <= q;
  prueba           <= p;
  estado_siguiente <= prox;
  salidas          <= sal_reg;
  S10 <= sal_reg(4);
  S5  <= sal_reg(3);
  S3  <= sal_reg(2);
  S2  <= sal_reg(1);
  S0  <= sal_reg(0);
end architecture;
