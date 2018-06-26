require 'rspec'

def largest_number_combination arr
    arr.map{|n| n.to_s }.sort_by{|num| num[0]}.reverse.join.to_i
end

describe 'largest_number_combination' do
  it 'combines numbers to be the largest possible number' do
    arr = [50, 2, 1, 9]
    expect(largest_number_combination(arr)).to eq(95021)
  end
end