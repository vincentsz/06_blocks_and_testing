planet = 'Pluto'

def what_planet(another_planet)
  planet = 'Mars'
  another_planet.call
  puts "I live on #{planet}"
end

output = Proc.new { puts "I live on #{planet}" }
planet = 'Earth'
what_planet(output)
