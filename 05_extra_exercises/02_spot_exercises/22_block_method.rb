# 22, What will be outputted from the method invocation block_method('turtle') below? Why does/doesn't it raise an error?
test = "a"

def block_method(animal)
  yield(animal)
end

block_method('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
  test = seal
end

puts "test is nil" unless test

# The method invocation will output:
# "This is a turtle and a ."
# It does not raise an error since blocks have lenient arity, which means we can send in too few or too many arguments. 
# In this case we are sending in less arguments than there are block parameters defined. 
# If too few arguments are passed in, the block local variable for which there is no block parameter, 
# in this case `seal`, will be assigned to nil, resulting in the above output.