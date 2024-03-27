# Closures in Ruby are a powerful concept that allows you to create functions or methods that remember the environment in which they were defined. This means they can access variables from their surrounding scope even after the surrounding scope has finished executing. Here's a simple explanation and example of closures in Ruby:
# A closure is created when you define a block of code (such as a lambda, proc, or method) that references variables from its surrounding scope. The block captures these variables and can use them even when called in a different context.
def multiplier(factor)
  # Create a Proc that multiplies a given number by the factor
  proc { |n| n * factor }
end

double = multiplier(2)  # Create a closure that doubles a number
triple = multiplier(3)  # Create a closure that triples a number

puts double.call(5)  # Output: 10 (2 * 5)
puts triple.call(5)  # Output: 15 (3 * 5)

# Closures are particularly useful for creating reusable and flexible code, as they encapsulate behavior along with the context in which that behavior should occur.
