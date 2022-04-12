require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(100)
    @transaction = Transaction.new(20)
  end
  
  def test_accept_money
    @transaction.amount_paid = 20
    @register.accept_money(@transaction)
    
    assert_equal(120, @register.total_money)
  end
  
  def test_change
    @register = CashRegister.new(100)
    @transaction = Transaction.new(20)
    @transaction.amount_paid = 50
    
    assert_equal(30, @register.change(@transaction))
  end
  
  def test_give_receipt
    assert_output("You've paid $20.\n") { @register.give_receipt(@transaction) }
  end
  
  def test_prompt_for_payment
    input = StringIO.new("30\n")
    assert_output("You owe $20.\nHow much are you paying?\n") do 
      @transaction.prompt_for_payment(input: input)
    end
    assert_equal(30, @transaction.amount_paid)
  end
  
  def test_prompt_for_payment
    input = StringIO.new("30\n")
    output = StringIO.new
    @transaction.prompt_for_payment(input: input, output: output)
    assert_equal(30, @transaction.amount_paid)
  end
end