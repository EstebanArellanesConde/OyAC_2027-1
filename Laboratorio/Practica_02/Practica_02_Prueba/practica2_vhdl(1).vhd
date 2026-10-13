-------------------------------------------------------------------
-- Practica 2 - Diseno de maquinas de estado (Carta ASM)
-- Codificacion de estados:
--   A = "00"   B = "01"   C = "10"   D = "11"
-- Entradas:
--   E(0) = E1
--   E(1) = E2
-- Salidas:
--   S(0) = S0
--   S(1) = S1
-- RESET es activo en bajo (RESET = '0' reinicia a estado A)
-------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity practica2_vhdl is
    Port (
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        E     : in  STD_LOGIC_VECTOR(1 downto 0);
        S     : out STD_LOGIC_VECTOR(1 downto 0)
    );
end practica2_vhdl;

architecture Behavioral of practica2_vhdl is

    -- Codificacion de estados
    constant A : STD_LOGIC_VECTOR(1 downto 0) := "00";
    constant B : STD_LOGIC_VECTOR(1 downto 0) := "01";
    constant C : STD_LOGIC_VECTOR(1 downto 0) := "10";
    constant D : STD_LOGIC_VECTOR(1 downto 0) := "11";

    signal EDO_PRES : STD_LOGIC_VECTOR(1 downto 0) := A;
    signal EDO_SIG  : STD_LOGIC_VECTOR(1 downto 0) := A;
    signal SALIDA   : STD_LOGIC_VECTOR(1 downto 0) := "11";

    -- Alias para claridad
    alias E1 : STD_LOGIC is E(0);
    alias E2 : STD_LOGIC is E(1);

begin

    ----------------------------------------------------------------
    -- Proceso 1: Registro de estado (secuencial, sincrono con reset)
    ----------------------------------------------------------------
    REG_ESTADO: process (CLK, RESET)
    begin
        if RESET = '0' then
            EDO_PRES <= A;
        elsif rising_edge(CLK) then
            EDO_PRES <= EDO_SIG;
        end if;
    end process REG_ESTADO;

    ----------------------------------------------------------------
    -- Proceso 2: Logica de siguiente estado y salidas (combinacional)
    ----------------------------------------------------------------
    LOGICA: process (EDO_PRES, E1, E2)
    begin
        -- valores por defecto (evitan latches)
        SALIDA  <= "00";
        EDO_SIG <= EDO_PRES;

        case EDO_PRES is

            when A =>
                SALIDA  <= "11";   -- S1=1, S0=1
                EDO_SIG <= B;      -- transicion incondicional

            when B =>
                SALIDA <= "10";    -- S1=1, S0=0
                if E1 = '1' then
                    EDO_SIG <= A;
                elsif E2 = '1' then
                    EDO_SIG <= A;
                else
                    EDO_SIG <= C;
                end if;

            when C =>
                SALIDA  <= "01";   -- S1=0, S0=1
                EDO_SIG <= D;      -- transicion incondicional

            when D =>
                SALIDA <= "00";    -- sin salidas activas
                if E2 = '0' then
                    EDO_SIG <= C;
                elsif E1 = '1' then
                    EDO_SIG <= D;
                else
                    EDO_SIG <= A;
                end if;

            when others =>
                EDO_SIG <= A;

        end case;
    end process LOGICA;

    S <= SALIDA;

end Behavioral;
