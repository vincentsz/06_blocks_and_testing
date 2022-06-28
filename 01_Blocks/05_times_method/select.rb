# Therefore, your assignment is to write a select method with the above behavior, and you should be able to call it like this.
def select(arr)
  counter = 0
  n_arr = [] 
  while counter < arr.size
    n_arr << arr[counter] if yield(arr[counter])
    counter += 1
  end
  n_arr
end

array = [1, 2, 3, 4, 5]

select(array) { |num| puts num }