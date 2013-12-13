puts "Hello, what is your name?"
name = gets.chomp
puts "Hello, #{name.capitalize}"

if  name.downcase == "chris" || 
    name.downcase == "katy" ||
    name.downcase == "john" ||
    name.downcase == "steve"
    
  puts "What a lovely name!"
end

  