def count
  counter = 0
  Proc.new { counter += 1 }
end

s1 = count
p s1.call
p s1.call
p s1.call

s2 = count
p s2.call
p s1.call
p s2.call