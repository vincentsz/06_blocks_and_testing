# Lets return to implementing existing core ruby methods to learn about blocks.

# The Enumerable#map method iterates over the members of a collection, 
# using the associated block to perform some sort of operation on each collection member. 
# The returned values from the block are then built up into an Array that is then returned to the caller. 
# Note in particular that every time #map yields to the block, it obtains just one value. 
# That value may be a complex value - it may even be another collection - but it is nevertheless just one value. 
# Thus, #map returns an Array that has the same number of elements that the original collection had.

# Write a method called map that behaves similarly for Arrays. It should take an Array as an argument, and a block. 
# It should return a new Array that contains the return values produced by the block for each element of the original Array.

# If the Array is empty, map should return an empty Array, regardless of how the block is defined.

# Your method may use #each, #each_with_object, #each_with_index, #inject, loop, for, while, 
# or until to iterate through the Array passed in as an argument, 
# but must not use any other methods that iterate through an Array or any other collection.

# Examples:

# def map(arr)
#   arr.each_with_object([]){ |el, coll| coll << yield(el) }
# end

# p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
# p map([]) { |value| true } == []
# p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
# p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
# p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]

# Further Exploration

# Does your solution work with other collections like Hashes or Sets?

# def map(coll)
#   new_coll = coll.class.new
#   idx = 0
#   coll.each do |el1, el2|
#     if el2 == nil
#       new_coll[idx] = yield(el1)
#       idx += 1
#     else
#       new_coll[el1] = yield(el1, el2)
#     end
#   end
#   new_coll
# end

# p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
# p map({ a: 1, b: 3, c: 6 }) { |k, value| value**2 } == { a: 1, b: 9, c: 36 }

# def map(coll)
#   new_coll = coll.class.new
#   idx = 0
#   coll.each do |el1, el2|
#     if el2 == nil
#       new_coll[idx] = yield(el1)
#       idx += 1
#     else
#       new_coll[yield(el1)] = yield(el2)
#     end
#   end
#   new_coll
# end

# p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
# p map({ a: 1, b: 3, c: 6 }) { |el| el.is_a?(Symbol) ? el.to_s : el**2 } #== { a: 1, b: 9, c: 36 }

# use to_h, to_a, etc

# def map(coll)
#   type = coll.class
#   case coll
#   when Array
#     coll.each_with_object(type.new) do |el, new_coll|
#       new_coll << yield(el)
#     end
#   when Hash
#     coll.each_with_object(type.new) do |(k, v), new_coll|
#       new_coll[k] = yield(v)
#     end#.to_h
#   when Set
#     coll.each_with_object(type.new) do |el, new_coll|
#       new_coll << yield(el)
#     end#.to_set
#   end
# end

# require 'set'

# p map([1, 3, 6]) { |value| value**2 } #== [1, 9, 36]
# p map({ a: 1, b: 3, c: 6 }) { |value| value**2 } #== { a: 1, b: 9, c: 36 }
# p map([1, 3, 6].to_set) { |value| value**2 } #== [1, 9, 36]

# .to_set

def map(coll)
  type = coll.class
  case coll
  when Array
    coll.each_with_object(type.new) do |el, new_coll|
      new_coll << yield(el)
    end
  when Hash
    coll.to_a.each_with_object([]) do |(k, v), new_coll|
      new_coll << [k, yield(v)]
    end.to_h
  when Set
    coll.each_with_object(type.new) do |el, new_coll|
      new_coll << yield(el)
    end
  end
end

require 'set'

p map([1, 3, 6]) { |value| value**2 } #== [1, 9, 36]
p map({ a: 1, b: 3, c: 6 }) { |value| value**2 } #== { a: 1, b: 9, c: 36 }
p map([1, 3, 6].to_set) { |value| value**2 } #== [1, 9, 36]