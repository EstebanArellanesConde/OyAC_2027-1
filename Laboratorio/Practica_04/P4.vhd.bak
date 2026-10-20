library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity carta_asm is
    port (
        clk    : in  std_logic;
        reset  : in  std_logic;                     -- Activo en nivel bajo '0'
        w      : in  std_logic;
        x      : in  std_logic;
        y      : in  std_logic;
        z      : in  std_logic;
        -- Salidas: [4]=S10, [3]=S5, [2]=S3, [1]=S2, [0]=S0
        leds   : out std_logic_vector(4 downto 0)
    );
end carta_asm;

architecture Behavioral of carta_asm is

    -- Señales internas de interconexión
    signal edo_pres  : std_logic_vector(2 downto 0) := "000";
    signal edo_sig   : std_logic_vector(2 downto 0);
    signal prueba    : std_logic_vector(2 downto 0);
    signal ligaf     : std_logic_vector(2 downto 0);
    signal ligav     : std_logic_vector(2 downto 0);
    signal salidaf   : std_logic_vector(4 downto 0);
    signal salidav   : std_logic_vector(4 downto 0);
    signal valor     : std_logic;

begin

    
    process(reset, clk)
    begin
        if reset = '0' then
            edo_pres <= "000";                      -- Estado inicial: A (000)
        elsif rising_edge(clk) then
            edo_pres <= edo_sig;
        end if;
    end process;

    
    process(edo_pres)
    begin
        case edo_pres is
            -- Estado A = 000
            when "000" =>
                prueba  <= "100";
                ligaf   <= "000";
                ligav   <= "001";
                salidaf <= "00011";
                salidav <= "00011";

            -- Estado B = 001
            when "001" =>
                prueba  <= "011";
                ligaf   <= "010";
                ligav   <= "100";
                salidaf <= "10001";
                salidav <= "10011";

            -- Estado C = 010
            when "010" =>
                prueba  <= "100";
                ligaf   <= "010";
                ligav   <= "011";
                salidaf <= "00011";
                salidav <= "00011";

            -- Estado D = 011
            when "011" =>
                prueba  <= "001";
                ligaf   <= "101";
                ligav   <= "110";
                salidaf <= "00101";
                salidav <= "00100";

            -- Estado E = 100
            when "100" =>
                prueba  <= "000";
                ligaf   <= "001";
                ligav   <= "010";
                salidaf <= "01000";
                salidav <= "01010";

            -- Estado F = 101
            when "101" =>
                prueba  <= "100";
                ligaf   <= "101";
                ligav   <= "011";
                salidaf <= "00010";
                salidav <= "00010";

            -- Estado G = 110
            when "110" =>
                prueba  <= "010";
                ligaf   <= "101";
                ligav   <= "010";
                salidaf <= "10011";
                salidav <= "11011";

            when others =>
                prueba  <= "000";
                ligaf   <= "000";
                ligav   <= "000";
                salidaf <= "00000";
                salidav <= "00000";
        end case;
    end process;

    
    process(x, y, z, w, prueba)
    begin
        case prueba is
            when "000"  => valor <= w;
            when "001"  => valor <= x;
            when "010"  => valor <= y;
            when "011"  => valor <= z;
            when "100"  => valor <= '1';            -- Qx va a '1' (VCC) directamente
            when others => valor <= '0';
        end case;
    end process;

    
    process(valor, ligaf, ligav)
    begin
        if valor = '0' then
            edo_sig <= ligaf;
        else
            edo_sig <= ligav;
        end if;
    end process;

    
    process(valor, salidaf, salidav)
    begin
        if valor = '0' then
            leds <= salidaf;
        else
            leds <= salidav;
        end if;
    end process;

end Behavioral;---