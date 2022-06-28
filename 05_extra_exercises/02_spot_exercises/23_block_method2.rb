# 3, What will be outputted if we add the follow code to the code above? Why?

# def block_method(animal)
#   yield(animal)
# end

# block_method('turtle') { puts "This is a #{animal}."}

# The method invocation will output nothing, it will raise an NameError.
# Since no block parameters are defined, ruby will consider that `animal`is a undefined local variable.
# A possible fix would be:

# block_method('turtle') { |animal| puts "This is a #{animal}."}

# def block_method(animal)
#   yield
# end

# block_method('turtle') { puts "This is a #{animal}."} #=> NameError


def block_method(animal)
  yield
end

block_method('turtle') { |animal| puts "This is a #{animal}."} #=> This is a .
