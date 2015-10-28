require_relative 'computer.rb'
require_relative 'player.rb'

WEAPONS = ["rock", "paper", "scissors", "lizard", "spock"]

class Game
	attr_reader :computer, :player, :rock, :paper, :scissors, :lizard, :spock

	def initialize
		@computer = Computer.new
		@player = Player.new
		@rock, @paper, @scissors, @lizard, @spock = "rock", "paper", "scissors", "lizard", "spock"
		rock <=> spock
		spock <=> paper
		paper <=> lizard
		lizard <=> scissors
		scissors <=> spock
		spock <=> lizard
		lizard <=> rock
		rock <=> paper
		paper <=> scissors 
		show_score
	end

	def show_score
		puts "\n-------------------------------------"
		puts "Player: #{player.score}".ljust(26) + "Computer: #{computer.score}"
		puts "-------------------------------------"
		sleep(1)

		player.score == 4 || computer.score == 4 ? game_over : game_start
	end

	def game_start
		player.chooses
		computer.chooses
		show_weapons
	end

	def show_weapons
		puts "\nPlayer:".ljust(11) + "#{player.weapon}"
		puts "Computer: #{computer.weapon}"
		sleep(2)

		compare
	end

	def compare
		output = (player.weapon <=> computer.weapon)
		case output
		when -1
			computer.wins
		when 0
			tie
		when 1
			player.wins
		end
		
		restart
	end

	def tie
		puts "\nThe round is tied."
	end

	def restart
		sleep(2)
		show_score
	end

	def game_over
		player.score == 4 ? (puts "\nPlayer wins the match!") : (puts "\nComputer wins the match!")
	end
end

Game.new