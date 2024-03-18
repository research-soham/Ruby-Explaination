# Monkey patching in Ruby refers to the practice of modifying or adding functionality to existing classes or modules during runtime. It allows developers to change how built-in or third-party code behaves without directly modifying its source code.
# Example
name = "jarvis"
puts name.upcase # JARVIS

# here we are opening and overriding the existing method in our project.
class String
  def upcase
    self.capitalize
  end
end

puts name.upcase # Jarvis
