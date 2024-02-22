# Ruby
# In Ruby, a class is a blueprint for creating objects. An object is an instance of a class. Classes in Ruby encapsulate data and behavior, allowing you to create reusable and organized code.

# Define a class
class Person
  # Constructor method
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  # Method to display information
  def display_info
    puts "Name: #{@name}, Age: #{@age}"
  end
end

# Create an object of the Person class
person1 = Person.new("John", 30)

# Call method to display information
person1.display_info

# Variables in Ruby
def example
  # Local variable
  x = 10
  puts x
end

# example
class Example
  def initialize
    # Instance variable
    @x = 10
  end
  
  def display
    puts @x
  end
end

obj = Example.new
obj.display
