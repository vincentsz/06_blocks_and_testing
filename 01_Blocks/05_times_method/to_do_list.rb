# This class represents a todo item and its associated
# data: name and description. There's also a "done"
# flag to show whether this todo item is done.

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end

class UniqueError < StandardError
end

class TodoList
  attr_accessor :title
  attr_reader :todos

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(todo)
    raise TypeError, 'You can only add Todo objects.' unless todo.is_a? Todo
    raise UniqueError, 'This Todo object is already in your list.' if todos.include? todo
    todos << todo
    todos
  end

  alias_method :<<, :add

  def size
    todos.size
  end

  def first
    todos.first
  end

  def last
    todos.last
  end

  def to_a
    todos.clone
  end

  def done?
    todos.all? { |todo| todo.done? }
  end

  def item_at(idx)
    todos.fetch(idx)
  end

  def mark_done_at(idx)
    item_at(idx).done!
  end

  def mark_undone_at(idx)
    item_at(idx).undone!
  end

  def done!
    todos.each { |todo| todo.done! }
  end

  def shift
    todos.shift
  end

  def pop
    todos.pop
  end

  def remove_at(idx)
    todos.delete(item_at(idx))
  end

  def to_s
    text = <<~TXT
      ---- #{title} ---- 
      #{todos.map(&:to_s).join("\n")}
    TXT
    text
  end



  # rest of class needs implementation
end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

puts list

list.pop

puts list

list.mark_done_at(1)

puts list

# The assignment for you is to figure out the rest of the implementation in order for the below code to work. 
# Note that this assignment doesn't have anything to do with blocks yet -- it's just basic Ruby at this point.
# Implement the rest of the TodoList so that we can write this code:


# # given
# todo1 = Todo.new("Buy milk")
# todo2 = Todo.new("Clean room")
# todo3 = Todo.new("Go to gym")
# list = TodoList.new("Today's Todos")

# ---- Adding to the list -----

# # add
# p list.add(todo1)                 # adds todo1 to end of list, returns list
# p list.add(todo2)                 # adds todo2 to end of list, returns list
# p list.add(todo3)                 # adds todo3 to end of list, returns list
# # p list.add(1)                     # raises TypeError with message "Can only add Todo objects"

# p list << todo3
# # same behavior as add

# # ---- Interrogating the list -----

# # # size
# # p list.size                       # returns 3

# # # first
# # p list.first                      # returns todo1, which is the first item in the list

# # # last
# # p list.last                       # returns todo3, which is the last item in the list

# # #to_a
# # p list.to_a                      # returns an array of all items in the list

# # #done?
# # p list.done?                     # returns true if all todos in the list are done, otherwise false

# # # ---- Retrieving an item in the list ----

# # # item_at
# # # list.item_at                    # raises ArgumentError
# # p list.item_at(1)                 # returns 2nd item in list (zero based index)
# # # list.item_at(100)               # raises IndexError

# # # ---- Marking items in the list -----

# # # mark_done_at
# # # list.mark_done_at               # raises ArgumentError
# # p list.mark_done_at(1)            # marks the 2nd item as done
# # # list.mark_done_at(100)          # raises IndexError

# # # mark_undone_at
# # # list.mark_undone_at             # raises ArgumentError
# # p list.mark_undone_at(1)          # marks the 2nd item as not done,
# # # list.mark_undone_at(100)        # raises IndexError

# # # done!
# # list.done!                      # marks all items as done
# # # p list.to_a
# # # ---- Deleting from the list -----

# # # shift
# # # p list.shift                      # removes and returns the first item in list

# # # pop
# # # p list.pop                        # removes and returns the last item in list

# # # remove_at
# # # list.remove_at                  # raises ArgumentError
# # # p list.remove_at(1)               # removes and returns the 2nd item
# # # list.remove_at(100)             # raises IndexError

# # # ---- Outputting the list -----

# # # to_s
# # puts list.to_s                      # returns string representation of the list

# # # ---- Today's Todos ----
# # # [ ] Buy milk
# # # [ ] Clean room
# # # [ ] Go to gym

# # # or, if any todos are done

# # # ---- Today's Todos ----
# # # [ ] Buy milk
# # # [X] Clean room
# # # [ ] Go to gym

# # # Study the requirements above, and try to build the TodoList class.