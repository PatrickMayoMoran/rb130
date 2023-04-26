require 'minitest/autorun'

class Exercise < Minitest::Test

  def test_odd
    value = 2
    assert(value.odd?)
  end


end
