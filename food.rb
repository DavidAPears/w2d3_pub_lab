class Food

  attr_reader :name, :rej_level, :price

  def initialize (name, price, rej_level)
    @name = name
    @price = price
    @rej_level= rej_level
  end

end
