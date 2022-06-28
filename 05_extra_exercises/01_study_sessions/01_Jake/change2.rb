change = 123
  
def change
 456
end
def example
 puts yield 
end

change = 888
 
something = proc {change}

change = 456

example(&something)