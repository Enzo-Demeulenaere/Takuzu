# Takuzu 
A Takuzu game implementation in Pharo.

This game in mainly inspired by '0h h1', a puzzle game you can discover here: https://0hh1.com

# How to install

To install the core of the game and the unit tests:
```
Metacello new
    baseline:'Takuzu';
    repository: 'github://Enzo-Demeulenaere/Takuzu:main';
    load: 'core'
```

# How to play 

## Rules 

Takuzu is a japanese puzzle game also known as binary sudoku.

The goal is to fill the grid with red or blue cells following these 3 rules :

	- You can't have more than 2 cells of the same color aligned.
	- The must be as many red and blue cells on each row and column
	- Rows and Columns must be all different one to another

## Launch a game

After loading the project, you can execute `Takuzu openWithMenuBar` and a window will appear.

You can start playing with the 'Levels' menu, with non-ambiguous levels from size 4x4 to 12x12 with 5 levels per size.

You can also play on 4x4 and 6x6 randomly generated levels in the 'Random' menu.
The random generation is a bit messy so you may encounter ambiguous levels, improvements might appear in the future.
			
Have fun !
