$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

require "minitest/autorun"

def customers_fixture
  FileInputParser.new(File.open('test/fixtures/customers.txt'))
                  .parse
end
