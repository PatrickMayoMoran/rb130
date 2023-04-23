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

  # rest of class needs implementation
  def add(item)
    if item.instance_of? Todo
      todos << item 
    else
      raise TypeError, "Can only add Todo objects"
    end
  end

  alias :<< :add

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
    todos.dup
  end

  def done?
    todos.all? { |t| t.done? }
  end

  def item_at(i)
    todos.fetch(i)
  end

  def mark_done_at(i)
    item_at(i).done!
  end

  def mark_undone_at(i)
    item_at(i).undone!
  end

  def done!
    todos.each_index { |i| mark_done_at(i) }
  end

  def shift
    todos.shift
  end

  def pop
    todos.pop
  end

  def remove_at(i)
    todos.delete(item_at(i))
  end

  def to_s
    text = "---- #{title} ----\n"
    # todos.each { |t| text << t.to_s + "\n" }
    text << todos.map(&:to_s).join("\n")
    text
  end

  def each
    todos.each do |t|
      yield t
    end
    self
  end

  def select
    list = TodoList.new(title)
    each { |t| list << t if yield t }
    list
  end

  def find_by_title(str)
    select { |t| t.title == str }.first
  end

  def all_done
    select { |t| t.done? }
  end

  def all_not_done
    select { |t| !t.done? }
  end

  def mark_done(str)
    find_by_title(str) && find_by_title(str).done!
  end

  def mark_all_done
    each { |t| t.done! }
  end

  def mark_all_undone
    each { |t| t.undone! }
  end

  private

  attr_reader :todos

end
