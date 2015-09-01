-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HelloAlt_types.all;

entity HelloAlt_BundleZ2T1_2 is
  port(eta_i1   : in product2;
       topLet_o : out product2);
end;

architecture structural of HelloAlt_BundleZ2T1_2 is
  signal repANF_0 : product1;
  signal repANF_1 : unsigned(3 downto 0);
  signal x_2      : product1;
  signal y_3      : unsigned(3 downto 0);
begin
  repANF_0 <= x_2;
  
  repANF_1 <= y_3;
  
  x_2 <= eta_i1.product2_sel0;
  
  y_3 <= eta_i1.product2_sel1;
  
  topLet_o <= (product2_sel0 => repANF_0
              ,product2_sel1 => repANF_1);
end;
