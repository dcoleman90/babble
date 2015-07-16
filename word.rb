class Word

	
	include TileGroup
	
def intialize
super	
end
	
def score
	@tiles.inject(0){|sum,x| sum + TileBag.points_for(x)}

	end

end 
