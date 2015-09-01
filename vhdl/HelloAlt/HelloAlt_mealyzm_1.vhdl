-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.HelloAlt_types.all;

entity HelloAlt_mealyzm_1 is
  port(eta_i1          : in unsigned(2 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       bodyVar_o       : out unsigned(3 downto 0));
end;

architecture structural of HelloAlt_mealyzm_1 is
  signal o1_0      : unsigned(3 downto 0);
  signal bodyVar_1 : product2;
  signal bodyVar_2 : product2;
  signal altLet_3  : product2;
  signal caseApp_4 : product1;
  signal subjLet_5 : product0;
  signal altLet_6  : product2;
  signal repANF_7  : product1;
  signal ww4_8     : product1;
  signal ww5_9     : unsigned(3 downto 0);
  signal ww_10     : unsigned(3 downto 0);
  signal ww1_11    : unsigned(31 downto 0);
  signal szm_12    : product1;
  signal tmp_13    : product1;
begin
  bodyVar_o <= o1_0;
  
  o1_0 <= bodyVar_1.product2_sel1;
  
  HelloAlt_BundleZ2T1_2_bodyVar_1 : entity HelloAlt_BundleZ2T1_2
    port map
      (topLet_o => bodyVar_1
      ,eta_i1   => bodyVar_2);
  
  bodyVar_2 <= altLet_3;
  
  altLet_3 <= altLet_6;
  
  -- register begin
  register_HelloAlt_mealyzm_1_n_16 : block
    signal n_17 : product1;
    signal n_18 : product1;
  begin
    n_17 <= (product1_sel0 => unsigned'("0000"),product1_sel1 => unsigned'("00000000000000000000000000000000"));
  
    process(system1000,system1000_rstn,n_17)
    begin
      if system1000_rstn = '0' then
        n_18 <= n_17;
      elsif rising_edge(system1000) then
        n_18 <= repANF_7;
      end if;
    end process;
  
    tmp_13 <= n_18;
  end block;
  -- register end
  
  caseApp_4 <= tmp_13;
  
  HelloAlt_slowT_3_subjLet_5 : entity HelloAlt_slowT_3
    port map
      (bodyVar_o => subjLet_5
      ,ww_i1     => ww_10
      ,ww1_i2    => ww1_11);
  
  altLet_6 <= (product2_sel0 => ww4_8
              ,product2_sel1 => ww5_9);
  
  repANF_7 <= szm_12;
  
  ww4_8 <= subjLet_5.product0_sel0;
  
  ww5_9 <= subjLet_5.product0_sel1;
  
  ww_10 <= caseApp_4.product1_sel0;
  
  ww1_11 <= caseApp_4.product1_sel1;
  
  szm_12 <= bodyVar_1.product2_sel0;
end;
