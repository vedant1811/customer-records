require 'test_helper'
require 'customers_calculator'

class CustomersCalculatorTest < MiniTest::Test
  def setup
    @customers = customers_fixture
    @origin = @customers.first
  end

  def test_should_filter
    customers_calculator = CustomersCalculator.new @origin, 1
    customers = customers_calculator.filter_and_sort @customers

    assert_equal 1, customers.size
  end

  def test_should_sort
    customers_calculator = CustomersCalculator.new @origin, 1000
    customers = customers_calculator.filter_and_sort @customers

    assert_equal 1, customers.first.user_id
    assert_equal 12, customers[1].user_id
  end
end
