# Memoization is a technique used in programming to speed up the execution of functions by caching the results of expensive function calls and returning the cached result when the same inputs occur again. In Ruby, you can implement memoization using instance variables or modules.

class Fibonacci
  def initialize
    @memo = {}  # Using a hash to store cached results
  end

  def calculate(n)
    return @memo[n] if @memo[n]  # Return cached result if available

    if n <= 1
      @memo[n] = n  # Cache base cases (0 and 1)
    else
      @memo[n] = calculate(n - 1) + calculate(n - 2)  # Recursive calculation with memoization
    end

    @memo[n]  # Return the calculated result
  end
end

fib = Fibonacci.new
puts fib.calculate(10)  # Output: 55
puts fib.calculate(20)  # Output: 6765

# This approach significantly improves performance for repetitive calculations, as the expensive recursive calls are avoided by reusing cached results.
