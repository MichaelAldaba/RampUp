WEAPONS = ["rock", "paper", "scissors", "lizard", "Spock"]

class Computer
	attr_accessor :score
	attr_reader :weapon

	def initialize
		@weapon = WEAPONS.sample
		@score = 0
	end
end