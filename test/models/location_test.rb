require 'test_helper'
require 'models/location'

class LocationTest < MiniTest::Test
  def setup
    customers = customers_fixture
    # Customer is a Location
    @location_1 = customers.first
    @location_2 = customers.last
  end

  def test_should_caculate_distance
    # expected value of 310 taken from https://www.nhc.noaa.gov/gccalc.shtml
    assert_equal 310, @location_1.distance_from(@location_2).round
  end
end
