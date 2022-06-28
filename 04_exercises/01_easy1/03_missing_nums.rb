# Write a method that takes a sorted array of integers as an argument, 
# and returns an array that includes all of the missing integers (in order) between the first and last elements of the argument.

# Examples:
=begin
1.Understand problem
input: sorted array of integers
output: array of all missing integers
2.Examples
missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
missing([1, 2, 3, 4]) == []
missing([1, 5]) == [2, 3, 4]
missing([6]) == []
3.Data structure
range
array
4.Algorithm
Create array of entire sequence by creating range form first to last integers.
Concate this with existing array
extract unique elements
return result
=end

def missing(arr)
  (arr.first..arr.last).to_a - arr
end

#ls
# def missing(arr)
#   result = []
#   arr.each_cons(2) do |f, l|
#     result += ((f+1)..(l-1)).to_a
#   end
#   result
# end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []