def test(&output)
  puts "1"
  test2(output)
  puts "5"
end

def test2(output)
  puts "2"
  output.call
  puts "4"
end

test{ |_| puts "3" }