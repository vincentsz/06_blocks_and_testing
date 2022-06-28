def say(words)
  yield if block_given?
  puts ">>> #{words} <<<"
end

say("hi") do
  system "clear"
end