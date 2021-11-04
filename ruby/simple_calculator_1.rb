class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end
  
  def self.calculate(first_operand, second_operand, operation)
    begin
      if operation == '+'
        return "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
      elsif operation == '*'
        return "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
      elsif operation == '/'
        if second_operand == 0
          raise ZeroDivisionError
        end
        return "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
      else
        raise UnsupportedOperation
      end
    rescue ZeroDivisionError
      return "Division by zero is not allowed."
    rescue UnsupportedOperation
      raise UnsupportedOperation
    rescue => e
      raise ArgumentError
    end
  end
end
