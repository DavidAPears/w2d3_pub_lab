class Pub

  attr_reader :name, :drinks
  attr_accessor :till

  def initialize (name, till, drinks = [])
    @name = name
    @till = till
    @drinks = drinks
  end


  def allows_purchase(age, drunkenness, customers_wallet, drink_price)
    if (age >= 18 && drunkenness < 100 && customers_wallet > drink_price)
      return true
    else
      return false
    end

  end

end
