# Write a method that takes an array as an argument, 
# and a block that returns true or false depending on the value of the array element passed to it. 
# The method should return a count of the number of times the block returns true.

# You may not use Array#count or Enumerable#count in your solution.

# Examples:
# def count(arr)
#   counter = 0
#   arr.each { |elem| counter +=1 if yield(elem) }
#   counter
# end

def count(arr)
  counter = 0
  0.upto(arr.size-1){ |idx| counter += 1 if yield(arr[idx]) }
  counter
end

# def count(array, &block)
#   return 0 if array.length == 0
#   remaining_count = count(array[1..-1], &block)
#   yield(array[0]) ? remaining_count + 1 : remaining_count
# end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2

# Further Exploration
# 
# Write a version of the count method that meets the conditions of this exercise, but also does not use each, loop, while, or until.
