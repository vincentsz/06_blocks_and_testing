def call_this
  yield(2)
end

to_s = Proc.new { |el| el }
to_i = proc { |el| el.to_s }

p call_this(&to_s) # => returns 2
p call_this(&to_i) # => returns "2"