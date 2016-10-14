# Change the below path accordingly
require "~/Documents/PuzzleManTigerGoatGrass/RiverBank"
east = Bank.new(true,true,true,true)
west = Bank.new(false,false,false,false)

def display(east,west)
	unless east.safe && west.safe
		abort("Game Over")
	else
		puts east.inspect
		puts west.inspect
	end
end
def opposite(state)
	return !state
end

begin
	choice = gets.chomp.downcase

	case choice
	when "man"
			east.man = !east.man
			west.man = !west.man
			display(east,west)
	when "tiger"
		if ((east.tiger==east.man) || (west.tiger==west.man))
			east.manState(opposite())
			east.man = !east.man
			east.tiger = !east.tiger
			west.man = !west.man
			west.tiger = !west.tiger
			display(east,west)
		else
			abort("Invalid Move")
		end
	when "goat"
		if ((east.goat==east.man) || (west.goat==west.man))
			east.man = !east.man
			east.goat = !east.goat
			west.man = !west.man
			west.goat = !west.goat
			display(east,west)
		else
			abort("Invalid Move")
		end
	when "grass"
		if ((east.grass==east.man) || (west.grass==west.man))

			east.man = !east.man
			east.grass = !east.grass
			west.man = !west.man
			west.grass = !west.grass
			display(east,west)
		else
			abort("Invalid Move")
		end
	else
		puts "Error in move for man"
	end
end until west.man == true && west.goat == true && west.tiger == true && west.grass == true

puts "Congratulation ! You moved all things shifted Successfully."
puts "If you want to play again, run the program"
puts "Game Over"
