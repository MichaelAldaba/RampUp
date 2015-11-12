=begin
ask for name
ask for age
ask has celebrated birthday
puts name and year of birth
=end

def input_name_age
	puts "\nWhat is your name?"
	name = gets.chomp.capitalize

	age = 0
	until age > 0
		puts "\nWhat is your age?"
		age = gets.chomp.to_i
	end

	input = nil
	until input == "yes" || input == "no"
		puts "\nDid you celebrate your birthday this year? Yes or no?"
		input = gets.chomp
	end

	if input == "yes"
		puts "\n#{name} was born in #{Time.now.year - age}"
	else
		puts "\n#{name} was born in #{Time.now.year - 1 - age}"
	end
end

input_name_age
