names = ['Papa', 'Mama', 'Ruby', 'Nono', 'Emma']
while true
  puts 'What would you like to ask C to do?'
  request = gets.chomp
 
  puts "C, please #{request}"
  puts 'C\'s response:'
  puts "C #{request}!"
  names.each do |f|
    puts "#{f} #{request}, too."
  end
  if request =='stop'
    break
  end
end