require './solver'

describe Solver do
  it "it should return the factorial of 5 which is 120" do
    solver = Solver.new
    
    factorial = solver.factorial(5)

    expect(factorial).to eql 120 
  end

  it "it should return an raise an error" do
    solver = Solver.new
    expect {factorial = solver.factorial(-1)}.to raise_error(Exception,'negative numbers not allowed')
  end

  it "it should return an nil" do
    solver = Solver.new

    factorial = solver.factorial(nil)

    expect(factorial).to be nil
  end
  
  
end
