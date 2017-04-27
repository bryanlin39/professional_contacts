require('contact')
require('address')
require('rspec')

describe(Contact) do
  describe('#first_name') do
    it("returns first name") do
      new_contact = Contact.new({:first_name=> "Ben"})
      expect(new_contact.first_name()).to eq("Ben")
    end
  end
  describe('#last_name') do
    it("returns last name") do
      new_contact = Contact.new({:last_name=> "Metzger"})
      expect(new_contact.last_name()).to eq("Metzger")
    end
  end
  describe('#job') do
    it("returns job") do
      new_contact = Contact.new({:job=> "janitor"})
      expect(new_contact.job()).to eq("janitor")
    end
  end
  describe('.all') do
    it("returns all contacts") do
      new_contact = Contact.new({:last_name=> "Metzger"})
      new_contact.save()
      expect(Contact.all()).to eq([new_contact])
    end
  end
  describe('.find') do
    it("returns found contact") do
      new_contact = Contact.new({:last_name=> "Metzger"})
      new_contact.save()
      expect(Contact.find(2)).to eq(new_contact)
    end
  end
  describe('#add_address') do
    it("pushes address object to instance variable") do
      new_contact = Contact.new({:last_name=> "Metzger"})
      new_contact.save()
      new_address = Address.new({:street => '1201 3rd Ave'})
      new_address.save()
      new_contact.add_address(new_address)
      expect(new_contact.addresses()).to eq([new_address])
    end
  end
end
