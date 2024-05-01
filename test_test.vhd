----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2024 09:04:04 PM
-- Design Name: 
-- Module Name: test_test - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_test is
  Port ( 
        clk: in std_logic;
        switch: in std_logic_vector(15 downto 0);
        button: in std_logic;
        --leds: out std_logic_vector(15 downto 0);        
        --decimal_point: out std_logic;                
        anode: out std_logic_vector(3 downto 0);
        cathode: out std_logic_vector(6 downto 0)  --seven segment out code 
        );
end test_test;

architecture Behavioral of test_test is

begin
    

end Behavioral;
