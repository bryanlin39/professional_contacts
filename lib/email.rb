class Email
  attr_accessor(:address)

  def initialize(attributes)
    @address = attributes[:address]
  end
end
