require 'rspec'
# My first way
# class Array
#  def index_hash
#    h = Hash.new
#   self.each { |e| h[self.index(e)] = e  }
#    h
#  end
# end

# My second way   
class Array
  def index_hash
    self.map{|item| [self.index(item), item]}.to_h
  end
end

# Different way
# class Array
#   def index_hash
#     Hash[self.map{|item| [self.index(item), item]}]
#   end
# end

# Jordan's way
# class Array
#   def index_hash
#     self.each_with_object({}) do |item, hash|
#       hash[self.index(item)] = item
#     end
#   end
# end

describe 'Array to Hash converter' do
  it 'converts an array to a hash, with the keys being the index and the value being the element' do
    arr = %w{the quick brown fox}
    expect(arr.index_hash).to eq({0=>"the", 1=>"quick", 2=>"brown", 3=>"fox"})
  end
end