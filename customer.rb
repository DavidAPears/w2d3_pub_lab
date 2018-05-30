class Customer

  attr_reader :name, :wallet, :drunkenness
  # attr_accessor :till

  def initialize (name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end

  def buy_drink(drink_purchased)

    @drunkenness += drink_purchased.alcohol_level

  end

end
