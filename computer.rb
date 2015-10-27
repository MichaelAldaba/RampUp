class Computer
	attr_accessor :score, :weapon

	def initialize
		@weapon = ""
		@score = 0
	end

	def choose
		self.weapon = WEAPONS.sample
	end

	def win
		puts "Computer wins the round."
		self.score += 1
	end
end