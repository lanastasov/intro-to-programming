# 1. Add two strings together

first_name = "Trevor"
last_name = "Anderson"

puts first_name + last_name



# 2. Use the modulo operator, division, or a combination of 
# both to take a 4 digit number and find 1) the thousands 
# number 2) the hundreds 3) the tens and 4) and the ones.

num = 4936

thousands = num / 1000

hundreds = num % 1000 / 100

tens = num % 1000 % 100 / 10

ones = num % 1000 % 100 % 10 

puts thousands 
puts hundreds
puts tens
puts ones



# 3. Write a program that uses a hash to store a list of 
# movie titles with the year they came out. Then use the 
# puts command to make your program print out the year of 
# each movie to the screen. 

movies = { 	movie1: 2000, 
  movie2: 2001, 
  movie3: 2002,
  movie4: 2003,
  movie5: 2004
}

puts movies[:movie1]
puts movies[:movie2]
puts movies[:movie3]
puts movies[:movie4]
puts movies[:movie5]



# 4. Use the dates from the previous example and store 
# them in an array. Then make your program output the same
# thing as exercise 3.

movies = [2000, 2001, 2002, 2003, 2004]

puts movies[0]
puts movies[1]
puts movies[2]
puts movies[3]
puts movies[4]



# 5. Write a program that outputs the factorial of the 
# numbers 5, 6, 7, and 8.

factorial = 5 * 4 * 3 * 2 * 1

puts factorial
puts 6 * factorial
puts 7 * 6 * factorial
puts 8 * 7 * 6 * factorial



# 6. Write a program that calculates the squares of 3 float 
# numbers of your choosing and outputs the result to the screen.

num1 = 1.11
num2 = 2.22
num3 = 3.33

puts num1 * num1
puts num2 * num2
puts num3 * num3



# 7. What does the following error message tell you?
# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
# from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

puts "There is a missing curly brace."
