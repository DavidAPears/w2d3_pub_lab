require ("minitest/autorun")
require_relative("../drink.rb")


class DrinkTest < Minitest::Test

  def setup
    @drink = Drink.new("Red Wine", 2, 13)
  end

  def test_name
    assert_equal("Red Wine", @drink.name)
  end



end
