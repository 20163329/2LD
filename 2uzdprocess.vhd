library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1   : std_logic := '0';
  signal r_SIG2   : std_logic := '0';
  signal r_SIG3   : std_logic := '0';
  signal r_SIG4   : std_logic := '0';
  signal w_RESULT0 : std_logic;
signal w_RESULT1 : std_logic;
signal w_RESULT2 : std_logic;
signal w_RESULT3 : std_logic;
-- naudoti 4ARBA vhd
  component xor2 is
    port (
      i_bit0    : in  std_logic;
      i_bit1    : in  std_logic;
      i_bit2    : in  std_logic;
      i_bit3    : in  std_logic;
      o_xor0 : out std_logic;
    o_xor1 : out std_logic;
    o_xor2 : out std_logic;
    o_xor3 : out std_logic);
  end component xor2;
--behin behave
begin

  and_gate_INST : xor2
    port map (
      i_bit0    => r_SIG1,
      i_bit1    => r_SIG2,
      i_bit2    => r_SIG3,
      i_bit3    => r_SIG4,
      o_xor0 => w_RESULT0,
      o_xor1 => w_RESULT1,
      o_xor2 => w_RESULT2,
      o_xor3 => w_RESULT3
      );
	  
	  -- aprasyti visas reikalingas kombinacijas patikrinti schemai
  process is
  begin
    r_SIG1 <= '0';
    r_SIG2 <= '0';
    r_SIG3 <= '0';
    r_SIG4 <= '0';
    wait for 10 ns;
    r_SIG1 <= '0';
    r_SIG2 <= '1';
    wait for 10 ns;
    r_SIG1 <= '1';
    r_SIG2 <= '0';
    wait for 10 ns;
    r_SIG4 <= '0';
    r_SIG3 <= '1';
    wait for 10 ns;
    r_SIG4 <= '1';
    r_SIG3 <= '1';
    wait for 10 ns;
  end process;

end behave;
