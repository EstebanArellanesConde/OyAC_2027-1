library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Memoria 16x16:  Prueba(15..13) | LigaFalsa(12..9) | LigaVerdadera(8..5) | Salidas(4..0)
-- Salidas = S10 S5 S3 S2 S0
entity rom_ies is
  port(
    addr : in  std_logic_vector(3 downto 0);
    data : out std_logic_vector(15 downto 0)
  );
end entity;

architecture rtl of rom_ies is
  type rom_t is array (0 to 15) of std_logic_vector(15 downto 0);
  constant ROM : rom_t := (
    "000" & "0001" & "0001" & "00011", --  0: estado A
    "001" & "0111" & "0100" & "10011", --  1: estado B
    "000" & "0011" & "0011" & "00011", --  2: estado C
    "011" & "0101" & "1001" & "00101", --  3: estado D
    "010" & "1000" & "0010" & "01010", --  4: estado E
    "000" & "0011" & "0011" & "00010", --  5: estado F
    "100" & "0101" & "1010" & "10011", --  6: estado G
    "000" & "0010" & "0010" & "00001", --  7: estado H
    "000" & "0001" & "0001" & "00001", --  8: estado I
    "000" & "0110" & "0110" & "00010", --  9: estado J
    "000" & "0010" & "0010" & "01011", -- 10: estado K
    "000" & "0000" & "0000" & "00011", -- 11: no usado -> A
    "000" & "0000" & "0000" & "00011", -- 12: no usado -> A
    "000" & "0000" & "0000" & "00011", -- 13: no usado -> A
    "000" & "0000" & "0000" & "00011", -- 14: no usado -> A
    "000" & "0000" & "0000" & "00011"  -- 15: no usado -> A
  );
begin
  data <= ROM(to_integer(unsigned(addr)));
end architecture;
