=begin
ask for name
ask for age
ask has celebrated birthday
puts name and year of birth
=end

def input_name_age
	age, input = 0, nil

	puts "\nWhat is your first name?"
	name = gets.chomp.split(" ")[0].capitalize

	until age > 0
		puts "\nWhat is your age?"
		age = gets.chomp.to_i
	end

	until input == "yes" || input == "no"
		puts "\nDid you celebrate your birthday this year? Yes or no?"
		input = gets.chomp.downcase
	end

	input == "yes" ? input = 0 : input = 1

	puts "\n#{name} was born in #{Time.now.year - input - age}"
end

input_name_age