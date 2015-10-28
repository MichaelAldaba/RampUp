class Computer
	attr_accessor :score, :weapon

	def initialize
		@weapon = ""
		@score = 0
	end

	def chooses
		self.weapon = WEAPONS.sample
	end

	def wins
		puts "Computer wins the round."
		self.score += 1
	end
end