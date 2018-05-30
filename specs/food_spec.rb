require ("minitest/autorun")
require_relative("../food.rb")


class FoodTest < Minitest::Test

  def setup
    @food = Food.new("Burger", 4, 10)
  end

  def test_name
    assert_equal("Burger", @food.name)
  end



end
