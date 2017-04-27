require('rspec')
require('phone')

describe(Phone) do
  describe('#number') do
    it('returns the number') do
      new_phone = Phone.new({:number => 123456789})
      expect(new_phone.number()).to(eq(123456789))
    end
  end
end
