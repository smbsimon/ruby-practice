gem 'minitest'
require 'minitest/autorun'
require_relative 'pyramid'

class PyramidTest < Minitest::Test

  def test_it_returns_number_of_sodas_for_given_number_of_levels
    pyramid = Pyramid.new
    assert_equal 30, pyramid.total_sodas_in_pyramid(4)
    assert_equal 55, pyramid.total_sodas_in_pyramid(5)
  end




end



# level 1 = 1     for total of 1 sodas
# level 2 = 4     for total of 5 sodas
# level 3 = 9     for total of 14 sodas
# level 4 = 16    for total of 30 sodas
# level 5 = 25    for total of 55 sodas



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
