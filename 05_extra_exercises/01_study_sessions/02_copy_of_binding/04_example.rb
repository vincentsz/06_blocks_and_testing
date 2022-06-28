def sequence(&prc_obj)
  prc_obj
end

letter = "a"
s1 = sequence{ letter *= 2 }
p s1.call           # => 1
p s1.call           # => 2
p s1.call           # => 3
puts

s2 = sequence{ letter *= 2 }
p s2.call           # => 1
p s1.call           # => 4 (note: this is s1)
p s2.call 