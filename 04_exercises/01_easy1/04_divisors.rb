# Write a method that returns a list of all of the divisors of the positive integer passed in as an argument. 
# The return value can be in any sequence you wish.

# Examples
=begin
1.Understand problem
input: positive integer
output: array of divisors of pos int
2.Examples
divisors(1) == [1]
divisors(7) == [1, 7]
divisors(12) == [1, 2, 3, 4, 6, 12]
divisors(98) == [1, 2, 7, 14, 49, 98]
divisors(99400891) == [1, 9967, 9973, 99400891] 
3.Data structure
integer
range
array
4.Algorithm
create range 1 to num
iterate over range
calculate modulo, save to new array when 0
return new array

=end
# def divisors(num)
# (1..num).select{ |n| num % n == 0 }
# end

# divisors(1) == [1]
# divisors(7) == [1, 7]
# divisors(12) == [1, 2, 3, 4, 6, 12]
# divisors(98) == [1, 2, 7, 14, 49, 98]
# divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute

# How fast can you make your solution go? How big of a number can you quickly reduce to its divisors? 
# Can you make divisors(999962000357) return almost instantly? (The divisors are [1, 999979, 999983, 999962000357].) 
# Hint: half of the divisors gives you the other half.

=begin
1.Understand problem

2.Examples
3.Data structure
4.Algorithm
find biggest divisor, save to result
 start loop
  - create range 1 to num
  - reverse range
  - iterate through range until you find first divisor (% == 0)
  - save this divisor to result array
  - set num to result
end loop when result == 1


find biggest divsor of this num , save to result, until none are found anymore
return result + [num]
=end

def divisors(num)
  result = []
  (1..Math.sqrt(num)).each do |n|
    if num % n == 0
      result << n
      result << num / n
    end
  end
    result.uniq.sort
end


p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute