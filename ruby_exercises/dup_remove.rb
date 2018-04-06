require 'rspec'


# Jordan's Way
class Array
  def remove_duplicates
    self & self
  end
end
describe 'Duplicate removal' do
  it 'Removed duplicates from an array' do
    arr = [1, 3, 4, 1, 4]
    expect(arr.remove_duplicates).to eq([1, 3, 4])
  end
end