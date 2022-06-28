def time_it
  before = Time.new
  yield
  after = Time.new

  puts "The process took #{(after - before).round} seconds."
end

time_it { sleep(3) }