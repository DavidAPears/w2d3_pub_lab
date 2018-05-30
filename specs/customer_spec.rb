require ("minitest/autorun")
require_relative("../pub.rb")
require_relative("../food.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")


class CustomerTest < Minitest::Test

  def setup

    @customer1=Customer.new("David", 50, 39, 2)
    @customer2=Customer.new("Can", 30, 33, 5)
    @pub1 = Pub.new("The Bonnington", 100, [])
    @drink1= Drink.new("Red Wine", 2, 13)
    @drink2= Drink.new("Beer", 1, 4)
    @drink3= Drink.new("Whisky", 5, 40)
    @drink4= Drink.new("Gin", 4, 20)
    @food1 = Food.new("Burger", 4, 10)
    @food2 = Food.new("Pie", 2, 20)
    @food3 = Food.new("Pizza", 5, 30)
    @food4 = Food.new("Salad", 6, 3)
    @pub2 = Pub.new("Standing Order", 200, {@drink1 => 25, @drink2=> 25, @drink3=> 25, @drink4=> 25})
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
    assert_equal(24, @pub2.drinks[@drink1])
  end

  def test_buy_food
    @customer1.buy_food(@pub1, @food1)
    assert_equal(0, @customer1.drunkenness)
    assert_equal(46, @customer1.wallet)
    assert_equal(104, @pub1.till)
  end

  def test_buy_food_drink
    @customer1.buy_drink(@pub2, @drink3)
    @customer1.buy_food(@pub2, @food4)
    assert_equal(39, @customer1.drunkenness)
    assert_equal(211, @pub2.till)
  end










end
