# 1. Given a hash of family members, with keys as the title and an array 
# of names as the values, use Ruby's built-in select method to gather only 
# immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr



# 2. Look at Ruby's merge method. Notice that it has two versions. What is 
# the difference between merge and merge!? Write a program that uses both and 
# illustrate the differences.

cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat                  # => {:name=>"whiskers"}
puts weight               # => {:weight=>"10 lbs"}
puts cat.merge!(weight)
puts cat                  # => {:name=>"whiskers", :weight=>"10 lbs"}
puts weight               # => {:weight=>"10 lbs"}



# 3. Using some of Ruby's built-in Hash methods, write a program that 
# loops through a hash and prints all of the keys. Then write a program 
# that does the same thing except printing the values. Finally, write a 
# program that prints both.

opposites = {positive: "negative", 
  up: "down", 
  right: "left"
}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }



# 4. Given the following expression, how would you access the name 
# of the person?

person = {name: 'Trevor', 
  occupation: 'web developer', 
  hobbies: 'guitar'
}

puts person[:name]



# 5. What method could you use to find out if a Hash contains a specific 
# value in it? Write a program to demonstrate this use.

has_value?

if opposites.has_value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end



# 6. Given the array...

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end



# 7. Given the following code...

# x = "hi there"
# my_hash = {x: "some value"}
# my_hash2 = {x => "some value"}

# What's the difference between the two hashes that were created?

puts "my_hash uses a symbol as a key and uses the newer syntax "\
"(the key is 'x')"

puts "my_hash2 uses a variable's contents as a key and uses the "\
"older syntax (the key is 'hi there')"



# 8. If you see this error, what do you suspect is the most likely problem?

# NoMethodError: undefined method `keys' for Array
# A. We're missing keys in an array variable.

# B. There is no method called keys for Array objects.

# C. keys is an Array object, but it hasn't been defined yet.

# D. There's an array of strings, and we're trying to get the string keys out 
# of the array, but it doesn't exist.

puts "B. There is no method called keys for Array objects."
