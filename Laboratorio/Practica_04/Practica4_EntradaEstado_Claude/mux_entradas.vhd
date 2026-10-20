library ieee;
use ieee.std_logic_1164.all;

-- Selector de entradas: 000=Q(0 fijo) 001=Z 010=W 011=X 100=Y
entity mux_entradas is
  port(
    prueba : in  std_logic_vector(2 downto 0);
    Z, W, X, Y : in std_logic;
    sel_out : out std_logic
  );
end entity;

architecture rtl of mux_entradas is
begin
  with prueba select
    sel_out <= '0' when "000",   -- Qx (variable auxiliar = 0)
               Z   when "001",
               W   when "010",
               X   when "011",
               Y   when "100",
               '0' when others;
end architecture;
