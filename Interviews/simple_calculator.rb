class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    begin
      raise ArgumentError.new("Only integers allowed.") unless first_operand.is_a?(Integer)
      raise ArgumentError unless second_operand.is_a?(Integer)
      raise UnsupportedOperation.new unless ALLOWED_OPERATIONS.include?(operation)
      raise ZeroDivisionError.new("Division by zero is not allowed.") if second_operand == 0 && operation == "/"

      answer = first_operand.public_send(operation.to_sym, second_operand)
      return "#{first_operand} #{operation} #{second_operand} = #{answer}"
    rescue ZeroDivisionError => e
      return e.message
    end
  end
end

p SimpleCalculator.calculate(10, 10, "*")
