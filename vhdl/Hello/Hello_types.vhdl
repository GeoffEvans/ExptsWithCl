library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package Hello_types is
  type array_of_unsigned_3 is array (integer range <>) of unsigned(2 downto 0);
  type array_of_unsigned_4 is array (integer range <>) of unsigned(3 downto 0);
  type product0 is record
    product0_sel0 : unsigned(3 downto 0);
    product0_sel1 : unsigned(2 downto 0);
  end record;
  type product1 is record
    product1_sel0 : unsigned(3 downto 0);
    product1_sel1 : boolean;
  end record;
  type product2 is record
    product2_sel0 : unsigned(3 downto 0);
    product2_sel1 : product1;
  end record;
  function max (left, right: in integer) return integer;
  function toSLV (u : in unsigned) return std_logic_vector;
  function toSLV (value :  array_of_unsigned_3) return std_logic_vector;
  function toSLV (value :  array_of_unsigned_4) return std_logic_vector;
  function toSLV (p : product0) return std_logic_vector;
  function to_integer (i : in integer) return integer;
  function toSLV (i : in integer) return std_logic_vector;
  function toSLV (b : in boolean) return std_logic_vector;
  function fromSLV (sl : in std_logic_vector) return boolean;
  function toSLV (p : product1) return std_logic_vector;
  function toSLV (p : product2) return std_logic_vector;
end;

package body Hello_types is
  function max (left, right: in integer) return integer is
  begin
    if left > right then return left;
    else return right;
    end if;
  end;
  function toSLV (u : in unsigned) return std_logic_vector is
  begin
    return std_logic_vector(u);
  end;
  function toSLV (value :  array_of_unsigned_3) return std_logic_vector is
    alias ivalue    : array_of_unsigned_3(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 3);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 3) + 1 to i*3) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function toSLV (value :  array_of_unsigned_4) return std_logic_vector is
    alias ivalue    : array_of_unsigned_4(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 4);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 4) + 1 to i*4) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function toSLV (p : product0) return std_logic_vector is
  begin
    return (toSLV(p.product0_sel0) & toSLV(p.product0_sel1));
  end;
  function to_integer (i : in integer) return integer is
  begin
    return i;
  end;
  function toSLV (i : in integer) return std_logic_vector is
  begin
    return std_logic_vector(to_signed(i,32));
  end;
  function toSLV (b : in boolean) return std_logic_vector is
  begin
    if b then
      return "1";
    else
      return "0";
    end if;
  end;
  function fromSLV (sl : in std_logic_vector) return boolean is
  begin
    if sl = "1" then
      return true;
    else
      return false;
    end if;
  end;
  function toSLV (p : product1) return std_logic_vector is
  begin
    return (toSLV(p.product1_sel0) & toSLV(p.product1_sel1));
  end;
  function toSLV (p : product2) return std_logic_vector is
  begin
    return (toSLV(p.product2_sel0) & toSLV(p.product2_sel1));
  end;
end;
