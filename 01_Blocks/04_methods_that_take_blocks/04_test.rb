def test
  yield(1)
end

test do |num1, num2|
  puts "number 1: #{num1}, number 2: #{num2}"
end

