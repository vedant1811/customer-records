require 'test_helper'
require 'file_input_parser'

class FileInputParserTest < MiniTest::Test
  def setup
    @file_input_parser = FileInputParser.new File.open('test/fixtures/customers.txt')
  end

  def test_should_parse
    customers = @file_input_parser.parse

    assert_equal 2, customers.count
    assert_equal 12, customers[0].user_id
  end
end
