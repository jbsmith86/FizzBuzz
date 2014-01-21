class BeyondFizzBuzz

  def initialize(numbers_hash, iterations)
    @numbers_hash=numbers_hash
    @num_array=(1..iterations).to_a

    extensiblefizz(@numbers_hash, @num_array)
  end

  def extensiblefizz(numbers_hash, num_array)
    for number in num_array
      string = ''
      for key in numbers_hash.keys
        if number % key == 0
          string += numbers_hash[key]
        end
      end
      if string.empty?
        string = number.to_s
      end
      print string + "\n"
    end
  end

end

BeyondFizzBuzz.new({ 3 => 'Fizz', 5 => 'Buzz', 7 => 'Sivv', 9 => 'Blah', 20 => 'Bam', 22 => 'Boom' }, 300)
