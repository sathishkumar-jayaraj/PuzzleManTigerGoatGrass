class Bank
	attr_accessor :man, :goat, :tiger, :grass
	def initialize (f,g,t,c)
		@man = f
		@goat = g
		@tiger = t
		@grass = c
	end
	def safe
		return !((@goat == @tiger) && (@goat != @man) || (@grass == @goat) && (@grass != @man))
	end
	def to_s
		"Man,Goat,Tiger,Grass [#{@man},#{@goat},#{tiger},#{grass}]"
	end
end