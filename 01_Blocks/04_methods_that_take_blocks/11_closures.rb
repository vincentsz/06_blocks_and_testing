def each_for_in(arr)
  arr.each { |int| yield int }
end

arr = [1, 2, 3, 4, 5]
total = [0]

each_for_in(arr) do |i|
  result = total[-1] + i 
  total.push(result)
end

p total

