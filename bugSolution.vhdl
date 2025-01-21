```vhdl
entity multiplier is
  Port ( clk : in  STD_LOGIC;
              reset : in  STD_LOGIC;
              a : in  STD_LOGIC_VECTOR (3 downto 0);
              b : in  STD_LOGIC_VECTOR (3 downto 0);
              product : out  STD_LOGIC_VECTOR (7 downto 0);
              overflow : out STD_LOGIC);
end entity;

architecture behavioral of multiplier is
  signal temp_product : unsigned(7 downto 0);
begin
  process (clk,reset)
  begin
    if reset = '1' then
      temp_product <= (others => '0');
      overflow <= '0';
    elsif rising_edge(clk) then
      temp_product <= unsigned(a) * unsigned(b);
      if temp_product > 255 then --Check for overflow
        overflow <= '1';
      else
        overflow <= '0';
      end if;
      product <= std_logic_vector(temp_product);
    end if;
  end process;
end architecture;
```