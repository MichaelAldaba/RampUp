class Player
	attr_accessor :weapon, :score

	def initialize
		@weapon = ""
		@score = 0
	end

	def win
		puts "You win the round."
		self.score += 1
	end
end