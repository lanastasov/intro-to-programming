# 1. Use the each Array method to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one line
arr.each { |val| puts val }

# multi-line
arr.each do |val|
	puts val
end



# 2. Same as above, but only print out values greater than 5.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one line
arr.each { |val| puts val if val > 5 }

# multi-line
arr.each do |val|
	if val > 5
		puts val
	end
end



# 3. Now, using the same array from #2, use the select method to extract 
# all odd numbers into a new array.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one line
new_array = arr.select { |val| val % 2 != 0 }

#multi-line
new_array = arr.select do |val|
	number % 2 != 0
end



# 4. Append "11' to end of the original array. Prepend "0" to the beginning.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Append
arr.push(11)
# --- or ---
arr << 11

# Prepend
arr.unshift(0)



# 5. Get rid of "11". And append a "3".

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Remove from end of array
arr.pop

# Append
arr << 3
# --- or ---
arr.push(3)



# 6. Get rid of duplicates without specifically removing any one value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Does not modify calling object
arr.uniq

# Modifies the calling object
arr.uniq!



# 7. What's the major difference between an Array and a Hash?

puts "An array just has values, while a hash incorporates keys as well."



# 8. Create a Hash using both Ruby syntax styles.

hash = {:name => "Trevor"} # old way

hash = {name: "Trevor"} # new way



# 9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}

# Get the value of key `:b`.

# Add to this hash the key:value pair `{e:5}`

# Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4}

h[:b]

h[:e] = 5

# one line version
h.delete_if { |key, val| val < 3.5 }

# multi-line version
h.delete_if do |key, val|
  val < 3.5
end



# 10. Can hash values be arrays? Can you have an array of hashes? 
# (give examples)

# Yes!

# hash of arrays
hash = { names: ["Trevor", "Taylor"],
	ages: [26, 22]
}

# array of hashes
arr = [{name: "Trevor"}, {name: "Taylor"}]



# 11. Look at several Rails/Ruby online API sources and say which 
# one you like best and why.

# Codecademy - easy to read and learn from.



# 12. Given the following data structures. Write a program that moves the 
# information from the array into the empty hash that applies to the 
# correct person.

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#   ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]





# 13. Using the hash you created from the previous exercise, demonstrate 
# how you would access Joe's email and Sally's phone number?

puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"



# 14. In exercise 12, we manually set the contacts hash values one by one. 
# Now, programmatically loop or iterate over the contacts hash from exercise 
# 12, and populate the associated data from the contact_data array. 
# Hint: you will probably need to iterate over ([:email, :address, :phone]), 
# and some helpful methods might be the Array shift and first methods.

# Note that this exercise is only concerned with dealing with 1 entry in the 
# {}"contacts" hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

# As a bonus, see if you can figure out how to make it work with multiple 
# entries in the contacts hash.

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end



# 15. Use Ruby's Array method delete_if and String method start_with? 
# to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?("s") }

arr.delete_if { |word| word.start_with?("s", "w") }



# 16. Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']

# and turn it into a new array that consists of strings containing one word. 
# (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using 
# Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |pairs| pairs.split }
a = a.flatten
p a



# 17. What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

puts "They are the same!"
