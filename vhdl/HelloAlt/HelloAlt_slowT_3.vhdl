-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HelloAlt_types.all;

entity HelloAlt_slowT_3 is
  port(ww_i1     : in unsigned(3 downto 0);
       ww1_i2    : in unsigned(31 downto 0);
       bodyVar_o : out product0);
end;

architecture structural of HelloAlt_slowT_3 is
  signal newFast_0 : unsigned(31 downto 0);
  signal subjLet_1 : boolean;
  signal repANF_2  : unsigned(31 downto 0);
  signal newSlow_3 : unsigned(3 downto 0);
  signal altLet_4  : unsigned(3 downto 0);
  signal subjLet_5 : boolean;
  signal repANF_6  : product1;
begin
  with (subjLet_1) select
    newFast_0 <= repANF_2 when (true),
                 unsigned'("00000000000000000000000000000000") when others;
  
  subjLet_1 <= repANF_2 < unsigned'("00000001000000000000000000000000");
  
  repANF_2 <= ww1_i2 + unsigned'("00000000000000000000000000000001");
  
  bodyVar_o <= (product0_sel0 => repANF_6
               ,product0_sel1 => newSlow_3);
  
  with (subjLet_5) select
    newSlow_3 <= altLet_4 when (true),
                 ww_i1 when others;
  
  altLet_4 <= ww_i1 + unsigned'("0001");
  
  subjLet_5 <= newFast_0 = unsigned'("00000000000000000000000000000000");
  
  repANF_6 <= (product1_sel0 => newSlow_3
              ,product1_sel1 => newFast_0);
end;
