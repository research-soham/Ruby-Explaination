# In Ruby, an enumerator is an object that allows you to iterate over a collection of elements. It provides methods like each, map, select, etc., which you can use to perform actions on each item in the collection. Enumerators are handy because they encapsulate iteration logic, making your code more readable and concise.
# Create an array of numbers
numbers = [1, 2, 3, 4, 5]

# Create an enumerator using the each method
enumerator = numbers.each

# Iterate over the elements using the enumerator
enumerator.each do |num|
  puts num * 2  # Multiply each number by 2 and print the result
end

# This demonstrates the basic usage of an enumerator in Ruby. You can use other enumerator methods like map, select, reduce, etc., based on your specific needs to manipulate or filter elements in the collection.
