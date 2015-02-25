gem 'minitest'
require 'minitest/autorun'
require_relative 'pyramid'

class PyramidTest < Minitest::Test

  def test_it_returns_number_of_sodas_in_a_given_level
    pyramid = Pyramid.new(@level)
    assert_equal 4, pyramid.find_level_quantity(2)
    assert_equal 9, pyramid.find_level_quantity(3)
  end

end



# Let's pretend your company just hired your friend from college and paid you a referral bonus.
# Awesome! To celebrate, you're taking your team next door and using the referral bonus to buy,
# and build, the largest three-dimensional soda can pyramid you can.
# And then probably drink those sodas, because let's pretend it's Friday too.


# A soda can pyramid will square the number of cans in each level - 1 can in the top level,
# 4 in the second, 9 in the next, 16, 25...
#
# Complete the sodamid function to return the number of complete levels of a
# soda can pyramid you can make, given the parameters of:
#
# 1) your referral bonus, and
# 2) the price of a soda can
