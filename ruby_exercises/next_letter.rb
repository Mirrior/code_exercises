require 'rspec'

#My way
def increment_value str
  str.concat(str.next.split(//)[-1])
end

#Jordan's way
#def increment_value str
#  str + str.next.slice(-1)
#end

describe 'Increment string value sequence' do
  it 'appends the next item in the sequence of a string' do
    expect(increment_value 'abcde').to eq('abcdef')
    expect(increment_value '123').to eq('1234')
  end
end