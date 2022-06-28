planet = 'Pluto'

def what_planet(&another_planet)
  planet = 'Mars'
  another_planet.call
  puts "I live on #{planet}"
  another_planet
end

first = what_planet{ puts "I live on #{planet}" }
planet = 'Earth'
second = what_planet{ puts "I live on #{planet}" }
first.call
second.call

=begin
I live on Pluto
I live on Mars
I live on Earth
I live on Mars
I live on Earth
I live on Mars
=end