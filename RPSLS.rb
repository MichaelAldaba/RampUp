=begin
rock-paper-scissors-lizard-Spock
rock > scissors, lizard
paper > rock, Spock
scissors > paper, lizard
lizard > Spock, paper
Spock > scissors, rock
=end

require_relative 'computer.rb'
require_relative 'player.rb'

WEAPONS = ["rock", "paper", "scissors", "lizard", "spock"]

class Game
	attr_accessor
	attr_reader :computer, :player

	def initialize
		@computer = Computer.new
		@player = Player.new
	end

end

Game.new