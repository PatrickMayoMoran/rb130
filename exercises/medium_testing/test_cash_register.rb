require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @cash_register = CashRegister.new(1000)
    @transaction = Transaction.new(50)
    @transaction.amount_paid = 50
  end

  def test_accept_money
    @cash_register.accept_money(@transaction)
    assert_equal(1050, @cash_register.total_money)
  end
end
