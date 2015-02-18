class Printer
  attr_reader :number_of_pages,
              :pairs

  def initialize(number_of_pages=2)
    @number_of_pages = number_of_pages
  end

  def pairs
    number_of_pages/2
  end

  def all_pages
    pairs.times.map do |i|
      [i + 1, number_of_pages - i]
    end
  end
end
