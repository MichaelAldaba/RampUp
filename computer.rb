class Computer
	attr_accessor :score, :weapon

	def initialize
		@weapon = WEAPONS.sample
		@score = 0
	end
end