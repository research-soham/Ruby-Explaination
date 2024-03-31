# In Ruby, load and require are both used to load code from external files. However, they behave differently.
# The load method takes a filename as an argument and executes the code in that file immediately. This means that if you load the same file multiple times, the code in that file will be executed multiple times as well.
load "duck_typing.rb"
# code in duck_typing.rb is executed here

load "duck_typing.rb"
# code in duck_typing.rb is executed again here

# On the other hand, the require method takes a filename as an argument and loads the code in that file only if it hasn't been loaded before. If the file has already been loaded, require will not load it again.
require "duck_typing.rb"
# code in duck_typing.rb is executed here

require "duck_typing.rb"
# code in duck_typing.rb is not executed again here

# So if you run the code above, you'll see "Hello, world!" printed to the console twice when you use load, but only once when you use require.
