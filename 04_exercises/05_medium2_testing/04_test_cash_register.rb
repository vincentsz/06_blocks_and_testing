require 'minitest/autorun'
require 'minitest/reporters'

require_relative 'cash_register'
require_relative 'transaction'

Minitest::Reporters.use!

class CashRegisterTest < MiniTest::Test
  def test_change
    register = CashRegister.new(1000)
    transaction = Transaction.new(90) #itemcost
    transaction.amount_paid = 100

    # previous_amount = register.total_money
    # register.change(transaction)
    # current_amount = register.total_money

    # assert_equal(previous_amount - 10, current_amount)

    assert_equal(10, register.change(transaction))
  end
end
