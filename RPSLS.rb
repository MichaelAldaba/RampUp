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
		puts "You: #{player.score}".ljust(26) + "Computer: #{computer.score}"
		puts "-------------------------------------"
		sleep(2)

		player.score == 4 || computer.score == 4 ? game_over : start
	end

	def start
		while true
			puts "\nRock, paper, scissors, lizard, Spock?"
			player.weapon = gets.chomp.downcase
			break if WEAPONS.include?(player.weapon)
		end

		show_weapons
	end

	def show_weapons
		puts "\nYou:".ljust(11) + "#{player.weapon}"
		puts "Computer: #{computer.weapon}"
		sleep(2)

		player.weapon == computer.weapon ? tie : compare
	end

	def compare
		case player.weapon
		when "rock"
			if computer.weapon == "scissors" || computer.weapon == "lizard"
				puts "\nRock crushes #{computer.weapon}."
				win
			else
				computer.weapon == "paper" ? (puts "\nPaper covers rock.") : (puts "\nSpock vaporizes rock.")
				lose
			end
		when "paper"
			if computer.weapon == "rock" || computer.weapon == "spock"
				computer.weapon == "rock" ? (puts "\nPaper covers rock.") : (puts "\nPaper disproves Spock.")
				win
			else
				computer.weapon == "scissors" ? (puts "\nScissors cut paper.") : (puts "\nLizard eats paper.")
				lose
			end
		when "scissors"
			if computer.weapon == "paper" || computer.weapon == "lizard"
				computer.weapon == "paper" ? (puts "\nScissors cut paper.") : (puts "\nScissors decapitate lizard.")
				win
			else
				computer.weapon == "rock" ? (puts "\nRock crushes scissors.") : (puts"\nSpock smashes scissors.")
				lose
			end
		when "lizard"
			if computer.weapon == "paper" || computer.weapon == "spock"
				computer.weapon == "paper" ? (puts "\nLizard eats paper.") : (puts "\nLizard poisons Spock.")
				win
			else
				computer.weapon == "rock" ? (puts "\nRock crushes lizard.") : (puts "\nScissors decapitate lizard.")
				lose
			end
		when "spock"
			if computer.weapon == "rock" || computer.weapon == "scissors"
				computer.weapon == "rock" ? (puts "\nSpock vaporizes rock.") : (puts "\nSpock smashes scissors.")
				win
			else
				computer.weapon == "paper" ? (puts "\nPaper disproves Spock.") : (puts "\nLizard poisons Spock.")
				lose
			end
		end
	end

	def tie
		puts "\nThe round is tied."
		restart
	end

	def win
		puts "You win the round."
		player.score += 1
		restart
	end

	def lose
		puts "You lose the round."
		computer.score += 1
		restart
	end

	def restart
		sleep(2)
		computer.weapon = WEAPONS.sample
		show_score
	end

	def game_over
		player.score == 4 ? (puts "\nYou won the match!") : (puts "\nYou lost the match!")
	end

end

Game.new