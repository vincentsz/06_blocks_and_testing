# Annas problems 		
#rb130_ruby_challenges

1. 
```ruby 
# What does this code output and return and why?

def wham(&words_2)
  yield
end

line_2 = Proc.new {puts "#{line_1}" + ' The Very Next Day You Gave It Away' }

line_1 = 'Last Christmas I Gave You My Heart...'

wham(&line_2)

```

2. How would you fix this? (more than one way possible)

```ruby 

def wham(words_2, line)
  words_2.call(line)
end

line_2 = Proc.new { |lyric| puts "#{lyric}" + ' The Very Next Day You Gave It Away' }

line_1 = 'Last Christmas I Gave You My Heart...'

wham(line_2, line_1)

```

3. What does this output and what concept does it demonstrate?

```ruby 

def a_method
   yield('Mariah', 'Carey', 'All I Want For Christmas Is You!...')
end

p a_method { |*a, b| 
  puts a.join(' ') 
  b
}

```

4. What is going on in the line below? Explain the concept that’s being demonstrated.
```ruby 
['Jingle', 'Bells', 'Jingle', 'Bells', 'Jingle', 'All', 'The', 'Way'].map(&:upcase)
```

5. The following needs to output `1`, `2`, and `3`. You can change `first_method` and `second_method` to make it work but nothing else

```ruby

def first_method

end

def second_method

end

array = [1, 2, 3]

first_method(array) do |num|
  puts num
end
```

6. What does this return and what concept does it demonstrate?

```ruby 

def a_method(first_name, a_proc)
  a_proc.call(first_name)
end

a_name = "William"
a_proc = Proc.new { |arg| puts "#{arg} Shakespeare"}

a_method(a_name, a_proc)
a_name = "Billy"
a_method(a_name, a_proc)

```

7. What does this return and what concept does it demonstrate?

```ruby

class Greeter
  def initialize(greeting)
    @greeting = greeting
  end

  def to_proc
    proc {|name| "#{@greeting}, #{name}!"}
  end
end

hi = Greeter.new("Hi")
hi.to_proc.call("Gilles")
["Jan", "Michael"].map(&hi)

```

8. This needs to output `1`, `1`, `2`, `3`, `2` You can change `test` only to make it work. Can’t change `test2`

```ruby 

def test2
  array = [1, 2, 3]
  array.each do |n|
    yield(n)
  end
end

def test
  puts 1
  puts 2
end

test { |n| puts n }

```

9. You can add new lines of code but can’t change existing. Make it work to return `2` and `’2’`

```ruby 

def my_method
  yield(2)
end

my_method(&to_s) #=> 2
my_method(&to_i) #=> "2"

```

10. Complete `Bike` and `Car` so the tests work.

```ruby 

class Bike

end

class Car

end

require 'minitest/autorun'

class Transport_tester < Minitest::Test

  def test_name1
    car1 = Car.new("Gazelle")
    bike1 = Bike.new("Gazelle")
    assert_equal(false, car1 == bike1)
  end

  def test_name2
    car1 = Car.new("Gazelle")
    car2 = Car.new("Gazelle")
    assert_equal(true, car1 == car2)
  end



  def test_name3
    car1 = Car.new("Gazele")
    car2 = Car.new("Gazelle")
    assert_equal(false, car1 == car2)
  end
end

```

