# Try to write a reduce method on your own that exhibits this behavior. 
# Your reduce should take at least 1 argument that represents the array we'll operate on. 
# It should also take an optional second argument that represents the default value for the accumulator.
# Here's a few examples that we should be able to call on your method.

def reduce(arr, default = nil)
  counter = 0

  if default
    acc = default
  else
    acc = arr[counter]
    counter += 1
  end

  while counter < arr.size
    acc = yield(acc, arr[counter])
    counter += 1
  end

  acc
end

array = [1, 2, 3, 4, 5]

reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']