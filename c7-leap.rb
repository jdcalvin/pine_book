puts "Enter a starting year"
year_start = gets.chomp
puts "Enter an ending year"
year_end = gets.chomp

year_start = year_start.to_i - 1
year_end = year_end.to_i

while year_start < year_end
  year_start = year_start + 1
  if year_start.to_i % 4  == 0 && year_start.to_i % 100 > 0 || year_start.to_i % 400 == 0
      puts "#{year_start} was a leap year"
  else
    puts "#{year_start} was not a leap year"
  end
end


