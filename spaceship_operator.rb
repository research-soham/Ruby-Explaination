# The spaceship operator (<=>) in Ruby is a comparison operator that returns -1, 0, or 1 depending on whether the left operand is less than, equal to, or greater than the right operand, respectively.

# Using the spaceship operator to compare two numbers
result = 5 <=> 3
puts result  # Output: 1 (5 is greater than 3)

result = 5 <=> 5
puts result  # Output: 0 (5 is equal to 5)

result = 3 <=> 7
puts result  # Output: -1 (3 is less than 7)

# In this example, result will hold the value returned by the spaceship operator when comparing the two numbers.
