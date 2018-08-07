require 'test_helper'
require 'models/customer'

class CustomerTest < MiniTest::Test
  def test_should_parse_customer
    json = '{"latitude": "52.833502", "user_id": 25, "name": "David Behan", "longitude": "-8.522366"}'
    customer = Customer.new json
    assert_same 25, customer.user_id
    assert_same 52.833502, customer.latitude
    assert_same (-8.522366), customer.longitude
    refute_empty customer.name
  end
end
