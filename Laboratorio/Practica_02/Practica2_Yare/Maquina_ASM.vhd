library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity P2_VHDL is
    Port (
        reloj : in  std_logic; -- Se conectará directamente a un Push Button
        reset : in  std_logic; -- Se conectará directamente al otro Push Button
        E1    : in  std_logic; -- DIP Switch
        E2    : in  std_logic; -- DIP Switch
        S0    : out std_logic; -- LED
        S1    : out std_logic  -- LED
    );
end P2_VHDL;

architecture Behavioral of P2_VHDL is

    -- Definición de Estados
    type tipo_estado is (A, B, C, D);
    signal estado_actual    : tipo_estado;
    signal estado_siguiente : tipo_estado;

begin

    --------------------------------------------------
    -- 1. REGISTRO DE ESTADO (Secuencial)
    --------------------------------------------------
    process(reloj, reset)
    begin
        -- En la DE0-Nano los botones dan '0' al presionarse
        if reset = '0' then
            estado_actual <= A;
            
        -- Transición de estado al presionar el botón de reloj (flanco de bajada: '1' a '0')
        elsif falling_edge(reloj) then
            estado_actual <= estado_siguiente;
        end if;
    end process;


    --------------------------------------------------
    -- 2. LÓGICA DE ESTADO SIGUIENTE Y SALIDAS (Combinacional ASM)
    --------------------------------------------------
    process(estado_actual, E1, E2)
    begin
        -- Valores por defecto para evitar "latches"
        S0 <= '0';
        S1 <= '0';
        
        case estado_actual is
        
            when A =>
                S0 <= '1';
                S1 <= '1';
                estado_siguiente <= B; -- Transición incondicional

            when B =>
                S1 <= '1'; 
                
                if E1 = '1' then
                    estado_siguiente <= B;
                elsif E2 = '1' then
                    estado_siguiente <= A;
                else
                    estado_siguiente <= C;
                end if;

            when C =>
                S0 <= '1'; 
                estado_siguiente <= D; -- Transición incondicional

            when D =>
                -- Sin salidas (ambas en '0' por el valor por defecto al inicio)
                if E2 = '0' then
                    estado_siguiente <= D;
                elsif E1 = '0' then
                    estado_siguiente <= C;
                else
                    estado_siguiente <= A;
                end if;

            when others =>
                estado_siguiente <= A;
                
        end case;
    end process;

end Behavioral;