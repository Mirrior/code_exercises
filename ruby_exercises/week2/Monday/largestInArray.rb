
require 'rspec'

def new_max array_of_elements
  max = 0

  array_of_elements.each do |i|
    if i > max
      max = i
    end
  end
  p  max
end

describe 'New Max method' do
  it 'returns the max value from an array efficiently' do
    test_array = [2, 4, 10, 3, 1]
    expect(new_max(test_array)).to eq(10)
  end
end

new_max [2, 4, 10, 3, 1]