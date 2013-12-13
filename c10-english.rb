def english_num(numbers)
  teens = "ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen".split
  ones = "zero one two three four five six seven eight nine".split
  tens = "zero ten twenty thirty fourty fifty sixty seventy eighty ninety".split
  last_step = ["", "thousand ", "million ", "billion ", "trillion ", "quadrillion "]

  numbers = numbers.map {|x| x.to_i }
  threes = []
  while numbers.length > 0
    num = numbers.pop(3)
    result = []
    
    num.each_with_index do |x, index|
      result << ones[x] + " "     
    end
    #Turn this into a function
    if result.length >= 2 # FINDING TEENS
      unless num[-2] == 1
        result[-2] = tens[(num[-2])] + " "
      else
        hold = num[-1]
        result[-2] = teens[hold] + " "
        result[-1] = ""
      end
    end 
    if result.length == 3
      result[-3] = "#{result[-3]}hundred "
    end
  threes << result.join.gsub(/zero/,'and')
  end
  new = []
  (threes.length).times do |x|
    unless last_step[x].nil?
      
    new << threes[x] + last_step[x]
    else
      puts "=============================\n" + 
           "Error: Number exceeds maximum\n" + 
           "=============================\n"
      break   
    end
  end
  return new.reverse.join
end

puts "Enter a number between 0 and 100"
input = gets.chomp.to_s
input = input.split(//)
puts english_num(input)
