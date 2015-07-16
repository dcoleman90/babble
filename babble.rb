
class Babble
	
require_relative "tile_group.rb"
require_relative "tile_bag.rb"
require_relative "tile_rack.rb"
require_relative "word.rb"
require 'spellchecker'
require 'tempfile'

@bag
@rack


def run_game
	
	total_points = 0
	
	@bag = TileBag.new
	@rack = setup_rack(@bag)
	puts "Welcome to Babble!"
	
	while !@bag.empty?
		
	puts "\nYour tiles: "
	
	puts @rack.to_s
	
	puts "Current score : " + total_points.to_s
	
	input = gets.chomp
	if input == ""
		puts "Input cannot be blank."
		next	
	end
		if input == ":quit"
			puts "Thanks for playing!"
			break;
		
		
		elsif @rack.has_tiles_for?(input)
		
			if !Spellchecker::check(input)[0][:correct]
			
				puts "\nMisspelled word. Try again"
			end
			
			if Spellchecker::check(input)[0][:correct]
				
			aWord = @rack.remove_word(input)
					
			sum = aWord.score
			
			total_points += sum

			if @bag.size > @rack.number_of_tiles_needed
				@rack.number_of_tiles_needed.times do
					@rack.append(@bag.draw_tile)
			
				end
			else 
				puts "Game over! Final score: " + total_points.to_s
				break;
	
		end
	
		end

else puts "\nThat word is no good! Try again!"
			end


end	
end

def setup_rack bag
	@rack = TileRack.new
	
	7.times do @rack.append(@bag.draw_tile)
end
	return @rack

end
end

bab = Babble.new
bab.run_game

