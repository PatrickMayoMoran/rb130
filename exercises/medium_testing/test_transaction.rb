require 'minitest/autorun'

require_relative 'transaction'

class TransactionTest < Minitest::Test
  def setup
    @transaction = Transaction.new(40)
  end

  def test_prompt_for_payment
    capture_io do
      input = StringIO.new("52\n")
      @transaction.prompt_for_payment(input: input)
      assert_equal(52, @transaction.amount_paid)
    end
  end
end
