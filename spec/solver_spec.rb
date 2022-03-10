require './solver'

describe Solver do
  it "it should return the factorial of 5 which is 120" do
    solver = Solver.new
    
    factorial = solver.factorial(5)

    expect(factorial).to eql 120 
  end

  it "it should return an raise an error" do
    solver = Solver.new
    
    factorial = solver.factorial(-1)

    expect(factorial).to raise_error
  end
  
  
end
