require './solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  context "Testing for factorial" do
    it "it should return the factorial of 5 which is 120" do
    factorial = @solver.factorial(5)

    expect(factorial).to eql 120 
    end

    it "it should return an raise an error" do
      expect {@solver.factorial(-1)}.to raise_error(Exception,'negative numbers not allowed')
    end

    it "it should return an nil" do
      factorial = @solver.factorial(nil)

      expect(factorial).to be nil
    end
  end
  
  context "Testing for reverse method" do
    it "should return a reverse string" do
      reverse = @solver.reverse('hello')

      expect(reverse).to eql 'olleh' 
    end

    it "should return an Exception if input is not a string" do
      reverse = @solver.reverse(nil)
      reverse1 = @solver.reverse(89)

      expect { @solver.reverse(nil)}.to raise_error(Exception,'input is not a string')
      expect { @solver.reverse(89) }.to raise_error(Exception,'input is not a string')
    end
    
  end
  
end
