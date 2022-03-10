require './solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  context 'Testing for factorial' do
    it 'it should return the factorial of 5 which is 120' do
      factorial = @solver.factorial(5)

      expect(factorial).to eql 120
    end

    it 'it should return an raise an error' do
      expect { @solver.factorial(-1) }.to raise_error(Exception, 'negative numbers not allowed')
    end

    it 'it should return an nil' do
      factorial = @solver.factorial(nil)

      expect(factorial).to be nil
    end
  end

  context 'Testing for reverse method' do
    it 'should return a reverse string' do
      reverse = @solver.reverse('hello')

      expect(reverse).to eql 'olleh'
    end

    it 'should return an Exception if input is not a string' do
      expect { @solver.reverse(nil) }.to raise_error(Exception, 'input is not a string')
      expect { @solver.reverse(89) }.to raise_error(Exception, 'input is not a string')
    end
  end

  context 'Testing for fizzbuzz' do
    it 'should return fizz' do
      fizz = @solver.fizzbuzz(12)

      expect(fizz).to eql 'fizz'
    end

    it 'should return buzz' do
      fizz = @solver.fizzbuzz(20)

      expect(fizz).to eql 'buzz'
    end

    it 'should return fizzbuzz' do
      fizz = @solver.fizzbuzz(15)

      expect(fizz).to eql 'fizzbuzz'
    end

    it 'should return 14' do
      fizz = @solver.fizzbuzz(14)

      expect(fizz).to eql '14'
    end

    it 'should return Exception if input not a number' do
      expect { @solver.fizzbuzz(nil) }.to raise_error(Exception, 'input is not a number')
      expect { @solver.fizzbuzz('hhh') }.to raise_error(Exception, 'input is not a number')
    end
  end
end
