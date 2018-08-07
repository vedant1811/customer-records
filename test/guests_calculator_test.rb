require 'test_helper'
require 'guests_calculator'

class GuestsCalculatorTest < MiniTest::Test
  def setup
    @customers = customers_fixture
    @origin = @customers.first
  end

  def test_should_filter
    customers_calculator = GuestsCalculator.new @origin, 1
    guests = customers_calculator.filter_and_sort @customers

    assert_equal 1, guests.size
  end

  def test_should_sort
    customers_calculator = GuestsCalculator.new @origin, 1000
    guests = customers_calculator.filter_and_sort @customers

    assert_equal 1, guests.first.user_id
    assert_equal 12, guests[1].user_id
  end
end
