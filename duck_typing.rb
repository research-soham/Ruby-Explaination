# Duck typing in Ruby is a programming concept where an object's suitability for a particular purpose is determined by its behavior rather than its type. If an object responds to certain methods, it can be used interchangeably with other objects that also respond to those methods, even if they belong to different classes.
class Duck
  def quack
    puts "Quack!"
  end
end

class Person
  def quack
    puts "I'm quacking like a duck!"
  end
end

# Creating dynamic method to call the method inside class
def make_quackable(object)
  object.quack
end

# Initializing both classes
duck = Duck.new
person = Person.new

make_quackable(duck)    # Quack!
make_quackable(person)  # I'm quacking like a duck!
