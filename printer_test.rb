gem 'minitest'
require 'minitest/autorun'
require_relative 'printer'

class PrinterTest < Minitest::Test

  def test_it_returns_total_number_of_pages
    printer = Printer.new(4)
    assert_equal 4, printer.number_of_pages
  end

  def test_it_returns_array_pairs
    printer = Printer.new(4)
    assert_equal [[1,4], [2,3]], printer.all_pages
  end

  def test_it_returns_different_array_pairs
    printer = Printer.new(8)
    assert_equal [[1,8], [2,7], [3,6], [4,5]], printer.all_pages
  end
end
