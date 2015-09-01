-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Hello_types.all;

entity Hello_counter_2 is
  port(-- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       bodyVar_o       : out unsigned(31 downto 0));
end;

architecture structural of Hello_counter_2 is
  signal Hellozhcounter1_0 : unsigned(31 downto 0);
  signal bodyVar_o_sig     : unsigned(31 downto 0);
  signal tmp_3             : unsigned(31 downto 0);
begin
  Hellozhcounter1_0 <= bodyVar_o_sig + unsigned'("00000000000000000000000000000001");
  
  -- register begin
  register_Hello_counter_2_n_5 : block
    signal n_6 : unsigned(31 downto 0);
    signal n_7 : unsigned(31 downto 0);
  begin
    n_6 <= unsigned'("00000000000000000000000000000000");
  
    process(system1000,system1000_rstn,n_6)
    begin
      if system1000_rstn = '0' then
        n_7 <= n_6;
      elsif rising_edge(system1000) then
        n_7 <= Hellozhcounter1_0;
      end if;
    end process;
  
    tmp_3 <= n_7;
  end block;
  -- register end
  
  bodyVar_o_sig <= tmp_3;
  
  bodyVar_o <= bodyVar_o_sig;
end;
