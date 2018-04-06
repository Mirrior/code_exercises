require 'rspec'

def cloned_cycle (arr, num)
  Array.new(arr.to_a * num )
end

# other way
# def cloned_cycle (arr, num)
#   arr.to_a * num
# end
  
end

describe 'Cloned cycle' do
  it 'Iterates through an array a variable number of times and returns the full set of elements' do
    arr = (1..3)
    expect(cloned_cycle(arr, 3)).to eq([1, 2, 3, 1, 2, 3, 1, 2, 3])
  end
end