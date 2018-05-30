require ("minitest/autorun")
require_relative("../pub.rb")
require_relative("../food.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")
#is any of these unnecessary?

class PubTest < Minitest::Test

  def setup
    @pub1 = Pub.new("The Bonnington", 100, [])
    @drink1= Drink.new("Red Wine", 2, 13)
    @drink2= Drink.new("Beer", 1, 4)
    @drink3= Drink.new("Whisky", 5, 40)
    @drink4= Drink.new("Gin", 4, 20)
    @pub2 = Pub.new("Standing Order", 200, {@drink1 => 25, @drink2=> 25, @drink3=> 25, @drink4=> 25})
    @customer1=Customer.new("David", 50, 39, 2)
    @customer2=Customer.new("Can", 30, 33, 5)
  end

  def test_name
    assert_equal("The Bonnington", @pub1.name)
  end

  def test_check_drinks
    assert_equal(4, @pub2.drinks.length)
  end

  def test_allows_purchase
    assert_equal(false, @pub1.allows_purchase(12, 20, @customer1.wallet, 1))
    assert_equal(false, @pub1.allows_purchase(19, 120, @customer1.wallet, 1))
    assert_equal(true, @pub1.allows_purchase(19, 30, @customer1.wallet, 1))
    assert_equal(false, @pub1.allows_purchase(19, 30, @customer1.wallet, 500))
  end

  def test_stock_value

    assert_equal(300, @pub2.stock_value)
  end












end
