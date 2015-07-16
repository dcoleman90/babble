class TileRack

include TileGroup
require_relative 'word.rb'

MAX = 7

def initialize
	super
	end


	
	
def number_of_tiles_needed
	
	return MAX - @size	
end


def has_tiles_for? text

arr = text.split("")

sym_array = arr.map &:to_sym

tile_copy = Array.new(@tiles)

sym_array.each do |x|

	if (tile_copy.include?(x))
	
		tile_copy.delete_at(tile_copy.index(x))
	else return false			
end
	end
return true
end





def remove_word text
	arr = text.split("")
	
	sym_array = Array.new
	
	sym_array = arr.map &:to_sym

	word = Word.new
	
	sym_array.each do |x|
		word.append(x)
		@tiles::delete_at(@tiles.index(x))
		@size = @tiles.size
		
	
	end
	return word
end
end
