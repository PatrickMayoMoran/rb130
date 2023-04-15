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

# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(todo)
    if todo.is_a? Todo
      todos << todo 
    else
      raise TypeError, "can only add Todo objects"
    end

    self
  end

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
    todos
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
    todos.fetch(idx)
    todos.delete_at(idx)
  end

  def to_s
    text =  "--- #{title} ---\n"
    text << todos.map(&:to_s).join("\n")
    text
  end

  def each
    counter = 0
    while counter < todos.size
      todo = todos[counter]
      yield(todo)
      counter += 1
    end

    self
  end

  def select
    selected = TodoList.new(title)
    self.each do |todo|
      selected << todo if yield(todo)
    end
    selected
  end

  def find_by_title(title)
    select { |t| t.title == title }
  end

  def all_done
    select { |t| t.done? }
  end

  def all_not_done
    raise NotImplementedError
  end

  def mark_done(str)
    raise NotImplementedError
  end

  def mark_all_done
    raise NotImplementedError
  end

  def mark_all_undone
    raise NotImplementedError
  end

  private
  attr_reader :todos
  alias_method :<<, :add

end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

list.mark_done_at(1)

p list.find_by_title("Go to gym")
p list.all_done
p list.all_undone
p list.mark_done("Buy milk")
p list.mark_all_done
p list.mark_all_undone
