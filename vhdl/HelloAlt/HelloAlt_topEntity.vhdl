-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HelloAlt_types.all;

entity HelloAlt_topEntity is
  port(input_0         : in unsigned(2 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       output_0        : out unsigned(3 downto 0));
end;

architecture structural of HelloAlt_topEntity is
begin
  HelloAlt_topEntity_0_inst : entity HelloAlt_topEntity_0
    port map
      (a_i1            => input_0
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,topLet_o        => output_0);
end;
