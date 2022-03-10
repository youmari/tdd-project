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
  
end