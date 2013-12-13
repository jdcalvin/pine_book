words = []

puts "Enter a list of words"
while true
item = gets.chomp
  if item == ''
    break
  else
    words.push item
  end  
end
puts "Here's your list of words:"
puts words.sort.join(', ')
  