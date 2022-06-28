def what_planet(&another_planet)
  planet = 'Mars'
  another_planet.call
  puts "I live on #{planet}"
  another_planet
end

planet = 'Pluto'
first_proc = what_planet{ puts "I live on #{planet}" }
p first_proc.object_id
puts
planet = 'Earth'
second_proc = what_planet{ puts "I live on #{planet}" }
p second_proc.object_id
puts
first_proc.call
second_proc.call


=begin
I live on Pluto
I live on Mars
I live on Earth
I live on Mars
I live on Earth
I live on Earth
=end

# def sequence(str)
#   Proc.new { str << 'hello' }
# end

# string = "hello"
# s1 = sequence(string)
# p s1.call           # => 1
# p s1.call           # => 2
# p s1.call           # => 3
# puts
# s2 = sequence(string)
# p s2.call           # => 1
# p s1.call           # => 4 (note: this is s1)
# p s2.call           # => 2

# Hi,

# I'm trying to figure out how to phrase what happens with the binding when we create a `Proc` object from a bloc. In the following code:
# ```ruby
# planet = 'Pluto'

# def what_planet(&another_planet)
#   planet = 'Mars'
#   another_planet.call
#   puts "I live on #{planet}"
# end

# what_planet{ puts "I live on #{planet}" }
# planet = 'Earth'
# ```
# Is it correct to say that on line 9, the block created a binding with the local variable `planet` on line 1. 
# Still on line 9 the method `what_planet` is called, therefore we jump to the method on line 3, where