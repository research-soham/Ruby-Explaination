# A Singleton in Ruby is a design pattern that ensures a class has only one instance and provides a global point of access to that instance. It's commonly used when you want to have a single shared resource throughout your program, such as a configuration manager, logger, or database connection.

class SingletonExample
  # Class variable to hold the single instance
  @@instance = nil

  # Private constructor to prevent direct instantiation
  private_class_method :new

  # Method to get the single instance of the class
  def self.instance
    # Create a new instance if none exists
    @@instance ||= new
  end

  # Example method of the Singleton class
  def print_message
    puts "This is a Singleton example."
  end
end

# Trying to instantiate the Singleton directly will result in an error
# singleton = SingletonExample.new #=> private method `new' called for SingletonExample:Class (NoMethodError)

# Get the Singleton instance using the 'instance' method
singleton_instance = SingletonExample.instance

# Call a method on the Singleton instance
singleton_instance.print_message

# The Singleton pattern ensures that there is only one instance of SingletonExample throughout the program's execution, and you can access this instance globally using the instance method.
