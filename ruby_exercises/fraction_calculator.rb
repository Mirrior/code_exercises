require 'rspec'
# my way
def fraction_calculator fraction_one, fraction_two, operator
  [fraction_one.to_r, fraction_two.to_r].reduce(operator.to_sym).to_s
end

def second_fraction_calculator operator, *fractions
  [*fractions.map{|fraction| fraction.to_r}].reduce(operator.to_sym).to_s
end
# my way rewritten
# def fraction_calculator fraction_one, fraction_two, operator
#   fracs = [fraction_one.to_r, fraction_two.to_r]
#   fracs.reduce(operator.to_sym).to_s
# end

describe 'Fraction multiplication' do
  it 'can multiply two fractions and output the value in a string based fraction format' do
    expect(fraction_calculator("1/3", "2/4", "*")).to eq("1/6")
    expect(fraction_calculator("1/3", "2/4", "/")).to eq("2/3")
    expect(fraction_calculator("1/3", "2/4", "+")).to eq("5/6")
    expect(fraction_calculator("1/3", "2/4", "-")).to eq("-1/6")
  end
end