class Customer

  attr_reader :name, :wallet, :drunkenness
  # attr_accessor :till

  def initialize (name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end

  def buy_drink(pub, drink)

    @drunkenness += drink.alcohol_level
    @wallet -= drink.price
    pub.till += drink.price

  end

end
