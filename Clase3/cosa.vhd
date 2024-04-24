
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sumGen is
	generic( 
		n: integer := 8
		);
	port (
		cin : in std_logic;
		a,b : in std_logic_vector(n downto 0) ;
		sum : out std_logic_vector(n downto 0) ;
		cout : out std_logic);
end sumGen;

architecture arch of sumGen is

signal i_cin: std_logic_vector(n+1 downto 0) ;

begin
	i_cin(0) <= cin;
	cout <= i_cin(n+1);
	
	sumGenerate : for i in 0 to n generate
		sum(i) <= a(i) xor b(i) xor i_cin(i);
		i_cin(i+1) <= (a(i) and b(i)) or (a(i) and i_cin(i)) or (b(i) and i_cin(i));
	end generate ; -- sumGenerate
end architecture ;

