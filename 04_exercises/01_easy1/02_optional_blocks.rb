# Write a method that takes an optional block. 
# If the block is specified, the method should execute it, and return the value returned by the block. 
# If no block is specified, the method should simply return the String 'Does not compute.'.

# Examples:

def compute(arg = nil)
  if block_given?
    yield(arg)
  else
    "Does not compute."
  end
end

p compute(5) { |num| num + 5 + 3 }# == 13
p compute('c') { |char| 'a' + 'b' + char }# == 'abc'
p compute# == 'Does not compute.'

# def compute 
#   return "Does not compute." unless block_given?
#   yield
# end

