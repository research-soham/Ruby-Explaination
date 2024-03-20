# Include: Used to mix in module methods as instance methods in a class.
module Greet
  def say_hello
    puts "Hello!"
  end
end

class Person
  include Greet
end

person = Person.new
person.say_hello  # Output: Hello!
# Ancestor Chain:
# Person -> Greet -> Object -> Kernel -> BasicObject


# Extend: Used to add module methods as class methods in a class.
module MathFunctions
  def self.square(num)
    num * num
  end
end

class Calculator
  extend MathFunctions
end

puts Calculator.square(5)  # Output: 25
# Ancestor Chain:
# Calculator.singleton_class -> MathFunctions.singleton_class -> Object.singleton_class -> Class.singleton_class -> Module.singleton_class -> Object.singleton_class -> BasicObject.singleton_class


# Prepend: Similar to include, but the module's methods take precedence over the class's methods.
module OverrideToString
  def to_s
    "Overridden toString"
  end
end

class MyClass
  prepend OverrideToString

  def to_s
    "Original toString"
  end
end

obj = MyClass.new
puts obj.to_s  # Output: Overridden toString
# Ancestor Chain:
# MyClass -> OverrideToString -> Object -> Kernel -> BasicObject
