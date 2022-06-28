def test(&output)
  puts "1"
  test2(output)
  puts "5"
end

def test2(output)
  puts "2"
  output.call("mid: ")
  puts "4"
end

test { |prefix| puts prefix + "3" }