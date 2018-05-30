class Pub

  attr_reader :name, :drinks
  attr_accessor :till

  def initialize (name, till, drinks = [])
    @name = name
    @till = till
    @drinks = drinks
  end


  def allows_purchase(age, drunkenness)
    if (age >= 18 && drunkenness < 100)
      return true
    else
      return false
    end

  end

end
