
require 'rspec'

def multiplication_table num
  multi_table = Hash.new {(1..10).to_a}
  1.upto(num)do |i| 
    multi_table[i] = multi_table[i].map{|ele| ele * i }
  end
  multi_table
end

describe 'Multiplication table' do
  it 'Creates a hash based multiplcation table' do
    hash = {
      1=>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      2=>[2, 4, 6, 8, 10, 12, 14, 16,18, 20],
      3=>[3, 6, 9, 12, 15, 18, 21, 24, 27, 30]
    }

    expect(multiplication_table 3).to eq(hash)
  end
end