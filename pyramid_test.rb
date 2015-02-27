gem 'minitest'
require 'minitest/autorun'
require_relative 'pyramid'

class PyramidTest < Minitest::Test

  def test_it_returns_array_of_sodas_per_level
    pyramid = Pyramid.new(50, 2)
    pyramid.level = 3
    assert_equal [1, 4, 9], pyramid.total_sodas_per_level
  end

  def test_it_returns_total_number_of_sodas_for_given_number_of_levels
    pyramid = Pyramid.new(50, 2)
    pyramid.level = 4
    assert_equal 30, pyramid.total_sodas_in_pyramid
    pyramid.level = 5
    assert_equal 55, pyramid.total_sodas_in_pyramid
  end

  def test_it_returns_total_available_sodas_given_bonus_and_price
    pyramid = Pyramid.new(50, 2)
    assert_equal 25, pyramid.total_available_sodas
  end

  def test_it_returns_number_of_levels_for_a_given_bonus
    pyramid = Pyramid.new(50, 2)
    assert_equal 3, pyramid.total_levels_for_a_given_bonus
  end

end
