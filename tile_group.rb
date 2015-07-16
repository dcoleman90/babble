module TileGroup
	attr_accessor :tiles
	
	
	def initialize
		@tiles = Array.new
	end
	
	def append(tile)
		@tiles << tile
	end
	
	def remove(tile)
		@tiles.delete_at(@tiles.index(tile))
	end
	
	def to_s
		string = ""
		 @tiles.each {|a| string << a.to_s}
		return string
	end
	
	def size
		return @tiles.size
	end
end
