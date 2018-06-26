require 'rspec'
# my orginal way
def fraction_calculator fraction_one, fraction_two, operator
  [fraction_one.to_r, fraction_two.to_r].reduce(operator.to_sym).to_s
end

# A better way
def second_fraction_calculator operator, *fractions
  fractions.map{|fraction| fraction.to_r}.reduce(operator.to_sym).to_s
end

# my way rewritten
# def fraction_calculator fraction_one, fraction_two, operator
#   fracs = [fraction_one.to_r, fraction_two.to_r]
#   fracs.reduce(operator.to_sym).to_s
# end

describe 'Fraction multiplication' do
  describe 'Way one' do
    it 'can multiply two fractions and output the value in a string based fraction format' do
      expect(fraction_calculator("1/3", "2/4", "*")).to eq("1/6")
    end

    it 'can divide two fractions and output the value in a string based fraction format' do
      expect(fraction_calculator("1/3", "2/4", "/")).to eq("2/3")
    end

    it 'can add two fractions and output the value in a string based fraction format' do
      expect(fraction_calculator("1/3", "2/4", "+")).to eq("5/6")
    end

    it 'can subtract two fractions and output the value in a string based fraction format' do
      expect(fraction_calculator("1/3", "2/4", "-")).to eq("-1/6")
    end
  end

  describe "Way two" do
    it 'can add two fractions and output the value in a string based fraction format' do
      expect(second_fraction_calculator("+", "1/3", "2/4")).to eq("5/6")
    end

    it 'can subtract two fractions and output the value in a string based fraction format' do
      expect(second_fraction_calculator("-", "1/3", "2/4",)).to eq("-1/6")
    end

    it 'can multiply two fractions and output the value in a string based fraction format' do
      expect(second_fraction_calculator("*", "1/3", "2/4")).to eq("1/6")
    end

    it 'can divide two fractions and output the value in a string based fraction format' do
      expect(second_fraction_calculator("/", "1/3", "2/4")).to eq("2/3")
    end
  end
end