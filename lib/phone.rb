class Phone
  attr_accessor(:number)

  def initialize(attributes)
    @number = attributes[:number]
  end
end
