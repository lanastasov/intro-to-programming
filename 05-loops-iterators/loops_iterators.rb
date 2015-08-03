# 1. What does the each method in the following program return after it 
# is finished executing?

# x = [1, 2, 3, 4, 5]
# x.each do |a|
#   a + 1
# end

puts "[1, 2, 3, 4, 5]"



# 2. Write a while loop that takes input from the user, performs an action, 
# and only stops when the user types "STOP". Each loop can get info from 
# the user.

x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end



# 3. Use the each_with_index method to iterate through an array of your 
# creation that prints each index and value of the array.

top_five_games = ["mario brothers",
  								"excite bike",
  								"ring king",
  								"castlevania",
  								"double dragon"]

top_five_games.each_with_index do | game, index |
  puts "#{index + 1}. #{game}"
end



# 4. Write a method that counts down to zero using recursion.

def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(-3)
