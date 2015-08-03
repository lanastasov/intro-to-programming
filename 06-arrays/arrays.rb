# 1. Below we have given you an array and a number. Write a program that 
# checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

puts arr.include? number



# 2. What will the following programs return? What is value of arr after each?

#    arr = ["b", "a"]
#    arr = arr.product(Array(1..3))
#    arr.first.delete(arr.first.last)

puts "arr => 1"
puts 'arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]'

#    arr = ["b", "a"]
#    arr = arr.product([Array(1..3)])
#    arr.first.delete(arr.first.last)
puts "arr => [1, 2, 3] "
puts 'arr = [["b"], ["a", [1, 2, 3]]]'



# 3. How do you print the word "example" from the following array?
 
# arr = [["test", "hello", "world"],["example", "mem"]]

puts "arr[1][0] || arr.last.first"



# 4. What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

# arr.index(5)
puts 3
 
# arr.index[5]
puts "examples.rb:62:in `<main>': undefined method `[]' for #<Enumerator: "\
"[15, 7, 18, 5, 12, 8, 5, 1]:index> (NoMethodError)"

# arr[5]
puts 8



# 5. What is the value of a, b, and c in the following program?

string = "Welcome to Tealeaf Academy!"
a = string[6]
b = string[11]
c = string[19]

puts "e"
puts "T"
puts "A"



# 6.
# You run the following code...

# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

# ...and get the following error message:
 
# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
# What is the problem and how can it be fixed?

puts "You're trying to set the value of an array element with a string "\
"index, which can't be done. Access the element with its integer "\
"index names[3] = 'jody' "



# 7. Write a program that iterates over an array and builds a new array that 
# is the result of incrementing each value in the original array by a value 
# of 2. You should have two arrays at the end of this program, The original 
# array and the new array you've created. Print both arrays to the screen 
# using the p method instead of puts.

arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr
