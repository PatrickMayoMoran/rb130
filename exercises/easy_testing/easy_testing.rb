require 'minitest/autorun'

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
end
