library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MumfordTimothy_counter is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sw : in  std_logic;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           cat : out  STD_LOGIC);
end MumfordTimothy_counter;
-- Define the architecture for the module
architecture Behavioral of MumfordTimothy_counter is
    -- Signal definitions
    signal clk_div_count   : integer := 0;
    signal clk_counter_max : integer := 100000000;
    signal divided_clk     : std_logic := '0';
    signal ssd_counter     : std_logic_vector(3 downto 0) := (others => '0');
begin
   
ssd_inst : entity work.MumfordTimothy_ssd
    port map (
        sw => sw,  -- Input signal of type STD_LOGIC_VECTOR(3 downto 0)
        seg => seg, -- Output signal of type STD_LOGIC_VECTOR(6 downto 0)
        cat => cat  -- Output signal of type STD_LOGIC
    );



    -- Assign cat output to '0'
    cat <= '0';

    -- Create a process statement
    process(clk, reset) 
    begin
        if reset = '1' then
            -- Asynchronous reset
            clk_div_count   <= 0;
            divided_clk     <= '0';
            ssd_counter     <= (others => '0');
            clk_counter_max <= 100000000;
        elsif rising_edge(clk) then
            -- Rising edge clock check
            if clk_div_count = clk_counter_max - 1 then
                clk_div_count <= 0;
                divided_clk   <= not divided_clk;
                if ssd_counter = "1001" then
                    ssd_counter     <= "0000";
                    clk_counter_max <= 50000000;
                else
                    ssd_counter <= ssd_counter + 1;
                end if;
            else
                clk_div_count <= clk_div_count + 1;
            end if;
        end if;
    end process;
end Behavioral;