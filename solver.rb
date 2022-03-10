class Solver
  def factorial(number)
    return nil if number.nil?
    raise Exception, 'negative numbers not allowed' if number.negative?
    return 1 if number <= 1

    number * factorial(number - 1)
  end

  def reverse(string)
    raise Exception, 'input is not a string' unless string.is_a?(String)

    string.reverse
  end

  def fizzbuzz(number)
    raise Exception, 'input is not a number' unless number.is_a?(Integer)

    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 5).zero?
      'buzz'
    elsif (number % 3).zero?
      'fizz'
    else
      number.to_s
    end
  end
end
