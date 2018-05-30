class Customer

  attr_reader :name, :wallet, :drunkenness


  def initialize (name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end

  def buy_drink(pub, drink)
    if(pub.allows_purchase(@age, @drunkenness, wallet, drink.price) && pub.stock.has_key?(drink) && pub.stock[drink]>0)
        @drunkenness += drink.alcohol_level
        @wallet -= drink.price
        pub.till += drink.price
        pub.stock[drink] -= 1
      else
        p "Sorry we are unable to serve you"
      end
  end


  def buy_food(pub, food)

    @drunkenness -= food.rej_level
    if(@drunkenness<0)
      @drunkenness=0
      p "You're now sober"
    end
    @wallet -= food.price
    pub.till += food.price

  end



end
