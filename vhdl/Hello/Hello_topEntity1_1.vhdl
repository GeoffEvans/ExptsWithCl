-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Hello_types.all;

entity Hello_topEntity1_1 is
  port(-- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       topLet_o        : out unsigned(3 downto 0));
end;

architecture structural of Hello_topEntity1_1 is
  signal repANF_0 : unsigned(31 downto 0);
begin
  Hello_counter_2_repANF_0 : entity Hello_counter_2
    port map
      (bodyVar_o       => repANF_0
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn);
  
  Hello_scale_3_topLet_o : entity Hello_scale_3
    port map
      (bodyVar_o   => topLet_o
      ,aCounter_i1 => repANF_0);
end;
