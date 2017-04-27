class Address
  attr_accessor(:street, :city, :state)

  def initialize(attributes)
    @street = attributes[:street]
    @city = attributes[:city]
    @state = attributes[:state]
  end
end
