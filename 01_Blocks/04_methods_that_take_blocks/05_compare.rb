def compare(word)
  puts "before: #{word}"
  after = yield(word)
  puts "after: #{after}"
end

compare('hello') { |word| puts "hi" }