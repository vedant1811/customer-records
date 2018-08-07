require 'test_helper'
require 'models/location'

class LocationTest < MiniTest::Test
  def setup
    customers = customers_fixture
    @location_1 = customers.first
    @location_2 = customers.last
  end

  def test_should_caculate_distance
    assert_equal 310, @location_1.distance_from(@location_2).round
  end
end
