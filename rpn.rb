require 'pry'

class RPNCalculator

  def evaluate(rpn)
    stack = []
    split_elements = rpn.split(" ")

    split_elements.map do |element|
      if element =~ /\d+/
        stack << element.to_i
      else
        last_two_elements = stack.pop(2)

        a = last_two_elements[0]
        b = last_two_elements[1]

        if element == "+"
          result = a + b
        elsif element == "-"
          result = a - b
        elsif element == "*"
          result = a * b
        else
          puts "error"
        end

        stack << result
        binding.pry
        return result
      end
    end
  end
end
