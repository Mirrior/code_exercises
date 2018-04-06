require 'rspec'
require_relative 'vowel_replace.rb'

describe 'String method' do

  it 'replaces vowel in given string' do
    expect(replace_vowel('Hello')).to eq('H*l*')

  end
end