require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @cash_register = CashRegister.new(0)
  end

  def test_accept_money
    @cash_register.accept_money(100)

  end
end
