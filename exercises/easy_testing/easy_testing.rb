require 'minitest/autorun'

class NoExperienceError < StandardError
end

class Employee
  def hire
    raise NoExperienceError
  end
end

class Exercise < Minitest::Test

  def test_odd
    value = 1
    assert(value.odd?, "Value not odd")
  end

  def test_equality
    value = 'XYZ'
    assert_equal('xyz', value.downcase, "Downcase won't save you!")
  end

  def test_nil
    value = nil
    assert_nil(value)
  end

  def test_empty
    list = []
    assert_empty(list)
  end

  def test_includes
    list = ['xyz', 1, true, {}]
    assert_includes(list, 'xyz')
  end

  def test_exception
    employee = Employee.new

    assert_raises(NoExperienceError) { employee.hire }
  end

  def test_type_instance
    value = 5
    assert_instance_of(Numeric, value)
  end

  def test_type_inheritance
    value = 5
    assert_kind_of(Numeric, value)
  end

  def test_object_equality
    list = []
    assert_same(list, list.process)
  end
end
