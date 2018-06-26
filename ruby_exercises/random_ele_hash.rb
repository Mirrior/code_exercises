require 'rspec'

menu = {
  'appetizers': ['Chips', 'Quesadillas', 'Flatbread'],
  'entrees': ['Steak', 'Chicken', 'Lobster'],
  'desserts': ['Cheesecake', 'Cake', 'Cupcake']
}

#  First way
# def daily_special hash
# hash[hash.keys[rand(hash.count)]][rand(hash[hash.keys[rand(hash.count)]].count)]
# end

#  Second way, most general?
#def daily_special hash
#  hash.values.flatten[ rand ( hash.values.flatten.count ) ]
#end

# Third way specific to objects with 9 sub-elements
# def daily_special hash
#   hash.values.flatten[ rand 9 ]
# end

# Jordan's way
# def daily_special hash
#  menu_items = []
#  hash.map { |category| menu_items << category.last }.flatten.sample
#end

# my way remade 10 seconds after Jordan's video
def daily_special hash
  hash.values.flatten.sample
end

describe 'Nested hash element selector' do
  it 'selected a random element from the set of nested arrays' do
    expect(daily_special(menu).class).to eq(String)
  end
end