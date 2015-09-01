-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Hello_types.all;

entity Hello_expectedOutput_6 is
  port(eta_i1          : in unsigned(3 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       topLet_o        : out boolean);
end;

architecture structural of Hello_expectedOutput_6 is
begin
  Hello_outputVerifierzm_7_topLet_o : entity Hello_outputVerifierzm_7
    port map
      (bodyVar_o       => topLet_o
      ,system1000      => system1000
      ,system1000_rstn => system1000_rstn
      ,eta_i1          => eta_i1);
end;
