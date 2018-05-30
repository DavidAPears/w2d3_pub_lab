class Customer

  attr_reader :name, :wallet, :drunkenness


  def initialize (name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end

  def buy_drink(pub, drink)
    if(pub.allows_purchase(@age, @drunkenness, wallet, drink.price))
      @drunkenness += drink.alcohol_level
      @wallet -= drink.price
      pub.till += drink.price

      if(pub.stock.has_key?(drink))
        pub.stock[drink] -= 1
        p pub.stock[drink]
      end

    else
      p "Sorry can't serve you"
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
