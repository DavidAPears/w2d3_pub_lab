class Food

  attr_reader :name

  def initialize (name, price, rej_level)
    @name = name
    @price = price
    @rej_level= rej_level
  end

end
