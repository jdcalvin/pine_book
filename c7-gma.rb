puts "Talk to your Grandma! Go ahead, do it!"
count = 0
while count < 3
  input = gets.chomp
  if input == "BYE"
  count = count + 1
  else
    count = 0
  end
  if input == input.upcase
    
    puts "NO, NOT SINCE #{rand(1930..1950)}"
  else
    
    puts "HUH?! SPEAK UP, SONNY!"
  end
  if count == 3
    break
  end
end
puts "GO THEN, YOU UNGRATEFUL BRAT!"

