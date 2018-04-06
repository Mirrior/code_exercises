require 'rspec'

string_array = [
  "Web IconHTML & CSS100%",
  "Command LineLearn the Command Line100%",
  "Ruby IconRuby50%",
  "Rails IconLearn Ruby on Rails100%",
  "Git IconLearn Git100%",
  "SassLearn Sass20%",
  "JQuery IconjQuery1%",
  "Angular JSLearn AngularJS 1.X100%",
  "Javascript IconLearn JavaScript55%"
]
#I was in the right area
#def string_parser string_array
#  string_array.map { |i| i.match (/\d\//)}
#end

# regular expression for finding % /\d*%/

#Jordan's modified answer
def string_parser string_array
  string_array.map { |i| i.scan(/\d+/).last.to_i}
end

#Jordan's original answer
#def string_parser
#  final_array = []
#  string_array.each do |str|
#    final_array << str.scan(/\d+/)
#  end
#  final_array
#  
#end

describe "String Parser" do
  it 'can take a string and output the correct values' do
    expect(string_parser(string_array)).to eq([100, 100, 50, 100, 100, 20, 1, 100, 55])
  end
end