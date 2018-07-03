require 'rspec'

# def hashed_fizz_buzz num
#   hash = Hash.new

#   1.upto(num).each do |i|
#     if (i % 3).zero? && (i % 5).zero?
#       hash[i] = "FizzBuzz"
#     elsif (i % 3).zero? || (i % 5).zero?
#       hash[i] = (i % 3).zero? ? "Fizz" : "Buzz"
#     else
#       hash[i] = i
#     end
#   end

#   hash
# end

# Compare using benchmark

def hashed_fizz_buzz num
  hash = Hash.new

  1.upto(num).each do |i|
    if (i % 3).zero? && (i % 5).zero?
      hash[i] = "FizzBuzz"
    elsif (i % 3).zero?
      hash[i] = "Fizz"
    elsif (i % 5).zero?
      hash[i] = "Buzz"
    else
      hash[i] = i
    end
  end

  hash
end

describe 'Hashed FizzBuzz' do
  it 'generates a fizz buzz hash' do
    final_hash = {
      1=>1, 2=>2, 3=>"Fizz", 4=>4, 5=>"Buzz", 6=>"Fizz", 7=>7, 8=>8, 9=>"Fizz", 10=>"Buzz", 11=>11, 12=>"Fizz", 13=>13, 14=>14, 15=>"FizzBuzz", 16=>16, 17=>17, 18=>"Fizz", 19=>19, 20=>"Buzz", 21=>"Fizz", 22=>22, 23=>23, 24=>"Fizz", 25=>"Buzz"
    }

    expect(hashed_fizz_buzz 25).to eq(final_hash)
  end
end