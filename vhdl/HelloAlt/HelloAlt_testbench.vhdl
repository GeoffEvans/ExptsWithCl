-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HelloAlt_types.all;

entity HelloAlt_testbench is
  port(done : out boolean);
end;

architecture structural of HelloAlt_testbench is
  signal finished        : boolean;
  signal system1000      : std_logic;
  signal system1000_rstn : std_logic;
  signal a_i1            : unsigned(2 downto 0);
  signal topLet_o        : unsigned(3 downto 0);
begin
  done <= finished;
  
  -- pragma translate_off
  process is
  begin
    system1000 <= '0';
    wait for 2 ns;
    while (true) loop
      system1000 <= not system1000;
      wait for 5 ns;
      system1000 <= not system1000;
      wait for 5 ns;
    end loop;
    wait;
  end process;
  -- pragma translate_on
  
  -- pragma translate_off
  system1000_rstn <= '0',
             '1' after 1 ns;
  -- pragma translate_on
  
  totest : entity HelloAlt_topEntity_0
    port map
      (system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,a_i1            => a_i1
      ,topLet_o        => topLet_o);
  
  stimuli : entity HelloAlt_testInput_4
    port map
      (system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,topLet_o        => a_i1);
  
  verify : entity HelloAlt_expectedOutput_6
    port map
      (system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,eta_i1          => topLet_o
      ,topLet_o        => finished);
end;
