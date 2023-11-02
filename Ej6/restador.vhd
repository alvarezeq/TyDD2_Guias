library ieee;
use ieee.std_logic_1164.all;

entity restador is 
	port(
	ab: in std_logic_vector (1 downto 0);
	borrow: out std_logic;
	resta: out std_logic
	);
end restador;

architecture behavioral of restador is
begin	
	process(ab) begin
		case ab is 
			when "00" => borrow <= '0';
			when "01" => borrow <= '1';
			when "10" => borrow <= '0';
			when others => borrow <= '0';
		end case;
		
		case ab is 
			when "00" => resta <= '0';
			when "01" => resta <= '1';
			when "10" => resta <= '1';
			when others => resta <= '0';
		end case;
	end process;
end behavioral;
