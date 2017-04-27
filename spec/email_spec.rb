require('rspec')
require('email')

describe(Email) do
  describe('#address') do
    it('returns the street') do
      new_email = Email.new({:address => 'bob@bob.com'})
      expect(new_email.address()).to(eq('bob@bob.com'))
    end
  end
end
