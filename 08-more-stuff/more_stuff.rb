# 1. Write a program that checks if the sequence of characters "lab" exists 
# in the following strings. If it does exist, print out the word.

# "laboratory"
# "experiment"
# "Pans Labyrinth"
# "elaborate"
# "polar bear"

def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end


check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")



# 2. What will the following program print to the screen? What will it return?

# def execute(&block)
#   block
# end
 
# execute { puts "Hello from inside the execute method!" }

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

puts "Nothing is printed. Block is never activated with '.call' method."



# 3. What is exception handling and what problem does it solve?

puts "Exception handling is a structure used to handle the possibility "\
"of an error occurring in a program. It is a way of handling the error by "\
"changing the flow of control without exiting the program entirely."



# 4. Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }



# 5. Why does the following code...

# def execute(block)
#   block.call
# end

# execute { puts "Hello from inside the execute method!" }
# Give us the following error when we run it?

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

puts "The method parameter block is missing the ampersand sign and that "\
"allows a block to be passed as a parameter."
