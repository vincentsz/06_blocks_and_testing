# Given this code:

# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "We've finished gathering!"
# end

# Fill out the following method calls for gather so that they produce the corresponding output shown in numbers 1-4 listed below:

# 1)

# gather(items) do |*items, item |
#   puts "#{items.join(", ")}"
#   puts "#{item}"
# end

# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

# 2)

# gather(items) do |item1, *items, item2 |
#   puts "#{item1}"
#   puts "#{items.join(", ")}"
#   puts "#{item2}"
# end

# # Let's start gathering food.
# # apples
# # corn, cabbage
# # wheat
# # We've finished gathering!

# # 3)

# gather(items) do |item1, *items|
#   puts "#{item1}"
#   puts "#{items.join(", ")}"
# end

# # Let's start gathering food.
# # apples
# # corn, cabbage, wheat
# # We've finished gathering!

# # 4)

# gather(items) do |item1 ,item2 ,item3 ,item4|
#   puts "#{item1}, #{item2}, #{item3} and #{item4}"
# end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!

# make changes to gather method for each numbered problem(1-4).

# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(*items, item1)
#   puts "Let's start gathering food."
#   puts "#{items.join(", ")}"
#   puts "#{item1}"
#   puts "We've finished gathering!"
# end

# gather(*items)

# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(item1, *items, item2)
#   puts "Let's start gathering food."
#   puts "#{item1}"
#   puts "#{items.join(", ")}"
#   puts "#{item2}"
#   puts "We've finished gathering!"
# end

# gather(*items)

# # Let's start gathering food.
# # apples
# # corn, cabbage
# # wheat
# # We've finished gathering!

# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(item1, *items)
#   puts "Let's start gathering food."
#   puts "#{item1}"
#   puts "#{items.join(", ")}"
#   puts "We've finished gathering!"
# end

# gather(*items)

# # Let's start gathering food.
# # apples
# # corn, cabbage, wheat
# # We've finished gathering!

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(item1, item2, item3, item4)
  puts "Let's start gathering food."
  puts "#{item1}, #{item2}, #{item3} and #{item4}"
  puts "We've finished gathering!"
end

gather(*items)

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!