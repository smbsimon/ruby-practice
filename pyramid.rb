class Pyramid
  attr_reader :level,
              :bonus,
              :price

  def initialize
    @level   = level
    @bonus   = 50
    @price   = 2
  end

  def total_sodas_per_level(level)
    (1..level).map { |i| i*i }
  end

  def total_sodas_in_pyramid(level)
    total_sodas_per_level(level).reduce(:+)
  end

  def total_available_sodas(bonus, price)
    bonus / price
  end

  def total_levels_for_a_given_bonus(bonus, price)
    
  end
end




#
# 50 / 2 = 25 sodas.
# 25 sodas are on level 5
# but what i want is to find the level at which count does not exceed 25 sodas... which is level 3
# i want to find the level at which i don't exceed total_available_sodas







# Let's pretend your company just hired your friend from college and paid you a referral bonus.
# Awesome! To celebrate, you're taking your team next door and using the referral bonus to buy,
# and build, the largest three-dimensional soda can pyramid you can.
# And then probably drink those sodas, because let's pretend it's Friday too.



# level 1 = 1     for total of 1 sodas
# level 2 = 4     for total of 5 sodas
# level 3 = 9     for total of 14 sodas
# level 4 = 16    for total of 30 sodas
# level 5 = 25    for total of 55 sodas



# Complete the sodamid function to return the number of complete levels of a
# soda can pyramid you can make, given the parameters of:
#
# 1) your referral bonus, and
# 2) the price of a soda can
