class RPNCalculator

  def evaluate(rpn)
    split_characters = rpn.split(" ")

    a = split_characters[0].to_i
    b = split_characters[1].to_i


    if split_characters[2] == "+"
      result = a + b
    elsif split_characters[2] == "-"
      result = a - b
    elsif split_characters[2] == "*"
      result = a * b
    else
      puts "error"
    end

    result

  end
end
