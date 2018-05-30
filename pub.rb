class Pub

  attr_reader :name, :drinks
  attr_accessor :till, :stock

  def initialize (name, till, drinks = {})
    @name = name
    @till = till
    @drinks = drinks
    # @stock = {
    #   @drinks[0] => 25,
    #   @drinks[1] => 25,
    #   @drinks[2] => 25,
    #   @drinks[3] => 25,
    #         }
  end





    def allows_purchase(age, drunkenness, customers_wallet, drink_price)
      if (age >= 18 && drunkenness < 100 && customers_wallet > drink_price)
        return true
      else
        return false
      end

    end


    def stock_value
      total_value=0
      for booze in @drinks.keys()
        total_value += (booze.price() * @drinks[booze])
      end
      return total_value
    end







end
