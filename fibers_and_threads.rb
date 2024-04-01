# Threads Example
threads = []

3.times do |i|
  threads << Thread.new do
    puts "Thread #{i} started"
    sleep 2
    puts "Thread #{i} finished"
  end
end

threads.each(&:join)
puts "All threads completed"

# Fibers Example
fiber1 = Fiber.new do
  puts "Fiber 1 started"
  Fiber.yield
  puts "Fiber 1 resumed"
end

fiber2 = Fiber.new do
  puts "Fiber 2 started"
  Fiber.yield
  puts "Fiber 2 resumed"
end

fiber1.resume
fiber2.resume

puts "All fibers completed"

# The threads run concurrently, and their execution is managed by the operating system.
# The fibers are created and executed sequentially. They yield control back to the main program and can be resumed later.
# Overall, threads are suitable for parallelism and CPU-bound tasks, while fibers are useful for managing I/O-bound operations and implementing cooperative multitasking.
