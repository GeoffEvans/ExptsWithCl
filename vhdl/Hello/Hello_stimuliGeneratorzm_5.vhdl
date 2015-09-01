-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Hello_types.all;

entity Hello_stimuliGeneratorzm_5 is
  port(-- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       bodyVar_o       : out unsigned(2 downto 0));
end;

architecture structural of Hello_stimuliGeneratorzm_5 is
  signal y_0       : unsigned(2 downto 0);
  signal bodyVar_1 : product0;
  signal repANF_2  : unsigned(3 downto 0);
  signal bodyVar_3 : unsigned(2 downto 0);
  signal subjLet_4 : boolean;
  signal altLet_5  : unsigned(3 downto 0);
  signal repANF_6  : integer;
  signal x_7       : unsigned(3 downto 0);
  signal wild_8    : integer;
  signal repANF_9  : unsigned(3 downto 0);
  signal repANF_10 : integer;
  signal x_11      : unsigned(3 downto 0);
  signal tmp_12    : unsigned(2 downto 0);
  signal tmp_39    : unsigned(3 downto 0);
begin
  bodyVar_o <= y_0;
  
  y_0 <= bodyVar_1.product0_sel1;
  
  bodyVar_1 <= (product0_sel0 => repANF_2
               ,product0_sel1 => bodyVar_3);
  
  with (subjLet_4) select
    repANF_2 <= altLet_5 when (true),
                x_7 when others;
  
  -- index begin
  indexVec_n_23 : block
    signal vec       : array_of_unsigned_3(0 to 9);
    signal vec_index : integer range 0 to 10-1;
  begin
    vec <= array_of_unsigned_3'(unsigned'("001"),unsigned'("010"),unsigned'("011"),unsigned'("001"),unsigned'("010"),unsigned'("011"),unsigned'("001"),unsigned'("010"),unsigned'("011"),unsigned'("001"));
  
    vec_index <= repANF_6
    -- pragma translate_off
                 mod 10
    -- pragma translate_on
                 ;
  
    tmp_12 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_3 <= tmp_12;
  
  subjLet_4 <= x_7 < (to_unsigned((10 - 1),integer(ceil(log2(real(max(2,10)))))));
  
  altLet_5 <= x_7 + (to_unsigned(1,integer(ceil(log2(real(max(2,10)))))));
  
  repANF_6 <= wild_8;
  
  -- register begin
  register_Hello_stimuliGeneratorzm_5_n_41 : block
    signal n_42 : unsigned(3 downto 0);
    signal n_43 : unsigned(3 downto 0);
  begin
    n_42 <= (to_unsigned(0,integer(ceil(log2(real(max(2,10)))))));
  
    process(system1000,system1000_rstn,n_42)
    begin
      if system1000_rstn = '0' then
        n_43 <= n_42;
      elsif rising_edge(system1000) then
        n_43 <= repANF_9;
      end if;
    end process;
  
    tmp_39 <= n_43;
  end block;
  -- register end
  
  x_7 <= tmp_39;
  
  wild_8 <= repANF_10;
  
  repANF_9 <= x_11;
  
  repANF_10 <= to_integer(x_7);
  
  x_11 <= bodyVar_1.product0_sel0;
end;
