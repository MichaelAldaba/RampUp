class Computer
	attr_accessor :score, :weapon

	def initialize
		@weapon = WEAPONS.sample
		@score = 0
	end

	def win
		puts "You lose the round."
		self.score += 1
	end
end