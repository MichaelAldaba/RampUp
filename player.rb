class Player
	attr_accessor :weapon, :score

	def initialize
		@weapon = ""
		@score = 0
	end

	def win
		puts "Player wins the round."
		self.score += 1
	end
end