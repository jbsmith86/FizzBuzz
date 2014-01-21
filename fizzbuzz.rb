class Fizzbuzz

  def initialize
    printfizzbuzz((1..100).to_a)
  end

  def printfizzbuzz(numarray)
    for number in numarray
      if number % 3 == 0
        print 'Fizz'
      end
      if number % 5 == 0
        print 'Buzz'
      end
      if number % 3 != 0 && number % 5 != 0
        print number
      end
      print "\n"
    end
  end
end

Fizzbuzz.new
