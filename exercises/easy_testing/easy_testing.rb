require 'minitest/autorun'

class Exercise < Minitest::Test

  def test_odd
    value = 1
    assert(value.odd?)
  end

  def test_equality
    value = 'XYZ'
    assert_equal('xyz', value.downcase)
  end
end
