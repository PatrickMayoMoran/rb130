require 'minitest/autorun'

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    lorem = <<~HEREDOC
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed vulputate ipsum.
      Suspendisse commodo sem arcu. Donec a nisi elit. Nullam eget nisi commodo, volutpat
      quam a, viverra mauris. Nunc viverra sed massa a condimentum. Suspendisse ornare justo
      nulla, sit amet mollis eros sollicitudin et. Etiam maximus molestie eros, sit amet dictum
      dolor ornare bibendum. Morbi ut massa nec lorem tincidunt elementum vitae id magna. Cras
      et varius mauris, at pharetra mi.
    HEREDOC
    @text_object = Text.new(lorum)
  end

  def test_swap
    @text_object.swap('a', 'e')
    assert_equal( , @text_object.
  end

  def teardown
  end
end
