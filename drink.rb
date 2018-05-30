class Drink

  attr_reader :name
  
  def initialize (name, price, alcohol_level)
    @name = name
    @price = price
    @alcohol_level= alcohol_level
  end

end
