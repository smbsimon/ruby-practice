class RPNCalculator

  def evaluate(rpn)
    stack = []
    split_elements = rpn.split(" ")

    split_elements.each_with_index do |element, index|
      if element =~ /\d+/
        stack << element.to_i
      else
        last_two_elements = stack.pop(2)
        result = last_two_elements.inject(element)
        stack << result
      end

      if index == (split_elements.length - 1)
        return result
      end
    end
  end
end
