toc = [["Chapter 1:", "Getting Started", "page  1"],
["Chapter 2:", "Numbers", "page  9"],
["Chapter 3:", "Letters", "page 13"]]

line_width = 20
puts "Table of Contents".center(line_width * 2)
puts ''
toc.sort.each do |x|
  puts "#{x.first.ljust(line_width / 2)} #{x[1].center(line_width)} #{x.last.rjust(line_width / 2)} "
end

def new_chapter(toc)
  while true 
      puts "Enter a Chapter Number"
      c_num = gets.chomp
    while c_num.to_i < 1
      puts "Please re-enter just the chapter number"
          c_num = gets.chomp
      if c_num.to_i > 0 
        break
      end
    end 
    puts "Enter a Chapter Title"
    c_title = gets.chomp
    
    puts "Enter a Chapter Page"
    c_page = gets.chomp
    while c_page.to_i < 1
      puts "Please re-enter just the page number"
      c_page = gets.chomp
      if c_page.to_i > 0 
        break
      end
    end
    c_num = "Chapter #{c_num}:"
    c_page = "page #{c_page}"
    toc.push [c_num, c_title.capitalize, c_page]
    break
    
  end
end

while true
puts "Would you like to add more chapters?"

answer = gets.chomp
  if answer.downcase == "yes"
    new_chapter(toc)
  else
    break
  end
end
  
puts "Your new Table of Contents:"
puts ''
puts "Table of Contents".center(line_width * 2)
puts ''
toc.sort.each do |x|
  puts "#{x.first.ljust(line_width / 2)} #{x[1].center(line_width)} #{x.last.rjust(line_width / 2)} "
end


