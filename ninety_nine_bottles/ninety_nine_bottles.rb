count = 99
bottles = "bottles"
number = count.to_s
puts ""

while count > -1
  
  puts "#{number.capitalize} #{bottles} of beer on the wall, #{number} #{bottles} of beer."

  count -= 1
  number = count.to_s
  number = "no more" if count == 0

  unless count == 1
  	bottles = "bottles"
  else
  	bottles = "bottle"
  end

  if count > -1
    puts "Take one down and pass it around, #{number} #{bottles} of beer on the wall."
  else
  	puts "Go to the store and buy some more, 99 bottles of beer on the wall."
  end

  puts ""

end
