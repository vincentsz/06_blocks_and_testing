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
  # attr_reader :todos

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(todo)
    raise TypeError, 'You can only add Todo objects.' unless todo.is_a? Todo
    raise UniqueError, 'This Todo object is already in your list.' if @todos.include? todo
    @todos << todo
    @todos
  end

  alias_method :<<, :add

  def size
    @todos.size
  end

  def first
    @todos.first
  end

  def last
    @todos.last
  end

  def to_a
    @todos.clone
  end

  def done?
    @todos.all? { |todo| todo.done? }
  end

  def item_at(idx)
    @todos.fetch(idx)
  end

  def mark_done_at(idx)
    item_at(idx).done!
  end

  def mark_undone_at(idx)
    item_at(idx).undone!
  end

  def done!
    @todos.each { |todo| todo.done! }
  end

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def remove_at(idx)
    @todos.delete(item_at(idx))
  end

  def to_s
    text = <<~TXT
      ---- #{title} ----
      #{@todos.map(&:to_s).join("\n")}
    TXT
    text
  end

  def each
    @todos.each do |todo| 
      yield(todo)
    end
    self
  end

  def select
    list = TodoList.new(title)
    each do |todo|
      list.add(todo) if yield(todo)
    end
    list
  end

  def find_by_title(string)
    select { |todo| todo.title == string }.first
  end

  def all_done
    select { |todo| todo.done? }
  end

  def all_not_done
    select { |todo| !todo.done? }
  end

  def mark_done(string)
    each { |todo| todo.done! if todo.title == string }
  end

  # def mark_done(string)
  #   find_by_title(string) && find_by_title(string).done!
  # end

  def mark_all_done
    each { |todo| todo.done! }
  end

  def mark_all_undone
    each { |todo| todo.undone! }
  end
end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

todo1.done!

p list.mark_done("nothing")


# TodoList Class 	  Description
# find_by_title 	  takes a string as argument, and returns the first Todo object that matches the argument. Return nil if no todo is found.
# all_done 	        returns new TodoList object containing only the done items
# all_not_done 	    returns new TodoList object containing only the not done items
# mark_done 	      takes a string as argument, and marks the first Todo object that matches the argument as done.
# mark_all_done 	  mark every todo as done
# mark_all_undone 	mark every todo as not done