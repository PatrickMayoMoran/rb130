require 'minitest/autorun'

require_relative 'transaction'

class TransactionTest < Minitest::Test
  def setup
    @transaction = Transaction.new(40)
  end

  def test_prompt_for_payment
    input = StringIO.new("52\n")

  end
end
