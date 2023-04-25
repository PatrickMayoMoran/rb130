require 'minitest/autorun'

require_relative 'todolist'

class TodoListTest < MiniTest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  def test_to_a
    assert_equal(@todos, @list.to_a)
  end

  def test_size
    assert_equal(3, @list.size)
  end

  def test_first
    assert_equal(@todo1, @list.first)
  end

  def test_last
    assert_equal(@todo3, @list.last)
  end

  def test_shift
    shifted = @list.shift
    assert_equal(@todo1, shifted)
    assert_equal([@todo2, @todo3], @list.to_a)
  end

  def test_pop
    popped = @list.pop
    assert_equal(@todo3, popped)
    assert_equal([@todo1, @todo2], @list.to_a)
  end

  def test_done?
    assert_equal(false, @list.done?)
  end

  def test_TypeError_add
    assert_raises(TypeError) { @list.add(5) }
    assert_raises(TypeError) { @list.add(true) }
    assert_raises(TypeError) { @list.add("hi") }
  end

  def test_shovel
    todo = Todo.new("Walk the Dog")
    @todos << todo
    @list << todo
    assert_equal(@todos, @list.to_a)
  end

  def test_add_alias
    todo = Todo.new("Walk the Dog")
    @todos << todo
    @list.add todo
    assert_equal(@todos, @list.to_a)
  end

  def test_item_at
    assert_raises(IndexError) { @list.item_at(50) }
    assert_equal(@todo1, @list.item_at(0))
  end

end
