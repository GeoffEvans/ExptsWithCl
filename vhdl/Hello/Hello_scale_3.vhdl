-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Hello_types.all;

entity Hello_scale_3 is
  port(aCounter_i1 : in unsigned(31 downto 0);
       bodyVar_o   : out unsigned(3 downto 0));
end;

architecture structural of Hello_scale_3 is
  signal x_0 : unsigned(31 downto 0);
begin
  x_0 <= aCounter_i1 / unsigned'("00000001000000000000000000000000");
  
  bodyVar_o <= resize(x_0,4);
end;
