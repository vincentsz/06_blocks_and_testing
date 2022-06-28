def my_method
  puts "I'm before the proc"
  my_proc = Proc.new do
    puts "I'm inside the proc"
    return
  end
  my_proc.call
  puts "I'm after the proc"
end

