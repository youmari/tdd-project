class Solver
  def factorial(number)
    return nil if number == nil
    raise Exception.new "negative numbers not allowed" if number < 0
    return 1 if number <= 1
    number * factorial(number -1)
  end

  def reverse(string)
    raise Exception.new "input is not a string" unless string.is_a?(String)
    string.reverse
  end

  def fizzbuzz(number)
    raise Exception.new "input is not a number" unless number.is_a?(Fixnum)
    if number % 3 == 0 && number % 5 == 0
      'fizzbuzz'
    elsif number % 5 == 0
      'buzz'
    elsif number % 3 == 0
      'fizz'
    else
      number.to_s
    end
  end
  
end