def sequence(cntr)
  Proc.new { cntr += 1 }
end

counter = 0
s1 = sequence(counter)
p s1.call           # => 1
p s1.call           # => 2
p s1.call           # => 3
puts

s2 = sequence(counter)
p s2.call           # => 1
p s1.call           # => 4 (note: this is s1)
p s2.call           # => 2