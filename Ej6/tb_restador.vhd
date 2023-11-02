--Ej 7 Guia 5
-- Realizar la descripcion del TESTBENCH del restador anterior.


library ieee;
use ieee.std_logic_1164.all;

entity tb_restador is end tb_restador;

architecture tb_behavior of tb_restador is
	component restador
		port(
			ab: in std_logic_vector (1 downto 0);
			borrow: out std_logic;
			resta: out std_logic
			);
	end component;
	
	--Inputs
	signal ab: std_logic_vector (1 downto 0):= "00";
	--Outputs
	signal borrow: std_logic;
	signal resta: std_logic;
	
begin
	--Instanciacion (UUT o DUT)
	uut: restador port map(
		ab => ab,
		borrow => borrow,
		resta => resta
		);
		
	--Proceso de estimulacion
	stim_proc: process
	begin	
		ab <= "00"; wait for 2ns;
		ab <= "01"; wait for 2ns;
		ab <= "10"; wait for 2ns;
		ab <= "11"; wait for 2ns;
		wait;
	end process;
end;
	
	
	