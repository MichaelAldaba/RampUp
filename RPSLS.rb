require_relative 'computer.rb'
require_relative 'player.rb'

WEAPONS = ["rock", "paper", "scissors", "lizard", "spock"]

class Game
	attr_reader :computer, :player

	def initialize
		@computer = Computer.new
		@player = Player.new
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

		player.weapon == computer.weapon ? tie : compare
	end

	def compare
		case player.weapon
		when "rock"
			if computer.weapon == "scissors" || computer.weapon == "lizard"
				puts "\nRock crushes #{computer.weapon}."
				player.wins
			else
				computer.weapon == "paper" ? (puts "\nPaper covers rock.") : (puts "\nSpock vaporizes rock.")
				computer.wins
			end
		when "paper"
			if computer.weapon == "rock" || computer.weapon == "spock"
				computer.weapon == "rock" ? (puts "\nPaper covers rock.") : (puts "\nPaper disproves Spock.")
				player.wins
			else
				computer.weapon == "scissors" ? (puts "\nScissors cut paper.") : (puts "\nLizard eats paper.")
				computer.wins
			end
		when "scissors"
			if computer.weapon == "paper" || computer.weapon == "lizard"
				computer.weapon == "paper" ? (puts "\nScissors cut paper.") : (puts "\nScissors decapitate lizard.")
				player.wins
			else
				computer.weapon == "rock" ? (puts "\nRock crushes scissors.") : (puts"\nSpock smashes scissors.")
				computer.wins
			end
		when "lizard"
			if computer.weapon == "paper" || computer.weapon == "spock"
				computer.weapon == "paper" ? (puts "\nLizard eats paper.") : (puts "\nLizard poisons Spock.")
				player.wins
			else
				computer.weapon == "rock" ? (puts "\nRock crushes lizard.") : (puts "\nScissors decapitate lizard.")
				computer.wins
			end
		when "spock"
			if computer.weapon == "rock" || computer.weapon == "scissors"
				computer.weapon == "rock" ? (puts "\nSpock vaporizes rock.") : (puts "\nSpock smashes scissors.")
				player.wins
			else
				computer.weapon == "paper" ? (puts "\nPaper disproves Spock.") : (puts "\nLizard poisons Spock.")
				computer.wins
			end
		end

		restart
	end

	def tie
		puts "\nThe round is tied."
		restart
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