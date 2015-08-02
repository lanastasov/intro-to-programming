# 1. Write down whether the following expressions return true or false. 
# Then type the expressions into irb to see the results.

#(32 * 4) >= 129
#false != !true
#true == 4
#false == (847 == '874')
#(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false

puts false
puts false
puts false
puts true
puts true



# 2. Write a method that takes a string as argument. The method should 
# return the capitalized version of the string, only if the string is 
# longer than 10 characters. (Hint: Ruby's String class has a few methods 
# that would be helpful.

def caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps("Trevor Anderson")



# 3. Write a program that takes a number from the user between 0 and 100 and 
# reports back whether the number is between 0 and 50, 50 and 100, or 
# above 100.


puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

if number < 0
  puts "You can't enter a negative number!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end



# 4. What will each block of code below print to the screen? Write your answer 
# on a piece of paper or in a text editor and then run each block of code to 
# see if you were correct.

# 1. '4' == 4 ? puts("TRUE") : puts("FALSE")

# 2. x = 2
#    if ((x * 3) / 2) == (4 + 4 - x - 3)
#      puts "Did you get it right?"
#    else
#      puts "Did you?"
#    end

# 3. y = 9
#    x = 10
#    if (x + 1) <= (y)
#      puts "Alright."
#    elsif (x + 1) >= (y)
#      puts "Alright now!"
#    elsif (y + 1) == x
#      puts "ALRIGHT NOW!"
#    else
#      puts "Alrighty!"
#    end

puts "FALSE"
puts "Did you get it right?"
puts "Alright now!"



# 5. Rewrite your program from exercise 3 using a case statement. Wrap each 
# statement in a method and make sure they both still work.

def evaluate_num(num)
  if num < 0
    puts "You can't enter a negative num!"
  elsif num <= 50
    puts "#{num} is between 0 and 50"
  elsif num <= 100
    puts "#{num} is between 51 and 100"
  else
    puts "#{num} is above 100"
  end
end

def evaluate_case1_num(num)
  case
  when num < 0
    puts "You can't enter a negative num!"
  when num <= 50
    puts "#{num} is between 0 and 50"
  when num <= 100
    puts "#{num} is between 51 and 100"
  else
    puts "#{num} is above 100"
  end
end

def evaluate_case2_num(num)
  case num
  when 0..50
    puts "#{num} is between 0 and 50"
  when 51..100
    puts "#{num} is between 51 and 100"
  else
    if num < 0
      puts "You can't enter a negative num!"
    else
      puts "#{num} is above 100"
    end
  end
end

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

evaluate_num(number)
evaluate_case1_num(number)
evaluate_case2_num(number)



# 6. When you run the following code...

# def equal_to_four(x)
#   if x == 4
#     puts "yup"
#   else
#     puts "nope"
# end
 
# equal_to_four(5)

# You get the following error message..
 
# test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end# 

puts "The if/else statement is missing the 'end' keyword."
