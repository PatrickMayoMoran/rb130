require 'minitest/autorun'

class Exercise < Minitest::Test

  def test_odd
    value = 2
    assert(value.odd?, "Value not odd")
  end

  def test_equality
    value = 'BYZ'
    assert_equal('xyz', value.downcase, "Downcase won't save you!")
  end

  def test_nil
    value = nil
    assert_nil(value)
  end
end
