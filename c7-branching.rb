puts 'Hello, and welcome to seventh grade English.'
puts 'My name is Mrs. Gabbard. And your name is....?'

name = gets.chomp

if name == name.capitalize
  # Civil response
	puts "Please take a seat, #{name}."
else
  # Mad response
	puts "#{name}? You mean #{name.capitalize}, right?"
	puts "Don't you even know how to spell your own name??"
	reply = gets.chomp
	
	if reply.downcase == 'yes'
		puts 'Hmmph! Well, sit down!'
	else
    # Really mad response
		puts 'GET OUT!!'
	end
end
