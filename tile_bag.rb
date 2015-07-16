class TileBag
	@@tile_value_hash = {}
	@tile_bag = []
	
	def initialize
		@@tile_bag_hash = {:E => 1, :A => 1, :I => 1, :O  => 1, 
		:N => 1, :R => 1, :T => 1, :L => 1, :S => 1, :U => 1, :D => 2, 
		:G => 2, :B => 3, :C => 3, :M => 3, :P => 3, :F => 4, 
		:H => 4, :V => 4, :W => 4, :Y => 4, :K => 5, :J => 8, :X => 8, 
		:Q => 10,  :Z => 10 
		}
		
		@tile_bag = Array.new
		
		12.times do @tile_bag.push @@tile_bag_hash.keys[0]
		end
		9.times do @tile_bag.push @@tile_bag_hash.keys[1]
		end
		9.times do @tile_bag.push @@tile_bag_hash.keys[2]
		end
		8.times do @tile_bag.push @@tile_bag_hash.keys[3]
		end
		6.times do @tile_bag.push @@tile_bag_hash.keys[4]
		end
		6.times do @tile_bag.push @@tile_bag_hash.keys[5]
		end
		6.times do @tile_bag.push @@tile_bag_hash.keys[6]
		end
		4.times do @tile_bag.push @@tile_bag_hash.keys[7]
		end
		4.times do @tile_bag.push @@tile_bag_hash.keys[8]
		end
		4.times do @tile_bag.push @@tile_bag_hash.keys[9]
		end
		4.times do @tile_bag.push @@tile_bag_hash.keys[10]
		end
		3.times do @tile_bag.push @@tile_bag_hash.keys[11]
		end
		2.times do @tile_bag.push @@tile_bag_hash.keys[12]
		end
		2.times do @tile_bag.push @@tile_bag_hash.keys[13]
		end
		2.times do @tile_bag.push @@tile_bag_hash.keys[14]
		end
		2.times do @tile_bag.push @@tile_bag_hash.keys[15]
		end
		2.times do @tile_bag.push @@tile_bag_hash.keys[16]
		end
		2.times do @tile_bag.push @@tile_bag_hash.keys[17]
		end
		2.times do @tile_bag.push @@tile_bag_hash.keys[18]
		end
		2.times do @tile_bag.push @@tile_bag_hash.keys[19]
		end
		2.times do @tile_bag.push @@tile_bag_hash.keys[20]
		end
		1.times do @tile_bag.push @@tile_bag_hash.keys[21]
		end
		1.times do @tile_bag.push @@tile_bag_hash.keys[22]
		end
		1.times do @tile_bag.push @@tile_bag_hash.keys[23]
		end
		1.times do @tile_bag.push @@tile_bag_hash.keys[24]
		end
		1.times do @tile_bag.push @@tile_bag_hash.keys[25]
		end
		
	end
	
	def draw_tile
		random_key = Random.rand(@tile_bag.size)
		@tile_bag[random_key]
		@tile_bag.delete_at(random_key)
	end
	
	 
	
	def empty?
		@tile_bag.empty?
	end
	
	def self.points_for(tile)
		@@tile_bag_hash[tile]
		
	end
	
	def size
		return @tile_bag.size
	end
	
end

