```vhdl
entity multiplier is
  Port ( clk : in  STD_LOGIC;
              reset : in  STD_LOGIC;
              a : in  STD_LOGIC_VECTOR (3 downto 0);
              b : in  STD_LOGIC_VECTOR (3 downto 0);
              product : out  STD_LOGIC_VECTOR (7 downto 0));
end entity;

architecture behavioral of multiplier is

begin
  process (clk,reset)
  begin
    if reset = '1' then
      product <= (others => '0');
    elsif rising_edge(clk) then
      product <= a * b;
end if;
end process;
end architecture;
```