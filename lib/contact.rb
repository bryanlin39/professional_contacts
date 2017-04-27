class Contact
  @@contacts = []
  attr_accessor(:first_name, :last_name, :job, :company, :id, :addresses, :emails, :phones)

  def initialize(attributes)
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @job = attributes[:job]
    @company = attributes[:company]
    @id = @@contacts.length() + 1
    @addresses = []
    @emails = []
    @phones = []
  end

  def add_address(address)
    @addresses.push(address)
  end

  def add_email(email)
    @emails.push(email)
  end

  def add_phone(phone)
    @phones.push(phone)
  end

  def save
    @@contacts.push(self)
  end

  def self.all
    @@contacts
  end

  def self.find(id)
    found_contact = nil
    @@contacts.each do |contact|
      if contact.id().eql?(id.to_i())
        found_contact = contact
      end
    end
    return found_contact
  end
end
