LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY brick_break IS
Port ( CLK : in  STD_LOGIC;
			  CLK_VGA: out STD_LOGIC;
           RST : in  STD_LOGIC;
           HSYNC : out  STD_LOGIC;
           VSYNC : out  STD_LOGIC;
           RGB : out  STD_LOGIC_VECTOR (2 downto 0));
end ENTITY;

ARCHITECTURE RTL of brick_break is

	COMPONENT VGA
		Port ( CLK : in  STD_LOGIC;
			  CLK_VGA: out STD_LOGIC;
           RST : in  STD_LOGIC;
           HSYNC : out  STD_LOGIC;
           VSYNC : out  STD_LOGIC;
           RGB : out  STD_LOGIC_VECTOR (2 downto 0));
	end COMPONENT;
	
	COMPONENT VGA_2
		Port ( CLK : in  STD_LOGIC;
			  CLK_VGA: out STD_LOGIC;
           RST : in  STD_LOGIC;
           HSYNC : out  STD_LOGIC;
           VSYNC : out  STD_LOGIC;
           RGB : out  STD_LOGIC_VECTOR (2 downto 0));
	end COMPONENT;
	
	BEGIN
		
		Z_1: VGA PORT MAP(CLK => CLK, CLK_VGA => CLK_VGA, RST => RST, HSYNC => HSYNC, VSYNC => VSYNC, RGB => RGB);
		
		Z_2: VGA_2 PORT MAP(CLK => CLK, CLK_VGA => CLK_VGA, RST => RST, HSYNC => HSYNC, VSYNC => VSYNC, RGB => RGB);
		
	END RTL;
	