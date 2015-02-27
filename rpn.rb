require 'pry'

class RPNCalculator

  def evaluate(rpn)
    split_characters = rpn.split(" ")

    a = split_characters[0].to_i
    b = split_characters[1].to_i


    if split_characters[2] == "+"
      new_element = a + b
    elsif split_characters[2] == "-"
      new_element = a - b
    else split_characters[2] == "*"
      new_element = a * b
    end

    new_element

  end
end
