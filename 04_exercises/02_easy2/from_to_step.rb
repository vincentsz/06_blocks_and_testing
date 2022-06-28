# The Range#step method lets you iterate over a range of values where each value in the iteration is the previous value plus a "step" value. 
# It returns the original range.

# Write a method that does the same thing as Range#step, but does not operate on a range. 
# Instead, your method should take 3 arguments: the starting value, the ending value, 
# and the step value to be applied to each iteration. 
# Your method should also take a block to which it will yield (or call) successive iteration values.

# Example:
# def step(start_v, end_v, step_v)
#   current_v = start_v
#   collection = []
#   loop do
#     collection << current_v
#     yield(current_v)
#     current_v += step_v
#     break if current_v > end_v
#   end
#   collection
# end

def step(from, to, step)
  sequence = []
  while from <= to
    sequence << from
    yield(from)
    from += step
  end
  sequence
end


p step(1, 10, 3) { |value| puts "value = #{value}" }

# value = 1
# value = 4
# value = 7
# value = 10

# What do you think would be a good return value for this method, and why?