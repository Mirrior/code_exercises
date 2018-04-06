require 'rspec'

#My way
#class Hash
#  def param_converter
#    string = String.new
#    each do |key, value|
#      string.concat("#{key}=#{value}&")
#    end
#    string.chop!
#  end
#end

#Jordan's way
class Hash
  def param_converter
    self.map { |i| i * "=" } * "&"
  end
end

describe 'HTML Param Converter' do
  it 'Adds an HTML param converter to the Hash class' do
    hash = { :topic => "baseball", :team => "astros" }
    expect(hash.param_converter).to eq('topic=baseball&team=astros')
  end
end