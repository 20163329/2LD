library ieee;
use ieee.std_logic_1164.all;
 
entity xor2 is
  port (
    i_bit0 : in std_logic;
    i_bit1    : in  std_logic;
    i_bit2    : in  std_logic;
    i_bit3 : in std_logic;
    o_xor0 : out std_logic;
    o_xor1 : out std_logic;
    o_xor2 : out std_logic;
    o_xor3 : out std_logic
   );
end xor2;
 
architecture rtl of xor2 is
begin
  o_xor0 <= NOT i_bit0;
o_xor1 <= NOT i_bit1;
o_xor2 <= NOT i_bit2;
o_xor3 <= NOT i_bit3;
end rtl;
