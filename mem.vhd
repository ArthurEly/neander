--Marcelo Johann
--UFRGS - PGMicro
--Circuitos Digitais 
--Memoria adaptada de: http://www.inf.ufrgs.br/~johann/circuitos/neander01.vhd

library ieee;
use ieee.std_logic_1164.all;

ENTITY Mem_Neander is
port(	clk: in std_logic;
		reset: in std_logic;
		mem_read: in std_logic;
		mem_write: in std_logic;
		address: in std_logic_vector(7 downto 0);
		data_in: in std_logic_vector(7 downto 0);
		data_out: out std_logic_vector(7 downto 0)
);
END Mem_Neander; 


ARCHITECTURE Behavior OF Mem_Neander IS
type memarray is array (0 to 31) of std_logic_vector(7 downto 0);
signal memdata: memarray;
  -- instruction mnemonics
  constant OPNOP:	std_logic_vector(7 downto 0) := "00000000";
  constant OPSTA:	std_logic_vector(7 downto 0) := "00010000";
  constant OPLDA:	std_logic_vector(7 downto 0) := "00100000";
  constant OPADD:	std_logic_vector(7 downto 0) := "00110000";
  constant OPOR:	std_logic_vector(7 downto 0) := "01000000";
  constant OPAND:	std_logic_vector(7 downto 0) := "01010000";
  constant OPNOT:	std_logic_vector(7 downto 0) := "01100000";
  constant OPJMP:	std_logic_vector(7 downto 0) := "10000000";
  constant OPJN:	std_logic_vector(7 downto 0) := "10010000";
  constant OPJZ:	std_logic_vector(7 downto 0) := "10100000";
  constant OPHLT:	std_logic_vector(7 downto 0) := "11110000";
BEGIN
memory: process(clk, reset)
    variable i: integer;
  begin
    -- reset 
    if (reset='1') then
      	memdata(0) <= OPLDA;
		memdata(1) <= x"1F";
		memdata(2) <= OPSTA;
		memdata(3) <= x"1E";
		memdata(4) <= OPADD;
		memdata(5) <= x"1E";
		memdata(6) <= OPJMP;
		memdata(7) <= x"04";
		memdata(8) <= x"00";
		memdata(9) <= x"00";
		memdata(10) <= x"00";
		memdata(11) <= x"00";
		memdata(12) <= x"00";
		memdata(13) <= x"00";
		memdata(14) <= x"00";
		memdata(15) <= x"00";
		memdata(16) <= x"00";
		memdata(17) <= x"00";
		memdata(18) <= x"00";
		memdata(19) <= x"00";
		memdata(20) <= x"00";
		memdata(21) <= x"00";
		memdata(22) <= x"00";
		memdata(23) <= x"00";
		memdata(24) <= x"00";
		memdata(25) <= x"00";
		memdata(26) <= x"00";
		memdata(27) <= x"00";
		memdata(28) <= x"00";
		memdata(29) <= x"00";
		memdata(30) <= x"00";
		memdata(31) <= x"23";
    -- synchronized operations
    elsif (rising_edge(clk)) then
      -- accumulator
      if (mem_write = '1') then
		case address is
		when "00000000" => memdata(0) <= data_in;
		when "00000001" => memdata(1) <= data_in;
		when "00000010" => memdata(2) <= data_in;
		when "00000011" => memdata(3) <= data_in;
		when "00000100" => memdata(4) <= data_in;
		when "00000101" => memdata(5) <= data_in;
		when "00000110" => memdata(6) <= data_in;
		when "00000111" => memdata(7) <= data_in;
		when "00001000" => memdata(8) <= data_in;
		when "00001001" => memdata(9) <= data_in;
		when "00001010" => memdata(10) <= data_in;
		when "00001011" => memdata(11) <= data_in;
		when "00001100" => memdata(12) <= data_in;
		when "00001101" => memdata(13) <= data_in;
		when "00001110" => memdata(14) <= data_in;
		when "00001111" => memdata(15) <= data_in;
		when "00010000" => memdata(16) <= data_in;
		when "00010001" => memdata(17) <= data_in;
		when "00010010" => memdata(18) <= data_in;
		when "00010011" => memdata(19) <= data_in;
		when "00010100" => memdata(20) <= data_in;
		when "00010101" => memdata(21) <= data_in;
		when "00010110" => memdata(22) <= data_in;
		when "00010111" => memdata(23) <= data_in;
		when "00011000" => memdata(24) <= data_in;
		when "00011001" => memdata(25) <= data_in;
		when "00011010" => memdata(26) <= data_in;
		when "00011011" => memdata(27) <= data_in;
		when "00011100" => memdata(28) <= data_in;
		when "00011101" => memdata(29) <= data_in;
		when "00011110" => memdata(30) <= data_in;
		when "00011111" => memdata(31) <= data_in;
		when others => memdata(0) <= data_in;
        end case;
      end if;
    end if;
  end process memory; 

   data_out <=	memdata(0) when address="00000000" else
                memdata(1) when address="00000001" else
                memdata(2) when address="00000010" else
                memdata(3) when address="00000011" else
                memdata(4) when address="00000100" else
                memdata(5) when address="00000101" else
                memdata(6) when address="00000110" else
                memdata(7) when address="00000111" else
                memdata(8) when address="00001000" else
                memdata(9) when address="00001001" else
                memdata(10) when address="00001010" else
                memdata(11) when address="00001011" else
                memdata(12) when address="00001100" else
                memdata(13) when address="00001101" else
                memdata(14) when address="00001110" else
                memdata(15) when address="00001111" else
					memdata(16) when address="00010000" else
                memdata(17) when address="00010001" else
                memdata(18) when address="00010010" else
                memdata(19) when address="00010011" else
                memdata(20) when address="00010100" else
                memdata(21) when address="00010101" else
                memdata(22) when address="00010110" else
                memdata(23) when address="00010111" else
                memdata(24) when address="00011000" else
                memdata(25) when address="00011001" else
                memdata(26) when address="00011010" else
                memdata(27) when address="00011011" else
                memdata(28) when address="00011100" else
                memdata(29) when address="00011101" else
                memdata(30) when address="00011110" else
                memdata(31) when address="00011111" else
		memdata(0);


End	Behavior;