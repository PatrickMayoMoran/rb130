require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @cash_register = CashRegister.new(1000)
    @transaction = Transaction.new(50)
    @transaction.amount_paid = 80
  end

  def test_accept_money
    @cash_register.accept_money(@transaction)
    assert_equal(1080, @cash_register.total_money)
  end

  def test_change
    change = @cash_register.change(@transaction)
    assert_equal(30, change)
  end

  def test_give_receipt
    expected = "You've paid $50.\n"
    assert_output(expected) { @cash_register.give_receipt(@transaction) }
  end
end
