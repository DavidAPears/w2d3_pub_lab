require ("minitest/autorun")
require_relative("../pub.rb")
require_relative("../food.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")


class CustomerTest < Minitest::Test

  def setup

    @customer1=Customer.new("David", 50, 39, 2)
    @customer2=Customer.new("Can", 30, 33, 5)
    # @pub1 = Pub.new("The Bonnington", 100, [])
    @drink1= Drink.new("Red Wine", 2, 13)
    @drink2= Drink.new("Beer", 1, 4)
    @drink3= Drink.new("Whisky", 5, 40)
    @drink4= Drink.new("Gin", 4, 20)

    @pub2 = Pub.new("Standing Order", 200, [@drink1, @drink2, @drink3, @drink4])
  end

  def test_name
    assert_equal("David", @customer1.name)
  end

  def test_check_wallet
    assert_equal(50, @customer1.wallet)
  end

  def test_buy_drink
    @customer1.buy_drink(@pub2, @drink1)
    assert_equal(15, @customer1.drunkenness)
    assert_equal(48, @customer1.wallet)
    assert_equal(202, @pub2.till)
  end


end
