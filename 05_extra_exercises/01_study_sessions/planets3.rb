# def what_planet(&another_planet)
#   planet = 'Mars'
#   another_planet.call
#   puts "I live on #{planet}"
#   another_planet
# end

# planet = 'Pluto'
# first = what_planet{ puts "I live on #{planet}" }
# p first
# puts
# planet = 'Earth'
# second = what_planet{ puts "I live on #{planet}" }
# p second
# puts
# first.call
# second.call


=begin
I live on Pluto
I live on Mars
I live on Earth
I live on Mars
I live on Earth
I live on Earth
=end

def sequence
  planet = "Mars"
  Proc.new { puts "I live on #{planet *= 2}" }
end

s1 = sequence
p s1.call           # => 1
p s1.call           # => 2
p s1.call           # => 3
puts
s2 = sequence
p s2.call           # => 1
p s1.call           # => 4 (note: this is s1)
p s2.call           # => 2