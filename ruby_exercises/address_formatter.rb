
require 'rspec'

class AddressFormatter
  def self.format address_info
    <<~ADDRESS
      #{address_info[:'account']}
      #{address_info[:'street_one']}
      #{address_info[:'city']}, #{address_info[:'state']} #{address_info[:'postal_code']}
    ADDRESS
  end
end

describe AddressFormatter do
  it 'takes in an address as a hash and outputs a formatted string' do
    address_data = {
      'account':     'Google',
      'street_one':  '1600 Amphitheatre Parkway',
      'street_two':  nil,
      'city':        'Mountain View',
      'state':       'CA',
      'postal_code': '94043'
    }

    formatted_address = <<~ADDRESS
      Google
      1600 Amphitheatre Parkway
      Mountain View, CA 94043
    ADDRESS

    expect(AddressFormatter.format(address_data)).to eq(formatted_address)
  end
end