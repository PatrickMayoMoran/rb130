require 'minitest/autorun'

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @sample = File.open('text.txt', 'r')
    @text_object = Text.new(@sample.read)
    @sample.rewind
  end

  def test_swap
    assert_equal(@sample.read.gsub('a', 'e'), @text_object.swap('a', 'e'))
  end

  def teardown
    @sample.rewind
    @sample.close
  end
end
