require 'minitest/autorun'

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @sample = File.open('text.txt', 'r')
    @text_object = Text.new(@sample.read)
  end

  def test_swap
    actual = @text_object.swap('a', 'e')
    expected = <<~HEREDOC
      Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
      Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
      quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
      nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
      dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
      et verius meuris, et pheretre mi.
    HEREDOC
    assert_equal(expected, actual)
  end

  def teardown
    @sample.close
  end
end
