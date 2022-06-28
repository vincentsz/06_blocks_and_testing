def test
  yield(1, 2)
end

test do |num|
  puts num
end