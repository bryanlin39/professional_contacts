require('rspec')
require('address')

describe(Address) do
  describe('#street') do
    it('returns the street') do
      new_address = Address.new({:street => '1201 3rd Ave'})
      expect(new_address.street()).to(eq('1201 3rd Ave'))
    end
  end

  describe('#city') do
    it('returns the city') do
      new_address = Address.new({:city => 'Seattle'})
      expect(new_address.city()).to(eq('Seattle'))
    end
  end

  describe('#state') do
    it('returns the state') do
      new_address = Address.new({:state => 'Washington'})
      expect(new_address.state()).to(eq('Washington'))
    end
  end
end
