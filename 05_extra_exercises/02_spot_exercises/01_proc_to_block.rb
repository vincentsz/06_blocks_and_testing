def call_this
	yield(2)
end

to_s = proc { |el| el.to_i }
to_i = proc { |el| el.to_s }
# How to get the following return values without modifying the method invocation nor the method definition
p call_this(&to_s) # => returns 2
p call_this(&to_i) # => returns "2"