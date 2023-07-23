class Merchants
  attr_reader :data
  
  def initialize(data)
    @data = data[:data]
  end
end