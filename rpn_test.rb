gem 'minitest'
require 'minitest/autorun'
require_relative 'rpn'

class RPNCalculatorTest < Minitest::Test

  def test_it_can_evaluate_addition
    calc = RPNCalculator.new
    assert_equal 3, calc.evaluate('1 2 +')
  end

  def test_it_can_evaluate_multiplication
    calc = RPNCalculator.new
    assert_equal 10, calc.evaluate('2 5 *')
  end

  def test_it_can_evaluate_subtraction
    calc = RPNCalculator.new
    assert_equal 30, calc.evaluate('50 20 -')
  end

end
