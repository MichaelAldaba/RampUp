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

	def choose
		while true
			puts "\nRock, paper, scissors, lizard, Spock?"
			self.weapon = gets.chomp.downcase
			break if WEAPONS.include?(self.weapon)
		end
	end
end