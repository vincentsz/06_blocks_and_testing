def test(&block)
  puts "This is &block: #{block}"
end

test { sleep(1) }