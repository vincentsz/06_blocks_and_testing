def method1(&block)
  puts yield.class
  puts block.class
end
  
this_is_a_proc = proc {'is this a proc?'}
  
method1() {'is this a proc also?'}