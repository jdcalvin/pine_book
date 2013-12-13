puts 'What is you\'re first name?'
f = gets.chomp + ' '
puts 'What is you\'re middle name?'
m = gets.chomp + ' '
puts 'What is you\'re last name?'
l = gets.chomp

puts 'Hello ' + f + m + l + ', it is nice to meet you!'

puts 'What is your favorite number?'

number = gets.chomp

puts "I see you like #{number}, but I think #{number.to_i + 1} is a bigger, and better favorite number!"
