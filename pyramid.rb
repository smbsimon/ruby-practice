class Pyramid
  attr_reader   :bonus, :price
  attr_accessor :level

  def initialize(bonus, price)
    @level = 0
    @bonus = bonus
    @price = price
  end

  def total_sodas_per_level
    (1..level).map { |i| i*i }
  end

  def total_sodas_in_pyramid
    total_sodas_per_level.reduce(:+)
  end

  def total_available_sodas
    bonus / price
  end

  def total_levels_for_a_given_bonus
    pyramid_sodas = 0

    while pyramid_sodas <= total_available_sodas do
      @level += 1
      pyramid_sodas = total_sodas_in_pyramid
    end

    return level - 1
  end
end
