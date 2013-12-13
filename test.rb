def english_num(num)
  
  teens = "ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen".split
  ones = "zero one two three four five six seven eight nine".split
  
  case num[-1]
  case num.length
  when 1
    num.unshift("0")
    num.unshift("0")
  when 2
    num.unshift('0')
  end
  result = []
  case num[0]
    when "1"
    num[0] = "One Hundred"
    when "0"
    num[0] = ""
  end 
  case num[1]
    when "0"
    num[1] = ""
    when "2"
    num[1] = "Twenty"
    when "3"
    num[1] = "Thirty"
    when "4"
    num[1] = "Fourty"
    when "5"
    num[1] = "Fifty"
    when "6"
    num[1] = "Sixty"
    when "7"
    num[1] = "Seventy"
    when "8"
    num[1] = "Eighty"
    when "9"
    num[1] = "Ninety"
  end  
  case num[2]
    when "0"
    num[2] = ""
    if num[1] == "1"
      num[2] = "Ten"
      num[1] = ""
    end
    when "1"
    num[2] = "One"
    if num[1] == "1"
      num[2] = "Eleven"
      num[1] = ""
    end
    when "2"
    num[2] = "Two"
    if num[1] == "1"
      num[2] = "Twelve"
      num[1] = ""
    end
    when "3"
    num[2] = "Three"
    if num[1] == "1"
      num[2] = "Thirteen"
      num[1] = ""
    end
    when "4"
    num[2] = "Four"
    if num[1] == "1"
      num[2] = "Fourteen"
      num[1] = ""
    end
    when "5"
    num[2] = "Five"
    if num[1] == "1"
      num[2] = "Fifteen"
      num[1] = ""
    end
    when "6"
    num[2] = "Six"
    if num[1] == "1"
      num[2] = "Sixteen"
      num[1] = ""
    end
    when "7"
    num[2] = "Seven"
    if num[1] == "1"
      num[2] = "Seventeen"
      num[1] = ""
    end
    when "8"
    num[2] = "Eight"
    if num[1] == "1"
      num[2] = "Eighteen"
    end
    when "9"
    num[2] = "Nine"
    if num[1] == "1"
      num[2] = "Nineteen"
      num[1] = ""
    end     
  end  
  num = num.map {|x| "#{x} " }.join  
  return num
end

puts "Enter a number between 0 and 100"
input = gets.chomp.to_s
input = input.split(//)

if input.length < 1 || input.length > 3
  puts "Invalid input"
else
  puts english_num(input)
end