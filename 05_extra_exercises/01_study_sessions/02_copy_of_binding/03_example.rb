def sequence(&prc_obj)
  prc_obj
end

counter = 0
s1 = sequence{ counter += 1 }
p s1.call           # => 1
p s1.call           # => 2
p s1.call           # => 3
puts

s2 = sequence{ counter += 1 }
p s2.call           # => 4
p s1.call           # => 5 (note: this is s1)
p s2.call           # => 6