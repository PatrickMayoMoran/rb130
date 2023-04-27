require 'minitest/autorun'

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @sample = File.open('text.txt', 'r')
    @text = Text.new(@sample.read)
  end

  def test_swap
    actual = @text.swap('a', 'e')
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

  def test_count
    actual = @text.word_count
    text = <<~HEREDOC
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed vulputate ipsum.
Suspendisse commodo sem arcu. Donec a nisi elit. Nullam eget nisi commodo, volutpat
quam a, viverra mauris. Nunc viverra sed massa a condimentum. Suspendisse ornare justo
nulla, sit amet mollis eros sollicitudin et. Etiam maximus molestie eros, sit amet dictum
dolor ornare bibendum. Morbi ut massa nec lorem tincidunt elementum vitae id magna. Cras
et varius mauris, at pharetra mi.
    HEREDOC
    expected = text.split.count
    assert_equal(expected, actual)
  end

  def teardown
    @sample.close
    puts "File has been closed: #{@sample.closed?}"
  end
end
