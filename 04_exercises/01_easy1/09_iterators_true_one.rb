# def one?(arr)
#   arr.count { |elem| yield(elem) == true } == 1
# end

# def one?(arr)
#   counter = 0
#   arr.each do |elem| 
#     counter += 1 if yield(elem)
#     return false if counter > 1
#   end
#   counter == 1
# end

def one?(arr)
  seen_once = false
  arr.each do |elem|
    next unless yield(elem)
    return false if seen_once
    seen_once = true
  end
  seen_once
end

p one?([1, 3, 5, 6]) { |value| value.even? } == true
p one?([1, 3, 5, 7]) { |value| value.odd? } == false
p one?([2, 4, 6, 8]) { |value| value.even? } == false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p one?([1, 3, 5, 7]) { |value| true } == false
p one?([1, 3, 5, 7]) { |value| false } == false
p one?([]) { |value| true } == false

